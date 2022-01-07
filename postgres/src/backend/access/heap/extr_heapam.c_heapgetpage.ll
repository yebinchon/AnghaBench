; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heapgetpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heapgetpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32*, i32, %struct.TYPE_10__, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@SO_ALLOW_PAGEMODE = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@MaxHeapTuplesPerPage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heapgetpage(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @BufferIsValid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ReleaseBuffer(i32 %34)
  %36 = load i32, i32* @InvalidBuffer, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %31, %2
  %40 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAIN_FORKNUM, align 4
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* @RBM_NORMAL, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ReadBufferExtended(i32 %44, i32 %45, i64 %46, i32 %47, i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SO_ALLOW_PAGEMODE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %39
  br label %181

65:                                               ; preds = %39
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %6, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %7, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @heap_page_prune_opt(i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %81 = call i32 @LockBuffer(i32 %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @BufferGetPage(i32 %82)
  store i64 %83, i64* %8, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @TestForOldSnapshot(%struct.TYPE_11__* %84, i32 %88, i64 %89)
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @PageGetMaxOffsetNumber(i64 %91)
  store i32 %92, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %93 = load i64, i64* %8, align 8
  %94 = call i64 @PageIsAllVisible(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %65
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %96, %65
  %103 = phi i1 [ false, %65 ], [ %101, %96 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %105, i32* %11, align 4
  %106 = load i64, i64* %8, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @PageGetItemId(i64 %106, i32 %107)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %164, %102
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %169

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  %115 = call i64 @ItemIdIsNormal(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %163

117:                                              ; preds = %113
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @RelationGetRelid(i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  store i32 %122, i32* %123, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i64 @PageGetItem(i64 %124, i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  store i64 %126, i64* %127, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @ItemIdGetLength(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %132 = load i64, i64* %4, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @ItemPointerSet(i32* %131, i64 %132, i32 %133)
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %117
  store i32 1, i32* %15, align 4
  br label %142

138:                                              ; preds = %117
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_12__* %14, %struct.TYPE_11__* %139, i32 %140)
  store i32 %141, i32* %15, align 4
  br label %142

142:                                              ; preds = %138, %137
  %143 = load i32, i32* %15, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %150 = call i32 @CheckForSerializableConflictOut(i32 %143, i32 %147, %struct.TYPE_12__* %14, i32 %148, %struct.TYPE_11__* %149)
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %142
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %154, i32* %161, align 4
  br label %162

162:                                              ; preds = %153, %142
  br label %163

163:                                              ; preds = %162, %113
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %109

169:                                              ; preds = %109
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %172 = call i32 @LockBuffer(i32 %170, i32 %171)
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @MaxHeapTuplesPerPage, align 4
  %175 = icmp sle i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @Assert(i32 %176)
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %169, %64
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @heap_page_prune_opt(i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @TestForOldSnapshot(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i64 @PageIsAllVisible(i64) #1

declare dso_local i32 @PageGetItemId(i64, i32) #1

declare dso_local i64 @ItemIdIsNormal(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i64 @PageGetItem(i64, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i64, i32) #1

declare dso_local i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @CheckForSerializableConflictOut(i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
