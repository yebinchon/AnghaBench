; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_get_best_segment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_get_best_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64* }

@DSA_NUM_SEGMENT_BINS = common dso_local global i64 0, align 8
@DSA_SEGMENT_INDEX_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, i64)* @get_best_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @get_best_segment(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = call i32 @DSA_AREA_LOCK(%struct.TYPE_16__* %14)
  %16 = call i32 @LWLockHeldByMe(i32 %15)
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = call i32 @check_for_freed_segments_locked(%struct.TYPE_16__* %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @contiguous_pages_to_segment_bin(i64 %20)
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %143, %2
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @DSA_NUM_SEGMENT_BINS, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %146

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %27, 1
  %29 = shl i64 1, %28
  store i64 %29, i64* %7, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %140, %62, %26
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @DSA_SEGMENT_INDEX_NONE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %142

42:                                               ; preds = %38
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call %struct.TYPE_15__* @get_segment_by_index(%struct.TYPE_16__* %43, i64 %44)
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %9, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @fpm_largest(i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %42
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %8, align 8
  br label %38

64:                                               ; preds = %58, %42
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %134

68:                                               ; preds = %64
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @contiguous_pages_to_segment_bin(i64 %69)
  store i64 %70, i64* %12, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = call i32 @unlink_segment(%struct.TYPE_16__* %71, %struct.TYPE_15__* %72)
  %74 = load i64, i64* @DSA_SEGMENT_INDEX_NONE, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  store i64 %74, i64* %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i64 %86, i64* %90, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  store i64 %91, i64* %95, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 %96, i64* %103, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DSA_SEGMENT_INDEX_NONE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %68
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call %struct.TYPE_15__* @get_segment_by_index(%struct.TYPE_16__* %112, i64 %117)
  store %struct.TYPE_15__* %118, %struct.TYPE_15__** %13, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %12, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @Assert(i32 %126)
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  store i64 %128, i64* %132, align 8
  br label %133

133:                                              ; preds = %111, %68
  br label %134

134:                                              ; preds = %133, %64
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %5, align 8
  %137 = icmp uge i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %3, align 8
  br label %147

140:                                              ; preds = %134
  %141 = load i64, i64* %10, align 8
  store i64 %141, i64* %8, align 8
  br label %38

142:                                              ; preds = %38
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %6, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %6, align 8
  br label %22

146:                                              ; preds = %22
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %147

147:                                              ; preds = %146, %138
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %148
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32 @DSA_AREA_LOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @check_for_freed_segments_locked(%struct.TYPE_16__*) #1

declare dso_local i64 @contiguous_pages_to_segment_bin(i64) #1

declare dso_local %struct.TYPE_15__* @get_segment_by_index(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @fpm_largest(i32) #1

declare dso_local i32 @unlink_segment(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
