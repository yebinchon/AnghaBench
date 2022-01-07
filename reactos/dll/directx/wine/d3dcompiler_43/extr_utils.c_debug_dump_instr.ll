; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_instr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_node = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"<No dump function for %s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlsl_ir_node*)* @debug_dump_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump_instr(%struct.hlsl_ir_node* %0) #0 {
  %2 = alloca %struct.hlsl_ir_node*, align 8
  store %struct.hlsl_ir_node* %0, %struct.hlsl_ir_node** %2, align 8
  %3 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %2, align 8
  %4 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %38 [
    i32 131, label %6
    i32 132, label %10
    i32 134, label %14
    i32 135, label %18
    i32 128, label %22
    i32 133, label %26
    i32 129, label %30
    i32 130, label %34
  ]

6:                                                ; preds = %1
  %7 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %2, align 8
  %8 = call i32 @expr_from_node(%struct.hlsl_ir_node* %7)
  %9 = call i32 @debug_dump_ir_expr(i32 %8)
  br label %44

10:                                               ; preds = %1
  %11 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %2, align 8
  %12 = call i32 @deref_from_node(%struct.hlsl_ir_node* %11)
  %13 = call i32 @debug_dump_ir_deref(i32 %12)
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %2, align 8
  %16 = call i32 @constant_from_node(%struct.hlsl_ir_node* %15)
  %17 = call i32 @debug_dump_ir_constant(i32 %16)
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %2, align 8
  %20 = call i32 @assignment_from_node(%struct.hlsl_ir_node* %19)
  %21 = call i32 @debug_dump_ir_assignment(i32 %20)
  br label %44

22:                                               ; preds = %1
  %23 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %2, align 8
  %24 = call i32 @swizzle_from_node(%struct.hlsl_ir_node* %23)
  %25 = call i32 @debug_dump_ir_swizzle(i32 %24)
  br label %44

26:                                               ; preds = %1
  %27 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %2, align 8
  %28 = call i32 @constructor_from_node(%struct.hlsl_ir_node* %27)
  %29 = call i32 @debug_dump_ir_constructor(i32 %28)
  br label %44

30:                                               ; preds = %1
  %31 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %2, align 8
  %32 = call i32 @jump_from_node(%struct.hlsl_ir_node* %31)
  %33 = call i32 @debug_dump_ir_jump(i32 %32)
  br label %44

34:                                               ; preds = %1
  %35 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %2, align 8
  %36 = call i32 @if_from_node(%struct.hlsl_ir_node* %35)
  %37 = call i32 @debug_dump_ir_if(i32 %36)
  br label %44

38:                                               ; preds = %1
  %39 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %2, align 8
  %40 = getelementptr inbounds %struct.hlsl_ir_node, %struct.hlsl_ir_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @debug_node_type(i32 %41)
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %34, %30, %26, %22, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @debug_dump_ir_expr(i32) #1

declare dso_local i32 @expr_from_node(%struct.hlsl_ir_node*) #1

declare dso_local i32 @debug_dump_ir_deref(i32) #1

declare dso_local i32 @deref_from_node(%struct.hlsl_ir_node*) #1

declare dso_local i32 @debug_dump_ir_constant(i32) #1

declare dso_local i32 @constant_from_node(%struct.hlsl_ir_node*) #1

declare dso_local i32 @debug_dump_ir_assignment(i32) #1

declare dso_local i32 @assignment_from_node(%struct.hlsl_ir_node*) #1

declare dso_local i32 @debug_dump_ir_swizzle(i32) #1

declare dso_local i32 @swizzle_from_node(%struct.hlsl_ir_node*) #1

declare dso_local i32 @debug_dump_ir_constructor(i32) #1

declare dso_local i32 @constructor_from_node(%struct.hlsl_ir_node*) #1

declare dso_local i32 @debug_dump_ir_jump(i32) #1

declare dso_local i32 @jump_from_node(%struct.hlsl_ir_node*) #1

declare dso_local i32 @debug_dump_ir_if(i32) #1

declare dso_local i32 @if_from_node(%struct.hlsl_ir_node*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_node_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
