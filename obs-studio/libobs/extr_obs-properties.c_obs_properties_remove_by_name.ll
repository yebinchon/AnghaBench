; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_remove_by_name.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_remove_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.obs_property* }
%struct.obs_property = type { i64, %struct.obs_property*, i32 }

@OBS_PROPERTY_GROUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_properties_remove_by_name(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.obs_property*, align 8
  %6 = alloca %struct.obs_property*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %52

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.obs_property*, %struct.obs_property** %12, align 8
  store %struct.obs_property* %13, %struct.obs_property** %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.obs_property*, %struct.obs_property** %15, align 8
  store %struct.obs_property* %16, %struct.obs_property** %6, align 8
  br label %17

17:                                               ; preds = %47, %10
  %18 = load %struct.obs_property*, %struct.obs_property** %5, align 8
  %19 = icmp ne %struct.obs_property* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load %struct.obs_property*, %struct.obs_property** %5, align 8
  %22 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcmp(i32 %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.obs_property*, %struct.obs_property** %5, align 8
  %29 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %28, i32 0, i32 1
  %30 = load %struct.obs_property*, %struct.obs_property** %29, align 8
  %31 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %32 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %31, i32 0, i32 1
  store %struct.obs_property* %30, %struct.obs_property** %32, align 8
  %33 = load %struct.obs_property*, %struct.obs_property** %5, align 8
  %34 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %33, i32 0, i32 1
  store %struct.obs_property* null, %struct.obs_property** %34, align 8
  %35 = load %struct.obs_property*, %struct.obs_property** %5, align 8
  %36 = call i32 @obs_property_destroy(%struct.obs_property* %35)
  br label %52

37:                                               ; preds = %20
  %38 = load %struct.obs_property*, %struct.obs_property** %5, align 8
  %39 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OBS_PROPERTY_GROUP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.obs_property*, %struct.obs_property** %5, align 8
  %45 = call %struct.TYPE_4__* @obs_property_group_content(%struct.obs_property* %44)
  %46 = load i8*, i8** %4, align 8
  call void @obs_properties_remove_by_name(%struct.TYPE_4__* %45, i8* %46)
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.obs_property*, %struct.obs_property** %5, align 8
  store %struct.obs_property* %48, %struct.obs_property** %6, align 8
  %49 = load %struct.obs_property*, %struct.obs_property** %5, align 8
  %50 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %49, i32 0, i32 1
  %51 = load %struct.obs_property*, %struct.obs_property** %50, align 8
  store %struct.obs_property* %51, %struct.obs_property** %5, align 8
  br label %17

52:                                               ; preds = %9, %27, %17
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @obs_property_destroy(%struct.obs_property*) #1

declare dso_local %struct.TYPE_4__* @obs_property_group_content(%struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
