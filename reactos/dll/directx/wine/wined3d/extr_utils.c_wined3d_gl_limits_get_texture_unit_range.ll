; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_gl_limits_get_texture_unit_range.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_gl_limits_get_texture_unit_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_limits = type { i32, i32, i32* }

@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_GRAPHICS_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unrecognized shader type %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_gl_limits_get_texture_unit_range(%struct.wined3d_gl_limits* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.wined3d_gl_limits*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.wined3d_gl_limits* %0, %struct.wined3d_gl_limits** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %4
  %14 = load %struct.wined3d_gl_limits*, %struct.wined3d_gl_limits** %5, align 8
  %15 = getelementptr inbounds %struct.wined3d_gl_limits, %struct.wined3d_gl_limits* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.wined3d_gl_limits*, %struct.wined3d_gl_limits** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_gl_limits, %struct.wined3d_gl_limits* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  br label %28

23:                                               ; preds = %13
  %24 = load %struct.wined3d_gl_limits*, %struct.wined3d_gl_limits** %5, align 8
  %25 = getelementptr inbounds %struct.wined3d_gl_limits, %struct.wined3d_gl_limits* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %21
  %29 = load %struct.wined3d_gl_limits*, %struct.wined3d_gl_limits** %5, align 8
  %30 = getelementptr inbounds %struct.wined3d_gl_limits, %struct.wined3d_gl_limits* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %69

37:                                               ; preds = %4
  %38 = load i32*, i32** %7, align 8
  store i32 0, i32* %38, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %62, %37
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @WINED3D_SHADER_TYPE_GRAPHICS_COUNT, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load %struct.wined3d_gl_limits*, %struct.wined3d_gl_limits** %5, align 8
  %45 = getelementptr inbounds %struct.wined3d_gl_limits, %struct.wined3d_gl_limits* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %69

56:                                               ; preds = %43
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %39

65:                                               ; preds = %39
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %8, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %55, %28
  ret void
}

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
