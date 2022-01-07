; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_vk.c_vaapi_vk_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_vk.c_vaapi_vk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { i32, %struct.priv_owner* }
%struct.priv_owner = type { i32, i32 }
%struct.pl_gpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PL_HANDLE_DMA_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"VAAPI Vulkan interop requires support for dma_buf import in Vulkan.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"using VAAPI Vulkan interop\0A\00", align 1
@vaapi_vk_map = common dso_local global i32 0, align 4
@vaapi_vk_unmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vaapi_vk_init(%struct.ra_hwdec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec*, align 8
  %4 = alloca %struct.priv_owner*, align 8
  %5 = alloca %struct.pl_gpu*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %3, align 8
  %6 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %7 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %6, i32 0, i32 1
  %8 = load %struct.priv_owner*, %struct.priv_owner** %7, align 8
  store %struct.priv_owner* %8, %struct.priv_owner** %4, align 8
  %9 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %10 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.pl_gpu* @ra_pl_get(i32 %11)
  store %struct.pl_gpu* %12, %struct.pl_gpu** %5, align 8
  %13 = load %struct.pl_gpu*, %struct.pl_gpu** %5, align 8
  %14 = icmp ne %struct.pl_gpu* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.pl_gpu*, %struct.pl_gpu** %5, align 8
  %18 = getelementptr inbounds %struct.pl_gpu, %struct.pl_gpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PL_HANDLE_DMA_BUF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %26 = call i32 @MP_VERBOSE(%struct.ra_hwdec* %25, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %36

27:                                               ; preds = %16
  %28 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %29 = call i32 @MP_VERBOSE(%struct.ra_hwdec* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @vaapi_vk_map, align 4
  %31 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %32 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @vaapi_vk_unmap, align 4
  %34 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %35 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %24, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.pl_gpu* @ra_pl_get(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.ra_hwdec*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
