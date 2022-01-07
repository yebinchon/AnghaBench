; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_expr_op.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_expr_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_expr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@debug_expr_op.op_names = internal constant [49 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"rcp\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rsq\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"nrm\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"exp2\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"log2\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"cast\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"fract\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"sin_reduced\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"cos_reduced\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dsx\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dsy\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"sat\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"pre++\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"pre--\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"post++\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"post--\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"dot\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"crs\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"lerp\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c",\00", align 1
@HLSL_IR_UNOP_CAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hlsl_ir_expr*)* @debug_expr_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_expr_op(%struct.hlsl_ir_expr* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hlsl_ir_expr*, align 8
  store %struct.hlsl_ir_expr* %0, %struct.hlsl_ir_expr** %3, align 8
  %4 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %3, align 8
  %5 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HLSL_IR_UNOP_CAST, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %3, align 8
  %11 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @debug_hlsl_type(i32 %13)
  store i8* %14, i8** %2, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %3, align 8
  %17 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds [49 x i8*], [49 x i8*]* @debug_expr_op.op_names, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %15, %9
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i8* @debug_hlsl_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
