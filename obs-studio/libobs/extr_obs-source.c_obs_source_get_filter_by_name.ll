; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_get_filter_by_name.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_get_filter_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, %struct.obs_source** }

@.str = private unnamed_addr constant [30 x i8] c"obs_source_get_filter_by_name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_source* @obs_source_get_filter_by_name(%struct.obs_source* %0, i8* %1) #0 {
  %3 = alloca %struct.obs_source*, align 8
  %4 = alloca %struct.obs_source*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.obs_source*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.obs_source*, align 8
  store %struct.obs_source* %0, %struct.obs_source** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.obs_source* null, %struct.obs_source** %6, align 8
  %9 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %10 = call i32 @obs_source_valid(%struct.obs_source* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.obs_source* null, %struct.obs_source** %3, align 8
  br label %57

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @obs_ptr_valid(i8* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store %struct.obs_source* null, %struct.obs_source** %3, align 8
  br label %57

18:                                               ; preds = %13
  %19 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %20 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %49, %18
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %25 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %31 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.obs_source**, %struct.obs_source*** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %33, i64 %34
  %36 = load %struct.obs_source*, %struct.obs_source** %35, align 8
  store %struct.obs_source* %36, %struct.obs_source** %8, align 8
  %37 = load %struct.obs_source*, %struct.obs_source** %8, align 8
  %38 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strcmp(i32 %40, i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load %struct.obs_source*, %struct.obs_source** %8, align 8
  store %struct.obs_source* %45, %struct.obs_source** %6, align 8
  %46 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %47 = call i32 @obs_source_addref(%struct.obs_source* %46)
  br label %52

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %22

52:                                               ; preds = %44, %22
  %53 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %54 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %53, i32 0, i32 0
  %55 = call i32 @pthread_mutex_unlock(i32* %54)
  %56 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  store %struct.obs_source* %56, %struct.obs_source** %3, align 8
  br label %57

57:                                               ; preds = %52, %17, %12
  %58 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  ret %struct.obs_source* %58
}

declare dso_local i32 @obs_source_valid(%struct.obs_source*, i8*) #1

declare dso_local i32 @obs_ptr_valid(i8*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @obs_source_addref(%struct.obs_source*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
