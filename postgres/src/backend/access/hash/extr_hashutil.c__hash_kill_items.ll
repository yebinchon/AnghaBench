; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashutil.c__hash_kill_items.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashutil.c__hash_kill_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32*, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@HASH_READ = common dso_local global i32 0, align 4
@LH_OVERFLOW_PAGE = common dso_local global i32 0, align 4
@LH_PAGE_HAS_DEAD_TUPLES = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_hash_kill_items(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %3, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @Assert(i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @Assert(i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = call i32 @HashScanPosIsValid(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %43)
  %45 = call i32 @Assert(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %5, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = call i64 @HashScanPosIsPinned(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %1
  store i32 1, i32* %14, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %63 = call i32 @LockBuffer(i64 %61, i32 %62)
  br label %70

64:                                               ; preds = %1
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @HASH_READ, align 4
  %68 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %69 = call i64 @_hash_getbuf(i32 %65, i32 %66, i32 %67, i32 %68)
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %64, %56
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @BufferGetPage(i64 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @PageGetSpecialPointer(i32 %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %8, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @PageGetMaxOffsetNumber(i32 %76)
  store i32 %77, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %143, %70
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %146

82:                                               ; preds = %78
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %15, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %16, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp sge i32 %100, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %82
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp sle i32 %107, %111
  br label %113

113:                                              ; preds = %106, %82
  %114 = phi i1 [ false, %82 ], [ %112, %106 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @Assert(i32 %115)
  br label %117

117:                                              ; preds = %139, %113
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @PageGetItemId(i32 %122, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @PageGetItem(i32 %125, i32 %126)
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %18, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = call i64 @ItemPointerEquals(i32* %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %121
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @ItemIdMarkDead(i32 %137)
  store i32 1, i32* %13, align 4
  br label %142

139:                                              ; preds = %121
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @OffsetNumberNext(i32 %140)
  store i32 %141, i32* %9, align 4
  br label %117

142:                                              ; preds = %136, %117
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %78

146:                                              ; preds = %78
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load i32, i32* @LH_PAGE_HAS_DEAD_TUPLES, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i64, i64* %6, align 8
  %156 = call i32 @MarkBufferDirtyHint(i64 %155, i32 1)
  br label %157

157:                                              ; preds = %149, %146
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %160, %164
  br i1 %165, label %169, label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166, %157
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %175 = call i32 @LockBuffer(i64 %173, i32 %174)
  br label %180

176:                                              ; preds = %166
  %177 = load i32, i32* %4, align 4
  %178 = load i64, i64* %6, align 8
  %179 = call i32 @_hash_relbuf(i32 %177, i64 %178)
  br label %180

180:                                              ; preds = %176, %169
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @HashScanPosIsValid(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i64 @HashScanPosIsPinned(%struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i64 @_hash_getbuf(i32, i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @PageGetItem(i32, i32) #1

declare dso_local i64 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i32 @ItemIdMarkDead(i32) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i32 @MarkBufferDirtyHint(i64, i32) #1

declare dso_local i32 @_hash_relbuf(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
