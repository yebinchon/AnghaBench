; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_var_deref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_var_deref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_deref = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.hlsl_ir_var* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hlsl_ir_var = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@HLSL_IR_DEREF = common dso_local global i32 0, align 4
@HLSL_IR_DEREF_VAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hlsl_ir_deref* @new_var_deref(%struct.hlsl_ir_var* %0) #0 {
  %2 = alloca %struct.hlsl_ir_deref*, align 8
  %3 = alloca %struct.hlsl_ir_var*, align 8
  %4 = alloca %struct.hlsl_ir_deref*, align 8
  store %struct.hlsl_ir_var* %0, %struct.hlsl_ir_var** %3, align 8
  %5 = call %struct.hlsl_ir_deref* @d3dcompiler_alloc(i32 24)
  store %struct.hlsl_ir_deref* %5, %struct.hlsl_ir_deref** %4, align 8
  %6 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %4, align 8
  %7 = icmp ne %struct.hlsl_ir_deref* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.hlsl_ir_deref* null, %struct.hlsl_ir_deref** %2, align 8
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* @HLSL_IR_DEREF, align 4
  %12 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %4, align 8
  %13 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %3, align 8
  %16 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %4, align 8
  %19 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @HLSL_IR_DEREF_VAR, align 4
  %22 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %4, align 8
  %23 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %3, align 8
  %25 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %4, align 8
  %26 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.hlsl_ir_var* %24, %struct.hlsl_ir_var** %27, align 8
  %28 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %4, align 8
  store %struct.hlsl_ir_deref* %28, %struct.hlsl_ir_deref** %2, align 8
  br label %29

29:                                               ; preds = %10, %8
  %30 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %2, align 8
  ret %struct.hlsl_ir_deref* %30
}

declare dso_local %struct.hlsl_ir_deref* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
