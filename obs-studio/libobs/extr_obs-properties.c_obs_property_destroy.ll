; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_property_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_property_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_property = type { i64, %struct.obs_property*, %struct.obs_property*, %struct.obs_property* }

@OBS_PROPERTY_LIST = common dso_local global i64 0, align 8
@OBS_PROPERTY_PATH = common dso_local global i64 0, align 8
@OBS_PROPERTY_EDITABLE_LIST = common dso_local global i64 0, align 8
@OBS_PROPERTY_FRAME_RATE = common dso_local global i64 0, align 8
@OBS_PROPERTY_GROUP = common dso_local global i64 0, align 8
@OBS_PROPERTY_INT = common dso_local global i64 0, align 8
@OBS_PROPERTY_FLOAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_property*)* @obs_property_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_property_destroy(%struct.obs_property* %0) #0 {
  %2 = alloca %struct.obs_property*, align 8
  store %struct.obs_property* %0, %struct.obs_property** %2, align 8
  %3 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %4 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @OBS_PROPERTY_LIST, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %10 = call i32 @get_property_data(%struct.obs_property* %9)
  %11 = call i32 @list_data_free(i32 %10)
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %14 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OBS_PROPERTY_PATH, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %20 = call i32 @get_property_data(%struct.obs_property* %19)
  %21 = call i32 @path_data_free(i32 %20)
  br label %77

22:                                               ; preds = %12
  %23 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %24 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OBS_PROPERTY_EDITABLE_LIST, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %30 = call i32 @get_property_data(%struct.obs_property* %29)
  %31 = call i32 @editable_list_data_free(i32 %30)
  br label %76

32:                                               ; preds = %22
  %33 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %34 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OBS_PROPERTY_FRAME_RATE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %40 = call i32 @get_property_data(%struct.obs_property* %39)
  %41 = call i32 @frame_rate_data_free(i32 %40)
  br label %75

42:                                               ; preds = %32
  %43 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %44 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OBS_PROPERTY_GROUP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %50 = call i32 @get_property_data(%struct.obs_property* %49)
  %51 = call i32 @group_data_free(i32 %50)
  br label %74

52:                                               ; preds = %42
  %53 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %54 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @OBS_PROPERTY_INT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %60 = call i32 @get_property_data(%struct.obs_property* %59)
  %61 = call i32 @int_data_free(i32 %60)
  br label %73

62:                                               ; preds = %52
  %63 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %64 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @OBS_PROPERTY_FLOAT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %70 = call i32 @get_property_data(%struct.obs_property* %69)
  %71 = call i32 @float_data_free(i32 %70)
  br label %72

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73, %48
  br label %75

75:                                               ; preds = %74, %38
  br label %76

76:                                               ; preds = %75, %28
  br label %77

77:                                               ; preds = %76, %18
  br label %78

78:                                               ; preds = %77, %8
  %79 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %80 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %79, i32 0, i32 3
  %81 = load %struct.obs_property*, %struct.obs_property** %80, align 8
  %82 = call i32 @bfree(%struct.obs_property* %81)
  %83 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %84 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %83, i32 0, i32 2
  %85 = load %struct.obs_property*, %struct.obs_property** %84, align 8
  %86 = call i32 @bfree(%struct.obs_property* %85)
  %87 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %88 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %87, i32 0, i32 1
  %89 = load %struct.obs_property*, %struct.obs_property** %88, align 8
  %90 = call i32 @bfree(%struct.obs_property* %89)
  %91 = load %struct.obs_property*, %struct.obs_property** %2, align 8
  %92 = call i32 @bfree(%struct.obs_property* %91)
  ret void
}

declare dso_local i32 @list_data_free(i32) #1

declare dso_local i32 @get_property_data(%struct.obs_property*) #1

declare dso_local i32 @path_data_free(i32) #1

declare dso_local i32 @editable_list_data_free(i32) #1

declare dso_local i32 @frame_rate_data_free(i32) #1

declare dso_local i32 @group_data_free(i32) #1

declare dso_local i32 @int_data_free(i32) #1

declare dso_local i32 @float_data_free(i32) #1

declare dso_local i32 @bfree(%struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
