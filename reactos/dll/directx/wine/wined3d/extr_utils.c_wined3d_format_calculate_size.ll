; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_format_calculate_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_format_calculate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_format = type { i64, i32*, i32 }

@WINED3DFMT_UNKNOWN = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_BROKEN_PITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_format_calculate_size(%struct.wined3d_format* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wined3d_format* %0, %struct.wined3d_format** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %15 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WINED3DFMT_UNKNOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %49

20:                                               ; preds = %5
  %21 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %22 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WINED3DFMT_FLAG_BROKEN_PITCH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = mul i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = mul i32 %33, %34
  %36 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %37 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = mul i32 %35, %38
  store i32 %39, i32* %6, align 4
  br label %49

40:                                               ; preds = %20
  %41 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @wined3d_format_calculate_pitch(%struct.wined3d_format* %41, i32 %42, i32 %43, i32 %44, i32* %12, i32* %13)
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul i32 %46, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %40, %30, %19
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @wined3d_format_calculate_pitch(%struct.wined3d_format*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
