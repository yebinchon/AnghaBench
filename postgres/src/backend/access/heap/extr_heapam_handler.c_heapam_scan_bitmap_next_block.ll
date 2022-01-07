; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_scan_bitmap_next_block.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_scan_bitmap_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i64* }
%struct.TYPE_19__ = type { i32, i64, i64*, i32, i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i64 }

@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@MaxHeapTuplesPerPage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @heapam_scan_bitmap_next_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heapam_scan_bitmap_next_block(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = bitcast %struct.TYPE_16__* %21 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %6, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %190

36:                                               ; preds = %2
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @ReleaseAndReadBuffer(i32 %39, %struct.TYPE_20__* %42, i64 %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @heap_page_prune_opt(%struct.TYPE_20__* %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %63 = call i32 @LockBuffer(i32 %61, i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %108

68:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %104, %68
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %69
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @ItemPointerSet(i32* %13, i64 %84, i64 %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @heap_hot_search_buffer(i32* %13, %struct.TYPE_20__* %89, i32 %90, i32 %91, %struct.TYPE_18__* %14, i32* null, i32 1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %76
  %95 = call i64 @ItemPointerGetOffsetNumber(i32* %13)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  store i64 %95, i64* %102, align 8
  br label %103

103:                                              ; preds = %94, %76
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %69

107:                                              ; preds = %69
  br label %175

108:                                              ; preds = %36
  %109 = load i32, i32* %8, align 4
  %110 = call i64 @BufferGetPage(i32 %109)
  store i64 %110, i64* %15, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i64 @PageGetMaxOffsetNumber(i64 %111)
  store i64 %112, i64* %16, align 8
  %113 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %113, i64* %17, align 8
  br label %114

114:                                              ; preds = %171, %108
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* %16, align 8
  %117 = icmp sle i64 %115, %116
  br i1 %117, label %118, label %174

118:                                              ; preds = %114
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* %17, align 8
  %121 = call i32 @PageGetItemId(i64 %119, i64 %120)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @ItemIdIsNormal(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  br label %171

126:                                              ; preds = %118
  %127 = load i64, i64* %15, align 8
  %128 = load i32, i32* %18, align 4
  %129 = call i64 @PageGetItem(i64 %127, i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  store i64 %129, i64* %130, align 8
  %131 = load i32, i32* %18, align 4
  %132 = call i32 @ItemIdGetLength(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  store i32 %132, i32* %133, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %17, align 8
  %143 = call i32 @ItemPointerSet(i32* %140, i64 %141, i64 %142)
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_18__* %19, i32 %144, i32 %145)
  store i32 %146, i32* %20, align 4
  %147 = load i32, i32* %20, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %126
  %150 = load i64, i64* %17, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 2
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i64, i64* %153, i64 %156
  store i64 %150, i64* %157, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @PredicateLockTuple(%struct.TYPE_20__* %160, %struct.TYPE_18__* %19, i32 %161)
  br label %163

163:                                              ; preds = %149, %126
  %164 = load i32, i32* %20, align 4
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @CheckForSerializableConflictOut(i32 %164, %struct.TYPE_20__* %167, %struct.TYPE_18__* %19, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %163, %125
  %172 = load i64, i64* %17, align 8
  %173 = call i64 @OffsetNumberNext(i64 %172)
  store i64 %173, i64* %17, align 8
  br label %114

174:                                              ; preds = %114
  br label %175

175:                                              ; preds = %174, %107
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %178 = call i32 @LockBuffer(i32 %176, i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @MaxHeapTuplesPerPage, align 4
  %181 = icmp sle i32 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @Assert(i32 %182)
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %10, align 4
  %188 = icmp sgt i32 %187, 0
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %175, %35
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @ReleaseAndReadBuffer(i32, %struct.TYPE_20__*, i64) #1

declare dso_local i32 @heap_page_prune_opt(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i64, i64) #1

declare dso_local i64 @heap_hot_search_buffer(i32*, %struct.TYPE_20__*, i32, i32, %struct.TYPE_18__*, i32*, i32) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32 @PageGetItemId(i64, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @PageGetItem(i64, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @PredicateLockTuple(%struct.TYPE_20__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @CheckForSerializableConflictOut(i32, %struct.TYPE_20__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
