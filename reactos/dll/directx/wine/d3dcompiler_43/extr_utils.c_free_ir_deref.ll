; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_free_ir_deref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_free_ir_deref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_deref = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlsl_ir_deref*)* @free_ir_deref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_ir_deref(%struct.hlsl_ir_deref* %0) #0 {
  %2 = alloca %struct.hlsl_ir_deref*, align 8
  store %struct.hlsl_ir_deref* %0, %struct.hlsl_ir_deref** %2, align 8
  %3 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %2, align 8
  %4 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %27 [
    i32 128, label %6
    i32 130, label %7
    i32 129, label %20
  ]

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  %8 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %2, align 8
  %9 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @free_instr(i32 %12)
  %14 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %2, align 8
  %15 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @free_instr(i32 %18)
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %2, align 8
  %22 = getelementptr inbounds %struct.hlsl_ir_deref, %struct.hlsl_ir_deref* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @free_instr(i32 %25)
  br label %27

27:                                               ; preds = %1, %20, %7, %6
  %28 = load %struct.hlsl_ir_deref*, %struct.hlsl_ir_deref** %2, align 8
  %29 = call i32 @d3dcompiler_free(%struct.hlsl_ir_deref* %28)
  ret void
}

declare dso_local i32 @free_instr(i32) #1

declare dso_local i32 @d3dcompiler_free(%struct.hlsl_ir_deref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
