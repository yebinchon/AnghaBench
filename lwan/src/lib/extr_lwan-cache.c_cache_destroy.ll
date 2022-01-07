; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-cache.c_cache_destroy.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-cache.c_cache_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Cache stats: %d hits, %d misses, %d evictions\00", align 1
@SHUTTING_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_destroy(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  %3 = load %struct.cache*, %struct.cache** %2, align 8
  %4 = call i32 @assert(%struct.cache* %3)
  %5 = load %struct.cache*, %struct.cache** %2, align 8
  %6 = getelementptr inbounds %struct.cache, %struct.cache* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cache*, %struct.cache** %2, align 8
  %10 = getelementptr inbounds %struct.cache, %struct.cache* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cache*, %struct.cache** %2, align 8
  %14 = getelementptr inbounds %struct.cache, %struct.cache* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @lwan_status_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12, i32 %16)
  %18 = load %struct.cache*, %struct.cache** %2, align 8
  %19 = call i32 @lwan_job_del(i32 (%struct.cache*)* @cache_pruner_job, %struct.cache* %18)
  %20 = load i32, i32* @SHUTTING_DOWN, align 4
  %21 = load %struct.cache*, %struct.cache** %2, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.cache*, %struct.cache** %2, align 8
  %26 = call i32 @cache_pruner_job(%struct.cache* %25)
  %27 = load %struct.cache*, %struct.cache** %2, align 8
  %28 = getelementptr inbounds %struct.cache, %struct.cache* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = call i32 @pthread_rwlock_destroy(i32* %29)
  %31 = load %struct.cache*, %struct.cache** %2, align 8
  %32 = getelementptr inbounds %struct.cache, %struct.cache* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @pthread_rwlock_destroy(i32* %33)
  %35 = load %struct.cache*, %struct.cache** %2, align 8
  %36 = getelementptr inbounds %struct.cache, %struct.cache* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @hash_free(i32 %38)
  %40 = load %struct.cache*, %struct.cache** %2, align 8
  %41 = call i32 @free(%struct.cache* %40)
  ret void
}

declare dso_local i32 @assert(%struct.cache*) #1

declare dso_local i32 @lwan_status_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @lwan_job_del(i32 (%struct.cache*)*, %struct.cache*) #1

declare dso_local i32 @cache_pruner_job(%struct.cache*) #1

declare dso_local i32 @pthread_rwlock_destroy(i32*) #1

declare dso_local i32 @hash_free(i32) #1

declare dso_local i32 @free(%struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
