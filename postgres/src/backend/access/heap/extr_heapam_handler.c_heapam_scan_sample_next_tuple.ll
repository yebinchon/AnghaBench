; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_scan_sample_next_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_scan_sample_next_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*, i32, i32)* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32, i64 }

@SO_ALLOW_PAGEMODE = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i32*)* @heapam_scan_sample_next_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heapam_scan_sample_next_tuple(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = bitcast %struct.TYPE_16__* %19 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %8, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %9, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SO_ALLOW_PAGEMODE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %3
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %41 = call i32 @LockBuffer(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %3
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @BufferGetPage(i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @PageIsAllVisible(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %50, %42
  %59 = phi i1 [ false, %42 ], [ %57, %50 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %13, align 4
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @PageGetMaxOffsetNumber(i64 %61)
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %130, %84, %58
  %64 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_17__*, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32)** %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 %67(%struct.TYPE_17__* %68, i32 %69, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i64 @OffsetNumberIsValid(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %151

75:                                               ; preds = %63
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %18, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @PageGetItemId(i64 %78, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @ItemIdIsNormal(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %63

85:                                               ; preds = %75
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i64 @PageGetItem(i64 %86, i32 %87)
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @ItemIdGetLength(i32 %91)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @ItemPointerSet(i32* %96, i32 %97, i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %85
  store i32 1, i32* %17, align 4
  br label %111

103:                                              ; preds = %85
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @SampleHeapTupleVisible(%struct.TYPE_16__* %104, i32 %107, %struct.TYPE_18__* %108, i32 %109)
  store i32 %110, i32* %17, align 4
  br label %111

111:                                              ; preds = %103, %102
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = call i32 @CheckForSerializableConflictOut(i32 %115, i32 %118, %struct.TYPE_18__* %119, i32 %122, %struct.TYPE_14__* %125)
  br label %127

127:                                              ; preds = %114, %111
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  br label %63

131:                                              ; preds = %127
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %139 = call i32 @LockBuffer(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %131
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ExecStoreBufferHeapTuple(%struct.TYPE_18__* %141, i32* %142, i32 %145)
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @pgstat_count_heap_getnext(i32 %149)
  store i32 1, i32* %4, align 4
  br label %163

151:                                              ; preds = %63
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %159 = call i32 @LockBuffer(i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %154, %151
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @ExecClearTuple(i32* %161)
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %160, %140
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsAllVisible(i64) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @OffsetNumberIsValid(i32) #1

declare dso_local i32 @PageGetItemId(i64, i32) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @PageGetItem(i64, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i32) #1

declare dso_local i32 @SampleHeapTupleVisible(%struct.TYPE_16__*, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @CheckForSerializableConflictOut(i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ExecStoreBufferHeapTuple(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @pgstat_count_heap_getnext(i32) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
