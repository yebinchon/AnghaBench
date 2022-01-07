; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-cache.c_cache_create.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-cache.c_cache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i8* }

@cache_pruner_job = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache* @cache_create(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cache*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %9, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call %struct.cache* @calloc(i32 1, i32 40)
  store %struct.cache* %19, %struct.cache** %10, align 8
  %20 = load %struct.cache*, %struct.cache** %10, align 8
  %21 = icmp ne %struct.cache* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store %struct.cache* null, %struct.cache** %5, align 8
  br label %87

23:                                               ; preds = %4
  %24 = call i32 @hash_str_new(i32 (%struct.cache*)* @free, i32* null)
  %25 = load %struct.cache*, %struct.cache** %10, align 8
  %26 = getelementptr inbounds %struct.cache, %struct.cache* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.cache*, %struct.cache** %10, align 8
  %29 = getelementptr inbounds %struct.cache, %struct.cache* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %84

34:                                               ; preds = %23
  %35 = load %struct.cache*, %struct.cache** %10, align 8
  %36 = getelementptr inbounds %struct.cache, %struct.cache* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = call i64 @pthread_rwlock_init(i32* %37, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %78

41:                                               ; preds = %34
  %42 = load %struct.cache*, %struct.cache** %10, align 8
  %43 = getelementptr inbounds %struct.cache, %struct.cache* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = call i64 @pthread_rwlock_init(i32* %44, i32* null)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %73

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.cache*, %struct.cache** %10, align 8
  %51 = getelementptr inbounds %struct.cache, %struct.cache* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.cache*, %struct.cache** %10, align 8
  %55 = getelementptr inbounds %struct.cache, %struct.cache* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.cache*, %struct.cache** %10, align 8
  %59 = getelementptr inbounds %struct.cache, %struct.cache* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.cache*, %struct.cache** %10, align 8
  %63 = getelementptr inbounds %struct.cache, %struct.cache* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.cache*, %struct.cache** %10, align 8
  %66 = getelementptr inbounds %struct.cache, %struct.cache* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = call i32 @list_head_init(i32* %67)
  %69 = load i32, i32* @cache_pruner_job, align 4
  %70 = load %struct.cache*, %struct.cache** %10, align 8
  %71 = call i32 @lwan_job_add(i32 %69, %struct.cache* %70)
  %72 = load %struct.cache*, %struct.cache** %10, align 8
  store %struct.cache* %72, %struct.cache** %5, align 8
  br label %87

73:                                               ; preds = %47
  %74 = load %struct.cache*, %struct.cache** %10, align 8
  %75 = getelementptr inbounds %struct.cache, %struct.cache* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = call i32 @pthread_rwlock_destroy(i32* %76)
  br label %78

78:                                               ; preds = %73, %40
  %79 = load %struct.cache*, %struct.cache** %10, align 8
  %80 = getelementptr inbounds %struct.cache, %struct.cache* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @hash_free(i32 %82)
  br label %84

84:                                               ; preds = %78, %33
  %85 = load %struct.cache*, %struct.cache** %10, align 8
  %86 = call i32 @free(%struct.cache* %85)
  store %struct.cache* null, %struct.cache** %5, align 8
  br label %87

87:                                               ; preds = %84, %48, %22
  %88 = load %struct.cache*, %struct.cache** %5, align 8
  ret %struct.cache* %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.cache* @calloc(i32, i32) #1

declare dso_local i32 @hash_str_new(i32 (%struct.cache*)*, i32*) #1

declare dso_local i32 @free(%struct.cache*) #1

declare dso_local i64 @pthread_rwlock_init(i32*, i32*) #1

declare dso_local i32 @list_head_init(i32*) #1

declare dso_local i32 @lwan_job_add(i32, %struct.cache*) #1

declare dso_local i32 @pthread_rwlock_destroy(i32*) #1

declare dso_local i32 @hash_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
