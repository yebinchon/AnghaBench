; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginvacuumcleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginvacuumcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i8*, i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }

@ExclusiveLock = common dso_local global i32 0, align 4
@GIN_ROOT_BLKNO = common dso_local global i64 0, align 8
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@GIN_SHARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @ginvacuumcleanup(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = call i64 (...) @IsAutoVacuumWorkerProcess()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @initGinState(i32* %11, i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = call i32 @ginInsertCleanup(i32* %11, i32 0, i32 1, i32 1, %struct.TYPE_11__* %28)
  br label %30

30:                                               ; preds = %25, %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %3, align 8
  br label %183

32:                                               ; preds = %2
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = icmp eq %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = call i64 @palloc0(i32 24)
  %37 = inttoptr i64 %36 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @initGinState(i32* %11, i32 %38)
  %40 = call i64 (...) @IsAutoVacuumWorkerProcess()
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = call i32 @ginInsertCleanup(i32* %11, i32 %43, i32 0, i32 1, %struct.TYPE_11__* %44)
  br label %46

46:                                               ; preds = %35, %32
  %47 = call i32 @memset(%struct.TYPE_12__* %12, i32 0, i32 24)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @RELATION_IS_LOCAL(i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %46
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ExclusiveLock, align 4
  %68 = call i32 @LockRelationForExtension(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %46
  %70 = load i32, i32* %6, align 4
  %71 = call i8* @RelationGetNumberOfBlocks(i32 %70)
  %72 = ptrtoint i8* %71 to i64
  store i64 %72, i64* %8, align 8
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @ExclusiveLock, align 4
  %78 = call i32 @UnlockRelationForExtension(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %69
  store i64 0, i64* %10, align 8
  %80 = load i64, i64* @GIN_ROOT_BLKNO, align 8
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %147, %79
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %150

85:                                               ; preds = %81
  %86 = call i32 (...) @vacuum_delay_point()
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MAIN_FORKNUM, align 4
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* @RBM_NORMAL, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ReadBufferExtended(i32 %87, i32 %88, i64 %89, i32 %90, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @GIN_SHARE, align 4
  %97 = call i32 @LockBuffer(i32 %95, i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @BufferGetPage(i32 %98)
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i64 @GinPageIsRecyclable(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %85
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* @GIN_ROOT_BLKNO, align 8
  %106 = icmp ne i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @Assert(i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = load i64, i64* %9, align 8
  %111 = call i32 @RecordFreeIndexPage(i32 %109, i64 %110)
  %112 = load i64, i64* %10, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %10, align 8
  br label %144

114:                                              ; preds = %85
  %115 = load i64, i64* %14, align 8
  %116 = call i64 @GinPageIsData(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %143

122:                                              ; preds = %114
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @GinPageIsList(i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %142, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load i64, i64* %14, align 8
  %131 = call i64 @GinPageIsLeaf(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load i64, i64* %14, align 8
  %135 = call i64 @PageGetMaxOffsetNumber(i64 %134)
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %135
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 8
  br label %141

141:                                              ; preds = %133, %126
  br label %142

142:                                              ; preds = %141, %122
  br label %143

143:                                              ; preds = %142, %118
  br label %144

144:                                              ; preds = %143, %103
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @UnlockReleaseBuffer(i32 %145)
  br label %147

147:                                              ; preds = %144
  %148 = load i64, i64* %9, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %9, align 8
  br label %81

150:                                              ; preds = %81
  %151 = load i64, i64* %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ginUpdateStats(i32 %155, %struct.TYPE_12__* %12, i32 0)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @IndexFreeSpaceMapVacuum(i32 %159)
  %161 = load i64, i64* %10, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %150
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @ExclusiveLock, align 4
  %169 = call i32 @LockRelationForExtension(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %150
  %171 = load i32, i32* %6, align 4
  %172 = call i8* @RelationGetNumberOfBlocks(i32 %171)
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %170
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @ExclusiveLock, align 4
  %180 = call i32 @UnlockRelationForExtension(i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %170
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %182, %struct.TYPE_11__** %3, align 8
  br label %183

183:                                              ; preds = %181, %30
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %184
}

declare dso_local i64 @IsAutoVacuumWorkerProcess(...) #1

declare dso_local i32 @initGinState(i32*, i32) #1

declare dso_local i32 @ginInsertCleanup(i32*, i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @RELATION_IS_LOCAL(i32) #1

declare dso_local i32 @LockRelationForExtension(i32, i32) #1

declare dso_local i8* @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #1

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @GinPageIsRecyclable(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RecordFreeIndexPage(i32, i64) #1

declare dso_local i64 @GinPageIsData(i64) #1

declare dso_local i32 @GinPageIsList(i64) #1

declare dso_local i64 @GinPageIsLeaf(i64) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @ginUpdateStats(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @IndexFreeSpaceMapVacuum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
