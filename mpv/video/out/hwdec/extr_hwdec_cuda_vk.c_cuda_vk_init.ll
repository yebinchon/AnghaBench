; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_vk.c_cuda_vk_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_vk.c_cuda_vk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { i32, %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, i32, i32)*, i32 (%struct.TYPE_7__*, i32)*, i32 (i32*, i32)*, i32 (i32*)*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pl_gpu = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@PL_HANDLE_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"CUDA hwdec with Vulkan requires exportable texture memory of type 0x%X.\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"CUDA hwdec with Vulkan requires exportable semaphores of type 0x%X.\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"CUDA hwdec with Vulkan requires driver version 410.48 or newer.\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Could not match Vulkan display device in CUDA.\0A\00", align 1
@CU_CTX_SCHED_BLOCKING_SYNC = common dso_local global i32 0, align 4
@cuda_ext_vk_init = common dso_local global i32 0, align 4
@cuda_ext_vk_uninit = common dso_local global i32 0, align 4
@cuda_ext_vk_wait = common dso_local global i32 0, align 4
@cuda_ext_vk_signal = common dso_local global i32 0, align 4
@PL_HANDLE_WIN32 = common dso_local global i32 0, align 4
@PL_HANDLE_WIN32_KMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cuda_vk_init(%struct.ra_hwdec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cuda_hw_priv*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.pl_gpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %14 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %13, i32 0, i32 1
  %15 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %14, align 8
  store %struct.cuda_hw_priv* %15, %struct.cuda_hw_priv** %5, align 8
  %16 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %17 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %16, i32 0, i32 7
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %6, align 8
  %19 = load i32, i32* @PL_HANDLE_FD, align 4
  %20 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %21 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %23 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.pl_gpu* @ra_pl_get(i32 %24)
  store %struct.pl_gpu* %25, %struct.pl_gpu** %7, align 8
  %26 = load %struct.pl_gpu*, %struct.pl_gpu** %7, align 8
  %27 = icmp ne %struct.pl_gpu* %26, null
  br i1 %27, label %28, label %62

28:                                               ; preds = %1
  %29 = load %struct.pl_gpu*, %struct.pl_gpu** %7, align 8
  %30 = getelementptr inbounds %struct.pl_gpu, %struct.pl_gpu* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %34 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %28
  %39 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %40 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %41 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @MP_VERBOSE(%struct.ra_hwdec* %39, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %2, align 4
  br label %156

44:                                               ; preds = %28
  %45 = load %struct.pl_gpu*, %struct.pl_gpu** %7, align 8
  %46 = getelementptr inbounds %struct.pl_gpu, %struct.pl_gpu* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %50 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %56 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %57 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @MP_VERBOSE(%struct.ra_hwdec* %55, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 0, i32* %2, align 4
  br label %156

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60
  br label %63

62:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %156

63:                                               ; preds = %61
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %70 = call i32 @MP_ERR(%struct.ra_hwdec* %69, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %156

71:                                               ; preds = %63
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i32 (i32*)*, i32 (i32*)** %73, align 8
  %75 = call i32 %74(i32* %8)
  %76 = call i32 @CHECK_CU(i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %156

80:                                               ; preds = %71
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %116, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %119

85:                                               ; preds = %81
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32 (i32*, i32)*, i32 (i32*, i32)** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 %88(i32* %11, i32 %89)
  %91 = call i32 @CHECK_CU(i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %116

95:                                               ; preds = %85
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 %98(%struct.TYPE_7__* %12, i32 %99)
  %101 = call i32 @CHECK_CU(i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %116

105:                                              ; preds = %95
  %106 = load %struct.pl_gpu*, %struct.pl_gpu** %7, align 8
  %107 = getelementptr inbounds %struct.pl_gpu, %struct.pl_gpu* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @memcmp(i32 %108, i32 %110, i32 4)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %9, align 4
  br label %119

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %104, %94
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %81

119:                                              ; preds = %113, %81
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %124 = call i32 @MP_ERR(%struct.ra_hwdec* %123, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %156

125:                                              ; preds = %119
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %127, align 8
  %129 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %130 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %129, i32 0, i32 5
  %131 = load i32, i32* @CU_CTX_SCHED_BLOCKING_SYNC, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 %128(i32* %130, i32 %131, i32 %132)
  %134 = call i32 @CHECK_CU(i32 %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %156

138:                                              ; preds = %125
  %139 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %140 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %143 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* @cuda_ext_vk_init, align 4
  %145 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %146 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @cuda_ext_vk_uninit, align 4
  %148 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %149 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @cuda_ext_vk_wait, align 4
  %151 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %152 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @cuda_ext_vk_signal, align 4
  %154 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %155 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  store i32 1, i32* %2, align 4
  br label %156

156:                                              ; preds = %138, %137, %122, %79, %68, %62, %54, %38
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.pl_gpu* @ra_pl_get(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.ra_hwdec*, i8*, i32) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec*, i8*) #1

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
