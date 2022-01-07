; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_imx179_s5k3p8sp_apply_exposure.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_imx179_s5k3p8sp_apply_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double }
%struct.msm_camera_i2c_reg_array = type { i32, i32, i32 }

@MSM_CAMERA_I2C_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"apply_exposure err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @imx179_s5k3p8sp_apply_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx179_s5k3p8sp_apply_exposure(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x %struct.msm_camera_i2c_reg_array], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 448
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 512, %14
  %16 = sitofp i32 %15 to double
  %17 = fdiv double 5.120000e+02, %16
  %18 = fdiv double %17, 8.000000e+00
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store double %18, double* %20, align 8
  br label %24

21:                                               ; preds = %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store double 1.000000e+00, double* %23, align 8
  br label %24

24:                                               ; preds = %21, %13
  %25 = getelementptr inbounds [8 x %struct.msm_camera_i2c_reg_array], [8 x %struct.msm_camera_i2c_reg_array]* %10, i64 0, i64 0
  %26 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %25, i32 0, i32 0
  store i32 260, i32* %26, align 4
  %27 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %25, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %25, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %25, i64 1
  %30 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %29, i32 0, i32 0
  store i32 832, i32* %30, align 4
  %31 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %29, i32 0, i32 1
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 8
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %29, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %29, i64 1
  %36 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %35, i32 0, i32 0
  store i32 833, i32* %36, align 4
  %37 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %35, i32 0, i32 1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %35, i32 0, i32 2
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %35, i64 1
  %42 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %41, i32 0, i32 0
  store i32 514, i32* %42, align 4
  %43 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %41, i32 0, i32 1
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 8
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %41, i32 0, i32 2
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %41, i64 1
  %48 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %47, i32 0, i32 0
  store i32 515, i32* %48, align 4
  %49 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %47, i32 0, i32 1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 255
  store i32 %51, i32* %49, align 4
  %52 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %47, i32 0, i32 2
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %47, i64 1
  %54 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %53, i32 0, i32 0
  store i32 516, i32* %54, align 4
  %55 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %53, i32 0, i32 1
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 8
  store i32 %57, i32* %55, align 4
  %58 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %53, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %53, i64 1
  %60 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %59, i32 0, i32 0
  store i32 517, i32* %60, align 4
  %61 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %59, i32 0, i32 1
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 255
  store i32 %63, i32* %61, align 4
  %64 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %59, i32 0, i32 2
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %59, i64 1
  %66 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %65, i32 0, i32 0
  store i32 260, i32* %66, align 4
  %67 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %65, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %65, i32 0, i32 2
  store i32 0, i32* %68, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds [8 x %struct.msm_camera_i2c_reg_array], [8 x %struct.msm_camera_i2c_reg_array]* %10, i64 0, i64 0
  %71 = getelementptr inbounds [8 x %struct.msm_camera_i2c_reg_array], [8 x %struct.msm_camera_i2c_reg_array]* %10, i64 0, i64 0
  %72 = call i32 @ARRAYSIZE(%struct.msm_camera_i2c_reg_array* %71)
  %73 = load i32, i32* @MSM_CAMERA_I2C_BYTE_DATA, align 4
  %74 = call i32 @sensor_write_regs(%struct.TYPE_4__* %69, %struct.msm_camera_i2c_reg_array* %70, i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %24
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @LOGE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %24
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @sensor_write_regs(%struct.TYPE_4__*, %struct.msm_camera_i2c_reg_array*, i32, i32) #1

declare dso_local i32 @ARRAYSIZE(%struct.msm_camera_i2c_reg_array*) #1

declare dso_local i32 @LOGE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
