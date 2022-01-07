; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_format_calculate_pitch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_format_calculate_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_format = type { i32*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_BLOCKS = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_HEIGHT_SCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Returning row pitch %u, slice pitch %u.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_format_calculate_pitch(%struct.wined3d_format* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.wined3d_format*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wined3d_format* %0, %struct.wined3d_format** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %16 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WINED3DFMT_FLAG_BLOCKS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %27 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add i32 %25, %28
  %30 = sub i32 %29, 1
  %31 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %32 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = udiv i32 %30, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %37 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %35, %38
  %40 = sub i32 %39, 1
  %41 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %42 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = udiv i32 %40, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %47 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = mul i32 %45, %48
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %52, %53
  %55 = sub i32 %54, 1
  %56 = load i32, i32* %8, align 4
  %57 = sub i32 %56, 1
  %58 = xor i32 %57, -1
  %59 = and i32 %55, %58
  %60 = load i32*, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = mul i32 %62, %63
  %65 = load i32*, i32** %12, align 8
  store i32 %64, i32* %65, align 4
  br label %88

66:                                               ; preds = %6
  %67 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %68 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = mul i32 %69, %70
  %72 = load i32*, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add i32 %74, %75
  %77 = sub i32 %76, 1
  %78 = load i32, i32* %8, align 4
  %79 = sub i32 %78, 1
  %80 = xor i32 %79, -1
  %81 = and i32 %77, %80
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul i32 %84, %85
  %87 = load i32*, i32** %12, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %66, %24
  %89 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %90 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @WINED3DFMT_FLAG_HEIGHT_SCALE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %88
  %99 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %100 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %103, align 4
  %105 = mul i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %107 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %110, align 4
  %112 = udiv i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %98, %88
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %117)
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
