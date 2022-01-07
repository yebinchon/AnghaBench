; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_record_deref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_record_deref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_deref = type { %struct.TYPE_5__, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hlsl_struct_field*, %struct.hlsl_ir_node* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.hlsl_ir_node = type { i32 }
%struct.hlsl_struct_field = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@HLSL_IR_DEREF = common dso_local global i32 0, align 4
@HLSL_IR_DEREF_RECORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hlsl_ir_deref* @new_record_deref(%struct.hlsl_ir_node* %0, %struct.hlsl_struct_field* %1) #0 {
  %3 = alloca %struct.hlsl_ir_deref*, align 8
  %4 = alloca %struct.hlsl_ir_node*, align 8
  %5 = alloca %struct.hlsl_struct_field*, align 8
  %6 = alloca %struct.hlsl_ir_deref*, align 8
  store %struct.hlsl_ir_node* %0, %struct.hlsl_ir_node** %4, align 8
  store %struct.hlsl_struct_field* %1, %struct.hlsl_struct_field** %5, align 8
  %7 = call %struct.hlsl_ir_deref* @d3dcompiler_alloc(i32 32)
  store %struct.hlsl_ir_deref* %7, %struct.hlsl_ir_deref** %6, align 8
  %8 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %6, align 8
  %9 = icmp ne %struct.hlsl_ir_deref* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.hlsl_ir_deref* null, %struct.hlsl_ir_deref** %3, align 8
  br label %37

12:                                               ; preds = %2
  %13 = load i32, i32* @HLSL_IR_DEREF, align 4
  %14 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %6, align 8
  %15 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.hlsl_struct_field*, %struct.hlsl_struct_field** %5, align 8
  %18 = getelementptr inbounds %struct.hlsl_struct_field, %struct.hlsl_struct_field* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %6, align 8
  %21 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @HLSL_IR_DEREF_RECORD, align 4
  %24 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %6, align 8
  %25 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.hlsl_ir_node*, %struct.hlsl_ir_node** %4, align 8
  %27 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %6, align 8
  %28 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store %struct.hlsl_ir_node* %26, %struct.hlsl_ir_node** %30, align 8
  %31 = load %struct.hlsl_struct_field*, %struct.hlsl_struct_field** %5, align 8
  %32 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %6, align 8
  %33 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.hlsl_struct_field* %31, %struct.hlsl_struct_field** %35, align 8
  %36 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %6, align 8
  store %struct.hlsl_ir_deref* %36, %struct.hlsl_ir_deref** %3, align 8
  br label %37

37:                                               ; preds = %12, %10
  %38 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %3, align 8
  ret %struct.hlsl_ir_deref* %38
}

declare dso_local %struct.hlsl_ir_deref* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
