; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_get.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_property = type { i64, %struct.obs_property*, i32 }
%struct.TYPE_4__ = type { %struct.obs_property* }

@OBS_PROPERTY_GROUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_property* @obs_properties_get(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.obs_property*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.obs_property*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.obs_property*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.obs_property* null, %struct.obs_property** %3, align 8
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.obs_property*, %struct.obs_property** %14, align 8
  store %struct.obs_property* %15, %struct.obs_property** %6, align 8
  br label %16

16:                                               ; preds = %45, %12
  %17 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %18 = icmp ne %struct.obs_property* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %21 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i32 %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  store %struct.obs_property* %27, %struct.obs_property** %3, align 8
  br label %50

28:                                               ; preds = %19
  %29 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %30 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OBS_PROPERTY_GROUP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %36 = call %struct.TYPE_4__* @obs_property_group_content(%struct.obs_property* %35)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call %struct.obs_property* @obs_properties_get(%struct.TYPE_4__* %37, i8* %38)
  store %struct.obs_property* %39, %struct.obs_property** %8, align 8
  %40 = load %struct.obs_property*, %struct.obs_property** %8, align 8
  %41 = icmp ne %struct.obs_property* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load %struct.obs_property*, %struct.obs_property** %8, align 8
  store %struct.obs_property* %43, %struct.obs_property** %3, align 8
  br label %50

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  %47 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %46, i32 0, i32 1
  %48 = load %struct.obs_property*, %struct.obs_property** %47, align 8
  store %struct.obs_property* %48, %struct.obs_property** %6, align 8
  br label %16

49:                                               ; preds = %16
  store %struct.obs_property* null, %struct.obs_property** %3, align 8
  br label %50

50:                                               ; preds = %49, %42, %26, %11
  %51 = load %struct.obs_property*, %struct.obs_property** %3, align 8
  ret %struct.obs_property* %51
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @obs_property_group_content(%struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
