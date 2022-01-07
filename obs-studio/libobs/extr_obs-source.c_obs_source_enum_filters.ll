; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_enum_filters.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_enum_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.obs_source** }
%struct.obs_source = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"obs_source_enum_filters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_enum_filters(%struct.TYPE_9__* %0, i32 (%struct.TYPE_9__*, %struct.obs_source*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32 (%struct.TYPE_9__*, %struct.obs_source*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.obs_source*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 (%struct.TYPE_9__*, %struct.obs_source*, i8*)* %1, i32 (%struct.TYPE_9__*, %struct.obs_source*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i32 @obs_source_valid(%struct.TYPE_9__* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %50

13:                                               ; preds = %3
  %14 = load i32 (%struct.TYPE_9__*, %struct.obs_source*, i8*)*, i32 (%struct.TYPE_9__*, %struct.obs_source*, i8*)** %5, align 8
  %15 = call i32 @obs_ptr_valid(i32 (%struct.TYPE_9__*, %struct.obs_source*, i8*)* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %50

18:                                               ; preds = %13
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %43, %18
  %27 = load i64, i64* %7, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load %struct.obs_source**, %struct.obs_source*** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %33, i64 %35
  %37 = load %struct.obs_source*, %struct.obs_source** %36, align 8
  store %struct.obs_source* %37, %struct.obs_source** %8, align 8
  %38 = load i32 (%struct.TYPE_9__*, %struct.obs_source*, i8*)*, i32 (%struct.TYPE_9__*, %struct.obs_source*, i8*)** %5, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = load %struct.obs_source*, %struct.obs_source** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 %38(%struct.TYPE_9__* %39, %struct.obs_source* %40, i8* %41)
  br label %43

43:                                               ; preds = %29
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %7, align 8
  br label %26

46:                                               ; preds = %26
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %17, %12
  ret void
}

declare dso_local i32 @obs_source_valid(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @obs_ptr_valid(i32 (%struct.TYPE_9__*, %struct.obs_source*, i8*)*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
