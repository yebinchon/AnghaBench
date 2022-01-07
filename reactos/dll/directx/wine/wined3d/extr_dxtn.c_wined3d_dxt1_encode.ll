; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_dxtn.c_wined3d_dxt1_encode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_dxtn.c_wined3d_dxt1_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@txc_dxtn_handle = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GL_COMPRESSED_RGB_S3TC_DXT1_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Cannot find a conversion function from format %s to DXT1.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_dxt1_encode(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* @txc_dxtn_handle, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %8, align 4
  br label %68

20:                                               ; preds = %7
  %21 = load i32, i32* %13, align 4
  switch i32 %21, label %62 [
    i32 129, label %22
    i32 128, label %32
    i32 131, label %42
    i32 130, label %52
  ]

22:                                               ; preds = %20
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @GL_COMPRESSED_RGBA_S3TC_DXT1_EXT, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @x8r8g8b8_to_dxtn(i32* %23, i32* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %68

32:                                               ; preds = %20
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @GL_COMPRESSED_RGB_S3TC_DXT1_EXT, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @x8r8g8b8_to_dxtn(i32* %33, i32* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %68

42:                                               ; preds = %20
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @GL_COMPRESSED_RGBA_S3TC_DXT1_EXT, align 4
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @x1r5g5b5_to_dxtn(i32* %43, i32* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %68

52:                                               ; preds = %20
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @GL_COMPRESSED_RGB_S3TC_DXT1_EXT, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i32 @x1r5g5b5_to_dxtn(i32* %53, i32* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  br label %68

62:                                               ; preds = %20
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @debug_d3dformat(i32 %64)
  %66 = call i32 @FIXME(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %63, %52, %42, %32, %22, %18
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @x8r8g8b8_to_dxtn(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @x1r5g5b5_to_dxtn(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
