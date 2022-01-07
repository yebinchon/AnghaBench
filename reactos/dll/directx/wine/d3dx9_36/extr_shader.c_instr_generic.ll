; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_instr_generic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_instr_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instr_info = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@D3DSP_SRCMOD_MASK = common dso_local global i32 0, align 4
@D3DSPSM_NONE = common dso_local global i32 0, align 4
@D3DSPSM_NEG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@D3DVS_ADDRESSMODE_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.instr_info*, i32**, i8*, i32)* @instr_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @instr_generic(%struct.instr_info* %0, i32** %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.instr_info*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.instr_info* %0, %struct.instr_info** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = load %struct.instr_info*, %struct.instr_info** %5, align 8
  %14 = getelementptr inbounds %struct.instr_info, %struct.instr_info* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %9, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %9, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %20, align 8
  %23 = load %struct.instr_info*, %struct.instr_info** %5, align 8
  %24 = getelementptr inbounds %struct.instr_info, %struct.instr_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %132

27:                                               ; preds = %4
  %28 = load i8*, i8** %9, align 8
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @add_modifier(i8* %28, i32 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %128, %27
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.instr_info*, %struct.instr_info** %5, align 8
  %39 = getelementptr inbounds %struct.instr_info, %struct.instr_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %131

42:                                               ; preds = %36
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %42
  %55 = load i32**, i32*** %6, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @D3DSP_SRCMOD_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @D3DSPSM_NONE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %54
  %63 = load i32**, i32*** %6, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @D3DSP_SRCMOD_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @D3DSPSM_NEG, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i8*, i8** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %9, align 8
  br label %82

76:                                               ; preds = %62
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i8*, i8** %9, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %76, %70
  br label %83

83:                                               ; preds = %82, %54, %42
  %84 = load i8*, i8** %9, align 8
  %85 = load i32**, i32*** %6, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @add_register(i8* %84, i32 %87, i32 %90, i32 %91)
  %93 = load i8*, i8** %9, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %9, align 8
  %96 = load i32**, i32*** %6, align 8
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %96, align 8
  %99 = load i32, i32* %97, align 4
  %100 = load i32, i32* @D3DVS_ADDRESSMODE_MASK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %83
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i8*, i8** %9, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %9, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = load i32**, i32*** %6, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @FALSE, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32 @add_register(i8* %109, i32 %112, i32 %113, i32 %114)
  %116 = load i8*, i8** %9, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %9, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %121 = load i8*, i8** %9, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %9, align 8
  %124 = load i32**, i32*** %6, align 8
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %124, align 8
  br label %127

127:                                              ; preds = %103, %83
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %36

131:                                              ; preds = %36
  br label %132

132:                                              ; preds = %131, %4
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 (i8*, i8*, ...) @sprintf(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i8*, i8** %9, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %9, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i32
  ret i32 %143
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
