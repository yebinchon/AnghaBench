; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_expr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_expr = type { i64* }

@.str = private unnamed_addr constant [5 x i8] c"%s (\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlsl_ir_expr*)* @debug_dump_ir_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump_ir_expr(%struct.hlsl_ir_expr* %0) #0 {
  %2 = alloca %struct.hlsl_ir_expr*, align 8
  %3 = alloca i32, align 4
  store %struct.hlsl_ir_expr* %0, %struct.hlsl_ir_expr** %2, align 8
  %4 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %2, align 8
  %5 = call i32 @debug_expr_op(%struct.hlsl_ir_expr* %4)
  %6 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %2, align 8
  %12 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %10, %7
  %20 = phi i1 [ false, %7 ], [ %18, %10 ]
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = load %struct.hlsl_ir_expr*, %struct.hlsl_ir_expr** %2, align 8
  %23 = getelementptr inbounds %struct.hlsl_ir_expr, %struct.hlsl_ir_expr* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @debug_dump_instr(i64 %28)
  %30 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %7

34:                                               ; preds = %19
  %35 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debug_expr_op(%struct.hlsl_ir_expr*) #1

declare dso_local i32 @debug_dump_instr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
