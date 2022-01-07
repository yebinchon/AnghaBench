; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_imx298_apply_exposure.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_imx298_apply_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double }
%struct.msm_camera_i2c_reg_array = type { i32, i32, i32 }

@__const.imx298_apply_exposure.white_balance = private unnamed_addr constant [3 x float] [float 0x3FDD800000000000, float 1.000000e+00, float 5.468750e-01], align 4
@MSM_CAMERA_I2C_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"apply_exposure err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @imx298_apply_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx298_apply_exposure(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [9 x %struct.msm_camera_i2c_reg_array], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @min(i32 %18, i32 448)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 448
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 512, %23
  %25 = sitofp i32 %24 to double
  %26 = fdiv double 5.120000e+02, %25
  %27 = fdiv double %26, 8.000000e+00
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store double %27, double* %29, align 8
  br label %33

30:                                               ; preds = %4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store double 1.000000e+00, double* %32, align 8
  br label %33

33:                                               ; preds = %30, %22
  store i32 256, i32* %11, align 4
  %34 = bitcast [3 x float]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast ([3 x float]* @__const.imx298_apply_exposure.white_balance to i8*), i64 12, i1 false)
  %35 = load i32, i32* %11, align 4
  %36 = sitofp i32 %35 to float
  %37 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %38 = load float, float* %37, align 4
  %39 = fdiv float %36, %38
  %40 = fptosi float %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sitofp i32 %41 to float
  %43 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 1
  %44 = load float, float* %43, align 4
  %45 = fdiv float %42, %44
  %46 = fptosi float %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sitofp i32 %47 to float
  %49 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %50 = load float, float* %49, align 4
  %51 = fdiv float %48, %50
  %52 = fptosi float %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sitofp i32 %53 to float
  %55 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 2
  %56 = load float, float* %55, align 4
  %57 = fdiv float %54, %56
  %58 = fptosi float %57 to i32
  store i32 %58, i32* %16, align 4
  %59 = getelementptr inbounds [9 x %struct.msm_camera_i2c_reg_array], [9 x %struct.msm_camera_i2c_reg_array]* %17, i64 0, i64 0
  %60 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %59, i32 0, i32 0
  store i32 260, i32* %60, align 4
  %61 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %59, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %59, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %59, i64 1
  %64 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %63, i32 0, i32 0
  store i32 12290, i32* %64, align 4
  %65 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %63, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %63, i32 0, i32 2
  store i32 0, i32* %66, align 4
  %67 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %63, i64 1
  %68 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %67, i32 0, i32 0
  store i32 832, i32* %68, align 4
  %69 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %67, i32 0, i32 1
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, 8
  store i32 %71, i32* %69, align 4
  %72 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %67, i32 0, i32 2
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %67, i64 1
  %74 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %73, i32 0, i32 0
  store i32 833, i32* %74, align 4
  %75 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %73, i32 0, i32 1
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 255
  store i32 %77, i32* %75, align 4
  %78 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %73, i32 0, i32 2
  store i32 0, i32* %78, align 4
  %79 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %73, i64 1
  %80 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %79, i32 0, i32 0
  store i32 514, i32* %80, align 4
  %81 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %79, i32 0, i32 1
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 8
  store i32 %83, i32* %81, align 4
  %84 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %79, i32 0, i32 2
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %79, i64 1
  %86 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %85, i32 0, i32 0
  store i32 515, i32* %86, align 4
  %87 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %85, i32 0, i32 1
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, 255
  store i32 %89, i32* %87, align 4
  %90 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %85, i32 0, i32 2
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %85, i64 1
  %92 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %91, i32 0, i32 0
  store i32 516, i32* %92, align 4
  %93 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %91, i32 0, i32 1
  %94 = load i32, i32* %10, align 4
  %95 = ashr i32 %94, 8
  store i32 %95, i32* %93, align 4
  %96 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %91, i32 0, i32 2
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %91, i64 1
  %98 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %97, i32 0, i32 0
  store i32 517, i32* %98, align 4
  %99 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %97, i32 0, i32 1
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 255
  store i32 %101, i32* %99, align 4
  %102 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %97, i32 0, i32 2
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %97, i64 1
  %104 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %103, i32 0, i32 0
  store i32 260, i32* %104, align 4
  %105 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %103, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds %struct.msm_camera_i2c_reg_array, %struct.msm_camera_i2c_reg_array* %103, i32 0, i32 2
  store i32 0, i32* %106, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds [9 x %struct.msm_camera_i2c_reg_array], [9 x %struct.msm_camera_i2c_reg_array]* %17, i64 0, i64 0
  %109 = getelementptr inbounds [9 x %struct.msm_camera_i2c_reg_array], [9 x %struct.msm_camera_i2c_reg_array]* %17, i64 0, i64 0
  %110 = call i32 @ARRAYSIZE(%struct.msm_camera_i2c_reg_array* %109)
  %111 = load i32, i32* @MSM_CAMERA_I2C_BYTE_DATA, align 4
  %112 = call i32 @sensor_write_regs(%struct.TYPE_4__* %107, %struct.msm_camera_i2c_reg_array* %108, i32 %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %33
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @LOGE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %33
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sensor_write_regs(%struct.TYPE_4__*, %struct.msm_camera_i2c_reg_array*, i32, i32) #1

declare dso_local i32 @ARRAYSIZE(%struct.msm_camera_i2c_reg_array*) #1

declare dso_local i32 @LOGE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
