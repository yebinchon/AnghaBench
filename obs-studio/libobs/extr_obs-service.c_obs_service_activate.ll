; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-service.c_obs_service_activate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-service.c_obs_service_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_service = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@.str = private unnamed_addr constant [21 x i8] c"obs_service_activate\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"obs_service_deactivate: service '%s' is not assigned to an output\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_service_activate(%struct.obs_service* %0) #0 {
  %2 = alloca %struct.obs_service*, align 8
  store %struct.obs_service* %0, %struct.obs_service** %2, align 8
  %3 = load %struct.obs_service*, %struct.obs_service** %2, align 8
  %4 = call i32 @obs_service_valid(%struct.obs_service* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %46

7:                                                ; preds = %1
  %8 = load %struct.obs_service*, %struct.obs_service** %2, align 8
  %9 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @LOG_WARNING, align 4
  %14 = load %struct.obs_service*, %struct.obs_service** %2, align 8
  %15 = call i32 @obs_service_get_name(%struct.obs_service* %14)
  %16 = call i32 @blog(i32 %13, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %46

17:                                               ; preds = %7
  %18 = load %struct.obs_service*, %struct.obs_service** %2, align 8
  %19 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %46

23:                                               ; preds = %17
  %24 = load %struct.obs_service*, %struct.obs_service** %2, align 8
  %25 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = icmp ne i32 (i32, i32)* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load %struct.obs_service*, %struct.obs_service** %2, align 8
  %31 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load %struct.obs_service*, %struct.obs_service** %2, align 8
  %35 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.obs_service*, %struct.obs_service** %2, align 8
  %39 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %33(i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %29, %23
  %44 = load %struct.obs_service*, %struct.obs_service** %2, align 8
  %45 = getelementptr inbounds %struct.obs_service, %struct.obs_service* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %22, %12, %6
  ret void
}

declare dso_local i32 @obs_service_valid(%struct.obs_service*, i8*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @obs_service_get_name(%struct.obs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
