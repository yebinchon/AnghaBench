; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_contains_prop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_contains_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_properties = type { %struct.obs_property* }
%struct.obs_property = type { i64, %struct.obs_property*, i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Property '%s' exists\00", align 1
@OBS_PROPERTY_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_properties*, i8*)* @contains_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contains_prop(%struct.obs_properties* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.obs_properties*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.obs_property*, align 8
  store %struct.obs_properties* %0, %struct.obs_properties** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.obs_properties*, %struct.obs_properties** %4, align 8
  %8 = getelementptr inbounds %struct.obs_properties, %struct.obs_properties* %7, i32 0, i32 0
  %9 = load %struct.obs_property*, %struct.obs_property** %8, align 8
  store %struct.obs_property* %9, %struct.obs_property** %6, align 8
  br label %10

10:                                               ; preds = %38, %2
  %11 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %12 = icmp ne %struct.obs_property* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %15 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @LOG_WARNING, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @blog(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 1, i32* %3, align 4
  br label %43

24:                                               ; preds = %13
  %25 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %26 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OBS_PROPERTY_GROUP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %32 = call %struct.obs_properties* @obs_property_group_content(%struct.obs_property* %31)
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @contains_prop(%struct.obs_properties* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %43

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %40 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %39, i32 0, i32 1
  %41 = load %struct.obs_property*, %struct.obs_property** %40, align 8
  store %struct.obs_property* %41, %struct.obs_property** %6, align 8
  br label %10

42:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %36, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @blog(i32, i8*, i8*) #1

declare dso_local %struct.obs_properties* @obs_property_group_content(%struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
