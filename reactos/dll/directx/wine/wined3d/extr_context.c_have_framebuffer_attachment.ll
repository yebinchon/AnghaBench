; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_have_framebuffer_attachment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_have_framebuffer_attachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_rendertarget_view = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@WINED3DFMT_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*)* @have_framebuffer_attachment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @have_framebuffer_attachment(i32 %0, %struct.wined3d_rendertarget_view** %1, %struct.wined3d_rendertarget_view* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_rendertarget_view**, align 8
  %7 = alloca %struct.wined3d_rendertarget_view*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.wined3d_rendertarget_view** %1, %struct.wined3d_rendertarget_view*** %6, align 8
  store %struct.wined3d_rendertarget_view* %2, %struct.wined3d_rendertarget_view** %7, align 8
  %9 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %7, align 8
  %10 = icmp ne %struct.wined3d_rendertarget_view* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %4, align 4
  br label %45

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %40, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %19, i64 %21
  %23 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %22, align 8
  %24 = icmp ne %struct.wined3d_rendertarget_view* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load %struct.wined3d_rendertarget_view**, %struct.wined3d_rendertarget_view*** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %26, i64 %28
  %30 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %29, align 8
  %31 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WINED3DFMT_NULL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %25, %18
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %37, %11
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
