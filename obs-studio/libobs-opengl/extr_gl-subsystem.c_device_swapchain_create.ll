; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_swapchain_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_device_swapchain_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_swap_chain = type { i32, %struct.gs_init_data, i32* }
%struct.gs_init_data = type { i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"device_swapchain_create (GL) failed\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"gl_platform_init_swapchain  failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_swap_chain* @device_swapchain_create(i32* %0, %struct.gs_init_data* %1) #0 {
  %3 = alloca %struct.gs_swap_chain*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gs_init_data*, align 8
  %6 = alloca %struct.gs_swap_chain*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.gs_init_data* %1, %struct.gs_init_data** %5, align 8
  %7 = call %struct.gs_swap_chain* @bzalloc(i32 16)
  store %struct.gs_swap_chain* %7, %struct.gs_swap_chain** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %6, align 8
  %10 = getelementptr inbounds %struct.gs_swap_chain, %struct.gs_swap_chain* %9, i32 0, i32 2
  store i32* %8, i32** %10, align 8
  %11 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %6, align 8
  %12 = getelementptr inbounds %struct.gs_swap_chain, %struct.gs_swap_chain* %11, i32 0, i32 1
  %13 = load %struct.gs_init_data*, %struct.gs_init_data** %5, align 8
  %14 = bitcast %struct.gs_init_data* %12 to i8*
  %15 = bitcast %struct.gs_init_data* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.gs_init_data*, %struct.gs_init_data** %5, align 8
  %17 = call i32 @gl_windowinfo_create(%struct.gs_init_data* %16)
  %18 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %6, align 8
  %19 = getelementptr inbounds %struct.gs_swap_chain, %struct.gs_swap_chain* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %6, align 8
  %21 = getelementptr inbounds %struct.gs_swap_chain, %struct.gs_swap_chain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @LOG_ERROR, align 4
  %26 = call i32 @blog(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %6, align 8
  %28 = call i32 @gs_swapchain_destroy(%struct.gs_swap_chain* %27)
  store %struct.gs_swap_chain* null, %struct.gs_swap_chain** %3, align 8
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %6, align 8
  %31 = call i32 @gl_platform_init_swapchain(%struct.gs_swap_chain* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @LOG_ERROR, align 4
  %35 = call i32 @blog(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %6, align 8
  %37 = call i32 @gs_swapchain_destroy(%struct.gs_swap_chain* %36)
  store %struct.gs_swap_chain* null, %struct.gs_swap_chain** %3, align 8
  br label %40

38:                                               ; preds = %29
  %39 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %6, align 8
  store %struct.gs_swap_chain* %39, %struct.gs_swap_chain** %3, align 8
  br label %40

40:                                               ; preds = %38, %33, %24
  %41 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %3, align 8
  ret %struct.gs_swap_chain* %41
}

declare dso_local %struct.gs_swap_chain* @bzalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gl_windowinfo_create(%struct.gs_init_data*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @gs_swapchain_destroy(%struct.gs_swap_chain*) #1

declare dso_local i32 @gl_platform_init_swapchain(%struct.gs_swap_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
