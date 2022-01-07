; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_if.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_if = type { i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"if (\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c")\0A{\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"else\0A{\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlsl_ir_if*)* @debug_dump_ir_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump_ir_if(%struct.hlsl_ir_if* %0) #0 {
  %2 = alloca %struct.hlsl_ir_if*, align 8
  store %struct.hlsl_ir_if* %0, %struct.hlsl_ir_if** %2, align 8
  %3 = call i32 @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.hlsl_ir_if*, %struct.hlsl_ir_if** %2, align 8
  %5 = getelementptr inbounds %struct.hlsl_ir_if, %struct.hlsl_ir_if* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @debug_dump_instr(i32 %6)
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.hlsl_ir_if*, %struct.hlsl_ir_if** %2, align 8
  %10 = getelementptr inbounds %struct.hlsl_ir_if, %struct.hlsl_ir_if* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @debug_dump_instr_list(i64 %11)
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.hlsl_ir_if*, %struct.hlsl_ir_if** %2, align 8
  %15 = getelementptr inbounds %struct.hlsl_ir_if, %struct.hlsl_ir_if* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct.hlsl_ir_if*, %struct.hlsl_ir_if** %2, align 8
  %21 = getelementptr inbounds %struct.hlsl_ir_if, %struct.hlsl_ir_if* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @debug_dump_instr_list(i64 %22)
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @debug_dump_instr(i32) #1

declare dso_local i32 @debug_dump_instr_list(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
