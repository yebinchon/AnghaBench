; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_data }
%struct.obs_core_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @obs_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_init_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obs_core_data*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store %struct.obs_core_data* %5, %struct.obs_core_data** %2, align 8
  %6 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %7 = icmp ne %struct.obs_core_data* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %11, i32 0, i32 7
  %13 = call i32 @pthread_mutex_init_value(i32* %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %15, i32 0, i32 3
  %17 = call i32 @pthread_mutex_init_value(i32* %16)
  %18 = call i64 @pthread_mutexattr_init(i32* %3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %86

21:                                               ; preds = %0
  %22 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %23 = call i64 @pthread_mutexattr_settype(i32* %3, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %81

26:                                               ; preds = %21
  %27 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %28 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %27, i32 0, i32 9
  %29 = call i64 @pthread_mutex_init(i32* %28, i32* %3)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %81

32:                                               ; preds = %26
  %33 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %34 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %33, i32 0, i32 8
  %35 = call i64 @pthread_mutex_init(i32* %34, i32* %3)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %81

38:                                               ; preds = %32
  %39 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %40 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %39, i32 0, i32 7
  %41 = call i64 @pthread_mutex_init(i32* %40, i32* %3)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %81

44:                                               ; preds = %38
  %45 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %46 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %45, i32 0, i32 6
  %47 = call i64 @pthread_mutex_init(i32* %46, i32* %3)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %81

50:                                               ; preds = %44
  %51 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %52 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %51, i32 0, i32 5
  %53 = call i64 @pthread_mutex_init(i32* %52, i32* %3)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %81

56:                                               ; preds = %50
  %57 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %58 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %57, i32 0, i32 4
  %59 = call i64 @pthread_mutex_init(i32* %58, i32* %3)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %81

62:                                               ; preds = %56
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %64, i32 0, i32 3
  %66 = call i64 @pthread_mutex_init(i32* %65, i32* %3)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %81

69:                                               ; preds = %62
  %70 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %71 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %70, i32 0, i32 2
  %72 = call i32 @obs_view_init(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %81

75:                                               ; preds = %69
  %76 = call i32 (...) @obs_data_create()
  %77 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %78 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %80 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %74, %68, %61, %55, %49, %43, %37, %31, %25
  %82 = call i32 @pthread_mutexattr_destroy(i32* %3)
  %83 = load %struct.obs_core_data*, %struct.obs_core_data** %2, align 8
  %84 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %1, align 4
  br label %86

86:                                               ; preds = %81, %20
  %87 = load i32, i32* %1, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @obs_view_init(i32*) #1

declare dso_local i32 @obs_data_create(...) #1

declare dso_local i32 @pthread_mutexattr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
