; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_jump.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_jump = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlsl_ir_jump*)* @debug_dump_ir_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump_ir_jump(%struct.hlsl_ir_jump* %0) #0 {
  %2 = alloca %struct.hlsl_ir_jump*, align 8
  store %struct.hlsl_ir_jump* %0, %struct.hlsl_ir_jump** %2, align 8
  %3 = load %struct.hlsl_ir_jump*, %struct.hlsl_ir_jump** %2, align 8
  %4 = getelementptr inbounds %struct.hlsl_ir_jump, %struct.hlsl_ir_jump* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %25 [
    i32 131, label %6
    i32 130, label %8
    i32 129, label %10
    i32 128, label %12
  ]

6:                                                ; preds = %1
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %25

8:                                                ; preds = %1
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %25

10:                                               ; preds = %1
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %25

12:                                               ; preds = %1
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %14 = load %struct.hlsl_ir_jump*, %struct.hlsl_ir_jump** %2, align 8
  %15 = getelementptr inbounds %struct.hlsl_ir_jump, %struct.hlsl_ir_jump* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.hlsl_ir_jump*, %struct.hlsl_ir_jump** %2, align 8
  %20 = getelementptr inbounds %struct.hlsl_ir_jump, %struct.hlsl_ir_jump* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @debug_dump_instr(i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %25

25:                                               ; preds = %1, %23, %10, %8, %6
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @debug_dump_instr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
