; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_ov8865_apply_exposure.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_ov8865_apply_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_camera_i2c_reg_array = type { i32, i32, i32 }

@MSM_CAMERA_I2C_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"apply_exposure err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @ov8865_apply_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov8865_apply_exposure(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x %struct.msm_camera_i2c_reg_array], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ov8865_get_coarse_gain(i32 %12)
  %14 = shl i32 1, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %16, 16
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds [8 x %struct.msm_camera_i2c_reg_array], [8 x %struct.msm_camera_i2c_reg_array]* %11, i64 0, i64 0
  %19 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %18, i32 0, i32 0
  store i32 14350, i32* %19, align 4
  %20 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %18, i32 0, i32 1
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 8
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %18, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %18, i64 1
  %25 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %24, i32 0, i32 0
  store i32 14351, i32* %25, align 4
  %26 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %24, i32 0, i32 1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 255
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %24, i32 0, i32 2
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %24, i64 1
  %31 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %30, i32 0, i32 0
  store i32 13568, i32* %31, align 4
  %32 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %30, i32 0, i32 1
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 16
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %30, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %30, i64 1
  %37 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %36, i32 0, i32 0
  store i32 13569, i32* %37, align 4
  %38 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %36, i32 0, i32 1
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 8
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %36, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %36, i64 1
  %43 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %42, i32 0, i32 0
  store i32 13570, i32* %43, align 4
  %44 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %42, i32 0, i32 1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %42, i32 0, i32 2
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %42, i64 1
  %49 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %48, i32 0, i32 0
  store i32 13571, i32* %49, align 4
  %50 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %48, i32 0, i32 1
  store i32 4, i32* %50, align 4
  %51 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %48, i32 0, i32 2
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %48, i64 1
  %53 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %52, i32 0, i32 0
  store i32 13576, i32* %53, align 4
  %54 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %52, i32 0, i32 1
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %52, i32 0, i32 2
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %52, i64 1
  %58 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %57, i32 0, i32 0
  store i32 13577, i32* %58, align 4
  %59 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %57, i32 0, i32 1
  store i32 248, i32* %59, align 4
  %60 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %57, i32 0, i32 2
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds [8 x %struct.msm_camera_i2c_reg_array], [8 x %struct.msm_camera_i2c_reg_array]* %11, i64 0, i64 0
  %63 = getelementptr inbounds [8 x %struct.msm_camera_i2c_reg_array], [8 x %struct.msm_camera_i2c_reg_array]* %11, i64 0, i64 0
  %64 = call i32 @ARRAYSIZE(%struct.msm_camera_i2c_reg_array* %63)
  %65 = load i32, i32* @MSM_CAMERA_I2C_BYTE_DATA, align 4
  %66 = call i32 @sensor_write_regs(i32* %61, %struct.msm_camera_i2c_reg_array* %62, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @LOGE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %4
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @ov8865_get_coarse_gain(i32) #1

declare dso_local i32 @sensor_write_regs(i32*, %struct.msm_camera_i2c_reg_array*, i32, i32) #1

declare dso_local i32 @ARRAYSIZE(%struct.msm_camera_i2c_reg_array*) #1

declare dso_local i32 @LOGE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
