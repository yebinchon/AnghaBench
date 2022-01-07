; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_toyota.h_toyota_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_toyota.h_toyota_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@toyota_dbc_eps_torque_factor = common dso_local global i32 0, align 4
@toyota_torque_meas = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@controls_allowed = common dso_local global i32 0, align 4
@toyota_cruise_engaged_last = common dso_local global i32 0, align 4
@gas_interceptor_detected = common dso_local global i32 0, align 4
@TOYOTA_GAS_INTERCEPTOR_THRESHOLD = common dso_local global i32 0, align 4
@gas_interceptor_prev = common dso_local global i32 0, align 4
@long_controls_allowed = common dso_local global i64 0, align 8
@toyota_gas_prev = common dso_local global i32 0, align 4
@toyota_camera_forwarded = common dso_local global i32 0, align 4
@toyota_giraffe_switch_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @toyota_rx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toyota_rx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @GET_BUS(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @GET_ADDR(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 608
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @GET_BYTE(i32* %16, i32 5)
  %18 = shl i32 %17, 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GET_BYTE(i32* %19, i32 6)
  %21 = or i32 %18, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @to_signed(i32 %22, i32 16)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @toyota_dbc_eps_torque_factor, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sdiv i32 %26, 100
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @update_sample(%struct.TYPE_3__* @toyota_torque_meas, i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @toyota_torque_meas, i32 0, i32 1), align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @toyota_torque_meas, i32 0, i32 1), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @toyota_torque_meas, i32 0, i32 0), align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @toyota_torque_meas, i32 0, i32 0), align 4
  br label %34

34:                                               ; preds = %15, %1
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 466
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @GET_BYTE(i32* %38, i32 0)
  %40 = and i32 %39, 32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 0, i32* @controls_allowed, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @toyota_cruise_engaged_last, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 1, i32* @controls_allowed, align 4
  br label %51

51:                                               ; preds = %50, %47, %44
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* @toyota_cruise_engaged_last, align 4
  br label %53

53:                                               ; preds = %51, %34
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 513
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  store i32 1, i32* @gas_interceptor_detected, align 4
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @GET_INTERCEPTOR(i32* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @TOYOTA_GAS_INTERCEPTOR_THRESHOLD, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32, i32* @gas_interceptor_prev, align 4
  %64 = load i32, i32* @TOYOTA_GAS_INTERCEPTOR_THRESHOLD, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i64, i64* @long_controls_allowed, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* @controls_allowed, align 4
  br label %70

70:                                               ; preds = %69, %66, %62, %56
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* @gas_interceptor_prev, align 4
  br label %72

72:                                               ; preds = %70, %53
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 705
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @GET_BYTE(i32* %76, i32 6)
  %78 = and i32 %77, 255
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32, i32* @toyota_gas_prev, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* @gas_interceptor_detected, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* @long_controls_allowed, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* @controls_allowed, align 4
  br label %91

91:                                               ; preds = %90, %87, %84, %81, %75
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* @toyota_gas_prev, align 4
  br label %93

93:                                               ; preds = %91, %72
  %94 = load i32, i32* %3, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, i32* @toyota_camera_forwarded, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 740
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 1, i32* @toyota_giraffe_switch_1, align 4
  br label %104

104:                                              ; preds = %103, %100, %97
  ret void
}

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @to_signed(i32, i32) #1

declare dso_local i32 @update_sample(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @GET_INTERCEPTOR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
