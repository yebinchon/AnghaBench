; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_1_4_dstreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_1_4_dstreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i8* }
%struct.shader_reg = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bytecode_buffer = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Relative addressing not supported for destination registers\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid dest register type for 1.x pshader\0A\00", align 1
@D3DSP_DSTSHIFT_SHIFT = common dso_local global i32 0, align 4
@D3DSP_DSTSHIFT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*, i32, i32)* @ps_1_4_dstreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_1_4_dstreg(%struct.bc_writer* %0, %struct.shader_reg* %1, %struct.bytecode_buffer* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bc_writer*, align 8
  %7 = alloca %struct.shader_reg*, align 8
  %8 = alloca %struct.bytecode_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %6, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %7, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 -2147483648, i32* %11, align 4
  %12 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %13 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = call i32 @WARN(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** @E_INVALIDARG, align 8
  %19 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %20 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %68

21:                                               ; preds = %5
  %22 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %23 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %41 [
    i32 128, label %25
    i32 129, label %35
  ]

25:                                               ; preds = %21
  %26 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %27 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %30 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @d3dsp_register(i32 %28, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %46

35:                                               ; preds = %21
  %36 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %37 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %38 = call i32 @map_ps_input(%struct.bc_writer* %36, %struct.shader_reg* %37)
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %46

41:                                               ; preds = %21
  %42 = call i32 @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** @E_INVALIDARG, align 8
  %44 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %45 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %68

46:                                               ; preds = %35, %25
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @D3DSP_DSTSHIFT_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @D3DSP_DSTSHIFT_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @d3d9_dstmod(i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %59 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @d3d9_writemask(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  %65 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @put_dword(%struct.bytecode_buffer* %65, i32 %66)
  br label %68

68:                                               ; preds = %46, %41, %16
  ret void
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @d3dsp_register(i32, i32) #1

declare dso_local i32 @map_ps_input(%struct.bc_writer*, %struct.shader_reg*) #1

declare dso_local i32 @d3d9_dstmod(i32) #1

declare dso_local i32 @d3d9_writemask(i32) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
