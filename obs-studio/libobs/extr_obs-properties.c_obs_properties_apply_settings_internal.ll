; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_apply_settings_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_apply_settings_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.obs_property* }
%struct.obs_property = type { i64, %struct.obs_property*, i32, i32 (i32, %struct.TYPE_7__*, %struct.obs_property*, i32*)*, i32 (%struct.TYPE_7__*, %struct.obs_property*, i32*)* }

@OBS_PROPERTY_GROUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_properties_apply_settings_internal(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.obs_property*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.obs_property*, %struct.obs_property** %9, align 8
  store %struct.obs_property* %10, %struct.obs_property** %7, align 8
  br label %11

11:                                               ; preds = %55, %3
  %12 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %13 = icmp ne %struct.obs_property* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %11
  %15 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %16 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OBS_PROPERTY_GROUP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %22 = call %struct.TYPE_7__* @obs_property_group_content(%struct.obs_property* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  call void @obs_properties_apply_settings_internal(%struct.TYPE_7__* %22, i32* %23, %struct.TYPE_7__* %24)
  br label %25

25:                                               ; preds = %20, %14
  %26 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %27 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %26, i32 0, i32 4
  %28 = load i32 (%struct.TYPE_7__*, %struct.obs_property*, i32*)*, i32 (%struct.TYPE_7__*, %struct.obs_property*, i32*)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_7__*, %struct.obs_property*, i32*)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %32 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %31, i32 0, i32 4
  %33 = load i32 (%struct.TYPE_7__*, %struct.obs_property*, i32*)*, i32 (%struct.TYPE_7__*, %struct.obs_property*, i32*)** %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 %33(%struct.TYPE_7__* %34, %struct.obs_property* %35, i32* %36)
  br label %55

38:                                               ; preds = %25
  %39 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %40 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %39, i32 0, i32 3
  %41 = load i32 (i32, %struct.TYPE_7__*, %struct.obs_property*, i32*)*, i32 (i32, %struct.TYPE_7__*, %struct.obs_property*, i32*)** %40, align 8
  %42 = icmp ne i32 (i32, %struct.TYPE_7__*, %struct.obs_property*, i32*)* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %45 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %44, i32 0, i32 3
  %46 = load i32 (i32, %struct.TYPE_7__*, %struct.obs_property*, i32*)*, i32 (i32, %struct.TYPE_7__*, %struct.obs_property*, i32*)** %45, align 8
  %47 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %48 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 %46(i32 %49, %struct.TYPE_7__* %50, %struct.obs_property* %51, i32* %52)
  br label %54

54:                                               ; preds = %43, %38
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  %57 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %56, i32 0, i32 1
  %58 = load %struct.obs_property*, %struct.obs_property** %57, align 8
  store %struct.obs_property* %58, %struct.obs_property** %7, align 8
  br label %11

59:                                               ; preds = %11
  ret void
}

declare dso_local %struct.TYPE_7__* @obs_property_group_content(%struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
