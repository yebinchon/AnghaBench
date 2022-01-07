; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_do_slabs_newslab.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_do_slabs_newslab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i8** }
%struct.TYPE_5__ = type { i32, i32, i64 }

@slabclass = common dso_local global %struct.TYPE_4__* null, align 8
@SLAB_GLOBAL_PAGE_POOL = common dso_local global i64 0, align 8
@settings = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@mem_limit = common dso_local global i64 0, align 8
@mem_malloced = common dso_local global i64 0, align 8
@mem_limit_reached = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_slabs_newslab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_slabs_newslab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @slabclass, align 8
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %10
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @slabclass, align 8
  %13 = load i64, i64* @SLAB_GLOBAL_PAGE_POOL, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @settings, i32 0, i32 2), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @settings, i32 0, i32 0), align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @settings, i32 0, i32 1), align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %1
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @settings, i32 0, i32 1), align 4
  br label %31

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  br label %31

31:                                               ; preds = %23, %21
  %32 = phi i32 [ %22, %21 ], [ %30, %23 ]
  store i32 %32, i32* %6, align 4
  %33 = load i64, i64* @mem_limit, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i64, i64* @mem_malloced, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load i64, i64* @mem_limit, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  store i32 1, i32* @mem_limit_reached, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @MEMCACHED_SLABS_SLABCLASS_ALLOCATE_FAILED(i32 %53)
  store i32 0, i32* %2, align 4
  br label %89

55:                                               ; preds = %47, %42, %35, %31
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @grow_slab_list(i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = call i8* (...) @get_page_from_global_pool()
  store i8* %60, i8** %7, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = call i8* @memory_allocate(i64 %64)
  store i8* %65, i8** %7, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %55
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @MEMCACHED_SLABS_SLABCLASS_ALLOCATE_FAILED(i32 %68)
  store i32 0, i32* %2, align 4
  br label %89

70:                                               ; preds = %62, %59
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 @memset(i8* %71, i32 0, i64 %73)
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @split_slab_page_into_freelist(i8* %75, i32 %76)
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i8**, i8*** %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = getelementptr inbounds i8*, i8** %81, i64 %84
  store i8* %78, i8** %86, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @MEMCACHED_SLABS_SLABCLASS_ALLOCATE(i32 %87)
  store i32 1, i32* %2, align 4
  br label %89

89:                                               ; preds = %70, %67, %52
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @MEMCACHED_SLABS_SLABCLASS_ALLOCATE_FAILED(i32) #1

declare dso_local i64 @grow_slab_list(i32) #1

declare dso_local i8* @get_page_from_global_pool(...) #1

declare dso_local i8* @memory_allocate(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @split_slab_page_into_freelist(i8*, i32) #1

declare dso_local i32 @MEMCACHED_SLABS_SLABCLASS_ALLOCATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
