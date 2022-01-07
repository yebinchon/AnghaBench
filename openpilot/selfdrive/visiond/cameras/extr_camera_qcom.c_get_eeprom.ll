; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_eeprom_cfg_data = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }

@CFG_EEPROM_GET_CAL_DATA = common dso_local global i32 0, align 4
@VIDIOC_MSM_EEPROM_CFG = common dso_local global i32 0, align 4
@CFG_EEPROM_READ_CAL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i64*)* @get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_eeprom(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_eeprom_cfg_data, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %9 = bitcast %struct.msm_eeprom_cfg_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = load i32, i32* @CFG_EEPROM_GET_CAL_DATA, align 4
  %11 = getelementptr inbounds %struct.msm_eeprom_cfg_data, %struct.msm_eeprom_cfg_data* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @VIDIOC_MSM_EEPROM_CFG, align 4
  %14 = call i32 @ioctl(i32 %12, i32 %13, %struct.msm_eeprom_cfg_data* %6)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = getelementptr inbounds %struct.msm_eeprom_cfg_data, %struct.msm_eeprom_cfg_data* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 100
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32* @malloc(i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @memset(i32* %32, i32 0, i32 %33)
  %35 = load i32, i32* @CFG_EEPROM_READ_CAL_DATA, align 4
  %36 = getelementptr inbounds %struct.msm_eeprom_cfg_data, %struct.msm_eeprom_cfg_data* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.msm_eeprom_cfg_data, %struct.msm_eeprom_cfg_data* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds %struct.msm_eeprom_cfg_data, %struct.msm_eeprom_cfg_data* %6, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32* %41, i32** %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @VIDIOC_MSM_EEPROM_CFG, align 4
  %47 = call i32 @ioctl(i32 %45, i32 %46, %struct.msm_eeprom_cfg_data* %6)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %4, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i32*, i32** %8, align 8
  ret i32* %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ioctl(i32, i32, %struct.msm_eeprom_cfg_data*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
