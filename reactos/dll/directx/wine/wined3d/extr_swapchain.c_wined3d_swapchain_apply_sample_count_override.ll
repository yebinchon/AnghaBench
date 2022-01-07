; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_swapchain.c_wined3d_swapchain_apply_sample_count_override.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_swapchain.c_wined3d_swapchain_apply_sample_count_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.wined3d_swapchain = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_format = type { i32 }

@wined3d_settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@WINED3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Using sample count %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_swapchain*, i32, i32*, i64*)* @wined3d_swapchain_apply_sample_count_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_swapchain_apply_sample_count_override(%struct.wined3d_swapchain* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.wined3d_swapchain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.wined3d_format*, align 8
  %11 = alloca i32, align 4
  store %struct.wined3d_swapchain* %0, %struct.wined3d_swapchain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wined3d_settings, i32 0, i32 0), align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %57

15:                                               ; preds = %4
  %16 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.wined3d_gl_info* %21, %struct.wined3d_gl_info** %9, align 8
  %22 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %25 = call %struct.wined3d_format* @wined3d_get_format(%struct.wined3d_gl_info* %22, i32 %23, i32 %24)
  store %struct.wined3d_format* %25, %struct.wined3d_format** %10, align 8
  %26 = icmp ne %struct.wined3d_format* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  br label %57

28:                                               ; preds = %15
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wined3d_settings, i32 0, i32 0), align 4
  %30 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %31 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @min(i32 %29, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %47, %36
  %38 = load %struct.wined3d_format*, %struct.wined3d_format** %10, align 8
  %39 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub i32 %41, 1
  %43 = shl i32 1, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %37

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i64*, i64** %8, align 8
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %27, %14
  ret void
}

declare dso_local %struct.wined3d_format* @wined3d_get_format(%struct.wined3d_gl_info*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
