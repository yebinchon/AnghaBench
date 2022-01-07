; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_destroy_superblock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_destroy_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32* }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_21__*, i32*, i32 }
%struct.TYPE_21__ = type { i64, i32, i64 }

@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@FPM_PAGE_SIZE = common dso_local global i32 0, align 4
@DSM_HANDLE_INVALID = common dso_local global i32 0, align 4
@DSA_SCLASS_BLOCK_OF_SPANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i32)* @destroy_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_superblock(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_23__* @dsa_get_address(%struct.TYPE_24__* %9, i32 %10)
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %5, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = call i32 @unlink_span(%struct.TYPE_24__* %15, %struct.TYPE_23__* %16)
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %19 = call i32 @DSA_AREA_LOCK(%struct.TYPE_24__* %18)
  %20 = load i32, i32* @LW_EXCLUSIVE, align 4
  %21 = call i32 @LWLockAcquire(i32 %19, i32 %20)
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = call i32 @check_for_freed_segments_locked(%struct.TYPE_24__* %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DSA_EXTRACT_SEGMENT_NUMBER(i32 %27)
  %29 = call %struct.TYPE_22__* @get_segment_by_index(%struct.TYPE_24__* %24, i32 %28)
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %7, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DSA_EXTRACT_OFFSET(i32 %35)
  %37 = load i32, i32* @FPM_PAGE_SIZE, align 4
  %38 = sdiv i32 %36, %37
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FreePageManagerPut(i32 %32, i32 %38, i32 %41)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @fpm_largest(i32 %45)
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %46, %51
  br i1 %52, label %53, label %121

53:                                               ; preds = %2
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %56 = call i64 @get_segment_index(%struct.TYPE_24__* %54, %struct.TYPE_22__* %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %120

59:                                               ; preds = %53
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = call i32 @unlink_segment(%struct.TYPE_24__* %60, %struct.TYPE_22__* %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %71, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @Assert(i32 %78)
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, %84
  store i64 %90, i64* %88, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @dsm_segment_handle(i32* %93)
  %95 = call i32 @dsm_unpin_segment(i32 %94)
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @dsm_detach(i32* %98)
  %100 = load i32, i32* @DSM_HANDLE_INVALID, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %100, i32* %107, align 4
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 2
  store i32* null, i32** %115, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %117, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %59, %53
  br label %121

121:                                              ; preds = %120, %2
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %123 = call i32 @DSA_AREA_LOCK(%struct.TYPE_24__* %122)
  %124 = call i32 @LWLockRelease(i32 %123)
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @DSA_SCLASS_BLOCK_OF_SPANS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @dsa_free(%struct.TYPE_24__* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %121
  ret void
}

declare dso_local %struct.TYPE_23__* @dsa_get_address(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @unlink_span(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @DSA_AREA_LOCK(%struct.TYPE_24__*) #1

declare dso_local i32 @check_for_freed_segments_locked(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @get_segment_by_index(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @DSA_EXTRACT_SEGMENT_NUMBER(i32) #1

declare dso_local i32 @FreePageManagerPut(i32, i32, i32) #1

declare dso_local i32 @DSA_EXTRACT_OFFSET(i32) #1

declare dso_local i64 @fpm_largest(i32) #1

declare dso_local i64 @get_segment_index(%struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i32 @unlink_segment(%struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @dsm_unpin_segment(i32) #1

declare dso_local i32 @dsm_segment_handle(i32*) #1

declare dso_local i32 @dsm_detach(i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @dsa_free(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
