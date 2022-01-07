; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginbulkdelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginbulkdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_11__ = type { i64 }

@GIN_ROOT_BLKNO = common dso_local global i64 0, align 8
@BLCKSZ = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Gin vacuum temporary context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@GIN_SHARE = common dso_local global i32 0, align 4
@GIN_UNLOCK = common dso_local global i32 0, align 4
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidBlockNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @ginbulkdelete(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i64, i64* @GIN_ROOT_BLKNO, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* @BLCKSZ, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 8
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca i64, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %30 = load i32, i32* @CurrentMemoryContext, align 4
  %31 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %32 = call i32 @AllocSetContextCreate(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 6
  store i32 %36, i32* %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 5
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @initGinState(i32* %44, i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = icmp eq %struct.TYPE_13__* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %4
  %50 = call i64 @palloc0(i32 8)
  %51 = inttoptr i64 %50 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %53 = call i32 (...) @IsAutoVacuumWorkerProcess()
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = call i32 @ginInsertCleanup(i32* %52, i32 %56, i32 0, i32 1, %struct.TYPE_13__* %57)
  br label %59

59:                                               ; preds = %49, %4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MAIN_FORKNUM, align 4
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* @RBM_NORMAL, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ReadBufferExtended(i32 %64, i32 %65, i64 %66, i32 %67, i32 %70)
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %106, %101, %59
  %73 = load i32, i32* %12, align 4
  %74 = call i64 @BufferGetPage(i32 %73)
  store i64 %74, i64* %16, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @GIN_SHARE, align 4
  %77 = call i32 @LockBuffer(i32 %75, i32 %76)
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @GinPageIsData(i64 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @Assert(i32 %82)
  %84 = load i64, i64* %16, align 8
  %85 = call i64 @GinPageIsLeaf(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %72
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @GIN_UNLOCK, align 4
  %90 = call i32 @LockBuffer(i32 %88, i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %93 = call i32 @LockBuffer(i32 %91, i32 %92)
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @GIN_ROOT_BLKNO, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %87
  %98 = load i64, i64* %16, align 8
  %99 = call i64 @GinPageIsLeaf(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @GIN_UNLOCK, align 4
  %104 = call i32 @LockBuffer(i32 %102, i32 %103)
  br label %72

105:                                              ; preds = %97, %87
  br label %135

106:                                              ; preds = %72
  %107 = load i64, i64* %16, align 8
  %108 = call i64 @PageGetMaxOffsetNumber(i64 %107)
  %109 = load i64, i64* @FirstOffsetNumber, align 8
  %110 = icmp sge i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @Assert(i32 %111)
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* @FirstOffsetNumber, align 8
  %116 = call i32 @PageGetItemId(i64 %114, i64 %115)
  %117 = call i64 @PageGetItem(i64 %113, i32 %116)
  store i64 %117, i64* %17, align 8
  %118 = load i64, i64* %17, align 8
  %119 = call i64 @GinGetDownlink(i64 %118)
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* @InvalidBlockNumber, align 8
  %122 = icmp ne i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @Assert(i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @UnlockReleaseBuffer(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @MAIN_FORKNUM, align 4
  %129 = load i64, i64* %10, align 8
  %130 = load i32, i32* @RBM_NORMAL, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ReadBufferExtended(i32 %127, i32 %128, i64 %129, i32 %130, i32 %133)
  store i32 %134, i32* %12, align 4
  br label %72

135:                                              ; preds = %105
  br label %136

136:                                              ; preds = %190, %135
  %137 = load i32, i32* %12, align 4
  %138 = call i64 @BufferGetPage(i32 %137)
  store i64 %138, i64* %18, align 8
  %139 = load i64, i64* %18, align 8
  %140 = call i32 @GinPageIsData(i64 %139)
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @Assert(i32 %143)
  %145 = load i32, i32* %12, align 4
  %146 = call i64 @ginVacuumEntryPage(%struct.TYPE_14__* %11, i32 %145, i64* %29, i64* %15)
  store i64 %146, i64* %19, align 8
  %147 = load i64, i64* %18, align 8
  %148 = call %struct.TYPE_11__* @GinPageGetOpaque(i64 %147)
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %10, align 8
  %151 = load i64, i64* %19, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %136
  %154 = call i32 (...) @START_CRIT_SECTION()
  %155 = load i64, i64* %19, align 8
  %156 = load i64, i64* %18, align 8
  %157 = call i32 @PageRestoreTempPage(i64 %155, i64 %156)
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @MarkBufferDirty(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @xlogVacuumPage(i32 %161, i32 %162)
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @UnlockReleaseBuffer(i32 %164)
  %166 = call i32 (...) @END_CRIT_SECTION()
  br label %170

167:                                              ; preds = %136
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @UnlockReleaseBuffer(i32 %168)
  br label %170

170:                                              ; preds = %167, %153
  %171 = call i32 (...) @vacuum_delay_point()
  store i64 0, i64* %20, align 8
  br label %172

172:                                              ; preds = %182, %170
  %173 = load i64, i64* %20, align 8
  %174 = load i64, i64* %15, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i64, i64* %20, align 8
  %178 = getelementptr inbounds i64, i64* %29, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @ginVacuumPostingTree(%struct.TYPE_14__* %11, i64 %179)
  %181 = call i32 (...) @vacuum_delay_point()
  br label %182

182:                                              ; preds = %176
  %183 = load i64, i64* %20, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %20, align 8
  br label %172

185:                                              ; preds = %172
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* @InvalidBlockNumber, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %202

190:                                              ; preds = %185
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @MAIN_FORKNUM, align 4
  %193 = load i64, i64* %10, align 8
  %194 = load i32, i32* @RBM_NORMAL, align 4
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ReadBufferExtended(i32 %191, i32 %192, i64 %193, i32 %194, i32 %197)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %201 = call i32 @LockBuffer(i32 %199, i32 %200)
  br label %136

202:                                              ; preds = %189
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @MemoryContextDelete(i32 %204)
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %208)
  ret %struct.TYPE_13__* %207
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #2

declare dso_local i32 @initGinState(i32*, i32) #2

declare dso_local i64 @palloc0(i32) #2

declare dso_local i32 @ginInsertCleanup(i32*, i32, i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @IsAutoVacuumWorkerProcess(...) #2

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #2

declare dso_local i64 @BufferGetPage(i32) #2

declare dso_local i32 @LockBuffer(i32, i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @GinPageIsData(i64) #2

declare dso_local i64 @GinPageIsLeaf(i64) #2

declare dso_local i64 @PageGetMaxOffsetNumber(i64) #2

declare dso_local i64 @PageGetItem(i64, i32) #2

declare dso_local i32 @PageGetItemId(i64, i64) #2

declare dso_local i64 @GinGetDownlink(i64) #2

declare dso_local i32 @UnlockReleaseBuffer(i32) #2

declare dso_local i64 @ginVacuumEntryPage(%struct.TYPE_14__*, i32, i64*, i64*) #2

declare dso_local %struct.TYPE_11__* @GinPageGetOpaque(i64) #2

declare dso_local i32 @START_CRIT_SECTION(...) #2

declare dso_local i32 @PageRestoreTempPage(i64, i64) #2

declare dso_local i32 @MarkBufferDirty(i32) #2

declare dso_local i32 @xlogVacuumPage(i32, i32) #2

declare dso_local i32 @END_CRIT_SECTION(...) #2

declare dso_local i32 @vacuum_delay_point(...) #2

declare dso_local i32 @ginVacuumPostingTree(%struct.TYPE_14__*, i64) #2

declare dso_local i32 @MemoryContextDelete(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
