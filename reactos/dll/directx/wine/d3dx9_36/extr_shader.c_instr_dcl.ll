; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_instr_dcl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_instr_dcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instr_info = type { i32 }

@D3DSP_DCL_USAGE_MASK = common dso_local global i32 0, align 4
@D3DSP_DCL_USAGE_SHIFT = common dso_local global i32 0, align 4
@D3DSP_DCL_USAGEINDEX_MASK = common dso_local global i32 0, align 4
@D3DSP_DCL_USAGEINDEX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"    dcl\00", align 1
@D3DSP_TEXTURETYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"_%s\00", align 1
@D3DSTT_VOLUME = common dso_local global i32 0, align 4
@tex_type = common dso_local global i8** null, align 8
@D3DSP_TEXTURETYPE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@D3DDECLUSAGE_COLOR = common dso_local global i32 0, align 4
@decl_usage = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.instr_info*, i32**, i8*, i64)* @instr_dcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @instr_dcl(%struct.instr_info* %0, i32** %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.instr_info*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.instr_info* %0, %struct.instr_info** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %14, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %18, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @D3DSP_DCL_USAGE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @D3DSP_DCL_USAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @D3DSP_DCL_USAGEINDEX_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @D3DSP_DCL_USAGEINDEX_SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i8*, i8** %7, align 8
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %13, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %13, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @D3DSP_TEXTURETYPE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %40
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @D3DSTT_VOLUME, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i8**, i8*** @tex_type, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @D3DSP_TEXTURETYPE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @D3DSP_TEXTURETYPE_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %51, i64 %57
  %59 = load i8*, i8** %58, align 8
  br label %61

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %50
  %62 = phi i8* [ %59, %50 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %60 ]
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i8*, i8** %13, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %13, align 8
  br label %67

67:                                               ; preds = %61, %40
  br label %96

68:                                               ; preds = %4
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @D3DDECLUSAGE_COLOR, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i8**, i8*** @decl_usage, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  br label %80

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi i8* [ %78, %73 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %79 ]
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %13, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %13, align 8
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i8*, i8** %13, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %13, align 8
  br label %95

95:                                               ; preds = %88, %80
  br label %96

96:                                               ; preds = %95, %67
  %97 = load i8*, i8** %13, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @add_modifier(i8* %97, i32 %98)
  %100 = load i8*, i8** %13, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %13, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i8*, i8** %13, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %13, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @TRUE, align 4
  %111 = load i32, i32* @TRUE, align 4
  %112 = call i32 @add_register(i8* %108, i32 %109, i32 %110, i32 %111)
  %113 = load i8*, i8** %13, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %13, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i8*, i8** %13, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %13, align 8
  %121 = load i32**, i32*** %6, align 8
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %121, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  ret i32 %129
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @add_modifier(i8*, i32) #1

declare dso_local i32 @add_register(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
