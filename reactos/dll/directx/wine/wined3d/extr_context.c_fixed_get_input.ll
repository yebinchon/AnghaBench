; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_fixed_get_input.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_fixed_get_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WINED3D_DECL_USAGE_POSITION = common dso_local global i64 0, align 8
@WINED3D_DECL_USAGE_POSITIONT = common dso_local global i64 0, align 8
@WINED3D_FFP_POSITION = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_BLEND_WEIGHT = common dso_local global i64 0, align 8
@WINED3D_FFP_BLENDWEIGHT = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_BLEND_INDICES = common dso_local global i64 0, align 8
@WINED3D_FFP_BLENDINDICES = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_NORMAL = common dso_local global i64 0, align 8
@WINED3D_FFP_NORMAL = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_PSIZE = common dso_local global i64 0, align 8
@WINED3D_FFP_PSIZE = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_COLOR = common dso_local global i64 0, align 8
@WINED3D_FFP_DIFFUSE = common dso_local global i32 0, align 4
@WINED3D_FFP_SPECULAR = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_TEXCOORD = common dso_local global i64 0, align 8
@WINED3DDP_MAXTEXCOORD = common dso_local global i64 0, align 8
@WINED3D_FFP_TEXCOORD0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Unsupported input stream [usage=%s, usage_idx=%u].\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*)* @fixed_get_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixed_get_input(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @WINED3D_DECL_USAGE_POSITION, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @WINED3D_DECL_USAGE_POSITIONT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @WINED3D_FFP_POSITION, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %109

21:                                               ; preds = %15, %11
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @WINED3D_DECL_USAGE_BLEND_WEIGHT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @WINED3D_FFP_BLENDWEIGHT, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %108

31:                                               ; preds = %25, %21
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @WINED3D_DECL_USAGE_BLEND_INDICES, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @WINED3D_FFP_BLENDINDICES, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %107

41:                                               ; preds = %35, %31
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @WINED3D_DECL_USAGE_NORMAL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @WINED3D_FFP_NORMAL, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %106

51:                                               ; preds = %45, %41
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @WINED3D_DECL_USAGE_PSIZE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @WINED3D_FFP_PSIZE, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %105

61:                                               ; preds = %55, %51
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @WINED3D_DECL_USAGE_COLOR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @WINED3D_FFP_DIFFUSE, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %104

71:                                               ; preds = %65, %61
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @WINED3D_DECL_USAGE_COLOR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i64, i64* %6, align 8
  %77 = icmp eq i64 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @WINED3D_FFP_SPECULAR, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  br label %103

81:                                               ; preds = %75, %71
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @WINED3D_DECL_USAGE_TEXCOORD, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @WINED3DDP_MAXTEXCOORD, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i64, i64* @WINED3D_FFP_TEXCOORD0, align 8
  %91 = load i64, i64* %6, align 8
  %92 = add nsw i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  br label %102

95:                                               ; preds = %85, %81
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @debug_d3ddeclusage(i64 %96)
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %97, i64 %98)
  %100 = load i32*, i32** %7, align 8
  store i32 -1, i32* %100, align 4
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %4, align 4
  br label %111

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %68
  br label %105

105:                                              ; preds = %104, %58
  br label %106

106:                                              ; preds = %105, %48
  br label %107

107:                                              ; preds = %106, %38
  br label %108

108:                                              ; preds = %107, %28
  br label %109

109:                                              ; preds = %108, %18
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %95
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @WARN(i8*, i32, i64) #1

declare dso_local i32 @debug_d3ddeclusage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
