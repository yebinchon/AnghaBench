; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-service.c_obs_service_deactivate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-service.c_obs_service_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_service = type { i32, i32*, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [23 x i8] c"obs_service_deactivate\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"obs_service_deactivate: service '%s' is not assigned to an output\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_service_deactivate(%struct.obs_service* %0, i32 %1) #0 {
  %3 = alloca %struct.obs_service*, align 8
  %4 = alloca i32, align 4
  store %struct.obs_service* %0, %struct.obs_service** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %6 = call i32 @obs_service_valid(%struct.obs_service* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %58

9:                                                ; preds = %2
  %10 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %11 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @LOG_WARNING, align 4
  %16 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %17 = call i32 @obs_service_get_name(%struct.obs_service* %16)
  %18 = call i32 @blog(i32 %15, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %58

19:                                               ; preds = %9
  %20 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %21 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %58

25:                                               ; preds = %19
  %26 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %27 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = icmp ne i32 (i32)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %33 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %37 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %35(i32 %39)
  br label %41

41:                                               ; preds = %31, %25
  %42 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %43 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %45 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %50 = call i32 @actually_destroy_service(%struct.obs_service* %49)
  br label %58

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.obs_service*, %struct.obs_service** %3, align 8
  %56 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %8, %14, %24, %57, %48
  ret void
}

declare dso_local i32 @obs_service_valid(%struct.obs_service*, i8*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @obs_service_get_name(%struct.obs_service*) #1

declare dso_local i32 @actually_destroy_service(%struct.obs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
