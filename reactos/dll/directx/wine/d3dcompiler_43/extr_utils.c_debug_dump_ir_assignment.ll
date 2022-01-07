; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_assignment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_assignment = type { i64, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"= (\00", align 1
@BWRITERSP_WRITEMASK_ALL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlsl_ir_assignment*)* @debug_dump_ir_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump_ir_assignment(%struct.hlsl_ir_assignment* %0) #0 {
  %2 = alloca %struct.hlsl_ir_assignment*, align 8
  store %struct.hlsl_ir_assignment* %0, %struct.hlsl_ir_assignment** %2, align 8
  %3 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %2, align 8
  %5 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @debug_dump_instr(i32 %6)
  %8 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %2, align 8
  %9 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BWRITERSP_WRITEMASK_ALL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %2, align 8
  %15 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @debug_writemask(i64 %16)
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.hlsl_ir_assignment*, %struct.hlsl_ir_assignment** %2, align 8
  %22 = getelementptr inbounds %struct.hlsl_ir_assignment, %struct.hlsl_ir_assignment* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @debug_dump_instr(i32 %23)
  %25 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debug_dump_instr(i32) #1

declare dso_local i32 @debug_writemask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
