; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_swapchain.c_wined3d_swapchain_update_swap_interval_cs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_swapchain.c_wined3d_swapchain_update_swap_interval_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_swapchain = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_gl_info = type { i64* }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }

@.str = private unnamed_addr constant [33 x i8] c"Unhandled present interval %#x.\0A\00", align 1
@WGL_EXT_SWAP_CONTROL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"wglSwapIntervalEXT failed to set swap interval %d for context %p, last error %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wined3d_swapchain_update_swap_interval_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_swapchain_update_swap_interval_cs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wined3d_swapchain*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.wined3d_swapchain*
  store %struct.wined3d_swapchain* %8, %struct.wined3d_swapchain** %3, align 8
  %9 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %13 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wined3d_context* @context_acquire(i32 %11, i32 %14, i32 0)
  store %struct.wined3d_context* %15, %struct.wined3d_context** %5, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 0
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  store %struct.wined3d_gl_info* %18, %struct.wined3d_gl_info** %4, align 8
  %19 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %20 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %28 [
    i32 131, label %23
    i32 133, label %24
    i32 130, label %24
    i32 128, label %25
    i32 129, label %26
    i32 132, label %27
  ]

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %34

24:                                               ; preds = %1, %1
  store i32 1, i32* %6, align 4
  br label %34

25:                                               ; preds = %1
  store i32 2, i32* %6, align 4
  br label %34

26:                                               ; preds = %1
  store i32 3, i32* %6, align 4
  br label %34

27:                                               ; preds = %1
  store i32 4, i32* %6, align 4
  br label %34

28:                                               ; preds = %1
  %29 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %30 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %27, %26, %25, %24, %23
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %36 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @WGL_EXT_SWAP_CONTROL, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @wglSwapIntervalEXT(i32 %43)
  %45 = call i32 @GL_EXTCALL(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 @ERR(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %48, %struct.wined3d_context* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %55 = call i32 @context_release(%struct.wined3d_context* %54)
  ret void
}

declare dso_local %struct.wined3d_context* @context_acquire(i32, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @wglSwapIntervalEXT(i32) #1

declare dso_local i32 @ERR(i8*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
