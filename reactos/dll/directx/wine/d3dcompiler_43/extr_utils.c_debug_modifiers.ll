; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_modifiers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HLSL_STORAGE_EXTERN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c" extern\00", align 1
@HLSL_STORAGE_NOINTERPOLATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c" nointerpolation\00", align 1
@HLSL_MODIFIER_PRECISE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" precise\00", align 1
@HLSL_STORAGE_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" shared\00", align 1
@HLSL_STORAGE_GROUPSHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c" groupshared\00", align 1
@HLSL_STORAGE_STATIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c" static\00", align 1
@HLSL_STORAGE_UNIFORM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c" uniform\00", align 1
@HLSL_STORAGE_VOLATILE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@HLSL_MODIFIER_CONST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@HLSL_MODIFIER_ROW_MAJOR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c" row_major\00", align 1
@HLSL_MODIFIER_COLUMN_MAJOR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c" column_major\00", align 1
@HLSL_MODIFIER_IN = common dso_local global i32 0, align 4
@HLSL_MODIFIER_OUT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c" inout\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" in\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" out\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debug_modifiers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [110 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %4, align 16
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @HLSL_STORAGE_EXTERN, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %11 = call i32 @strcat(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @HLSL_STORAGE_NOINTERPOLATION, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %19 = call i32 @strcat(i8* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @HLSL_MODIFIER_PRECISE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %27 = call i32 @strcat(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @HLSL_STORAGE_SHARED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %35 = call i32 @strcat(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @HLSL_STORAGE_GROUPSHARED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %43 = call i32 @strcat(i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @HLSL_STORAGE_STATIC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %51 = call i32 @strcat(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @HLSL_STORAGE_UNIFORM, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @HLSL_STORAGE_VOLATILE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %67 = call i32 @strcat(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @HLSL_MODIFIER_CONST, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %75 = call i32 @strcat(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @HLSL_MODIFIER_ROW_MAJOR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %83 = call i32 @strcat(i8* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @HLSL_MODIFIER_COLUMN_MAJOR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %91 = call i32 @strcat(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @HLSL_MODIFIER_IN, align 4
  %95 = load i32, i32* @HLSL_MODIFIER_OUT, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = load i32, i32* @HLSL_MODIFIER_IN, align 4
  %99 = load i32, i32* @HLSL_MODIFIER_OUT, align 4
  %100 = or i32 %98, %99
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %104 = call i32 @strcat(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %123

105:                                              ; preds = %92
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @HLSL_MODIFIER_IN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %112 = call i32 @strcat(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %122

113:                                              ; preds = %105
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* @HLSL_MODIFIER_OUT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %120 = call i32 @strcat(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %113
  br label %122

122:                                              ; preds = %121, %110
  br label %123

123:                                              ; preds = %122, %102
  %124 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %125 = load i8, i8* %124, align 16
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = getelementptr inbounds [110 x i8], [110 x i8]* %3, i64 0, i64 0
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  br label %132

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %128
  %133 = phi i8* [ %130, %128 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %131 ]
  %134 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %133)
  ret i8* %134
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
