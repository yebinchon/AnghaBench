; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_cluster.c_redis_cluster_init.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_cluster.c_redis_cluster_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, i32, i64, i32, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, double, double, i32, i8*, i64)* @redis_cluster_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redis_cluster_init(%struct.TYPE_6__* %0, i32* %1, double %2, double %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load double, double* %10, align 8
  %17 = load double, double* %11, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @cluster_validate_args(double %16, double %17, i32* %18)
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %7
  %23 = load i64, i64* %14, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i8*, i8** %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @zend_string_init(i8* %26, i64 %27, i32 0)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %22, %7
  %32 = load double, double* %10, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store double %32, double* %34, align 8
  %35 = load double, double* %11, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store double %35, double* %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load double, double* %10, align 8
  %42 = fmul double %41, 1.000000e+03
  %43 = fptosi double %42 to i64
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @cluster_cache_load(i32* %46)
  store i32* %47, i32** %15, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %31
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @cluster_init_cache(%struct.TYPE_6__* %50, i32* %51)
  br label %71

53:                                               ; preds = %31
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @cluster_init_seeds(%struct.TYPE_6__* %54, i32* %55)
  %57 = load i64, i64* @SUCCESS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = call i64 @cluster_map_keyspace(%struct.TYPE_6__* %60)
  %62 = load i64, i64* @SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @cluster_cache_store(i32* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %59, %53
  br label %71

71:                                               ; preds = %70, %49
  ret void
}

declare dso_local i32 @cluster_validate_args(double, double, i32*) #1

declare dso_local i32 @zend_string_init(i8*, i64, i32) #1

declare dso_local i32* @cluster_cache_load(i32*) #1

declare dso_local i32 @cluster_init_cache(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @cluster_init_seeds(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @cluster_map_keyspace(%struct.TYPE_6__*) #1

declare dso_local i32 @cluster_cache_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
