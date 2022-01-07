; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_1_0123_dstreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_1_0123_dstreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i8* }
%struct.shader_reg = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bytecode_buffer = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Relative addressing not supported for destination registers\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid dest register type for 1.x pshader\0A\00", align 1
@D3DSP_DSTSHIFT_SHIFT = common dso_local global i32 0, align 4
@D3DSP_DSTSHIFT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*, i32, i32)* @ps_1_0123_dstreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_1_0123_dstreg(%struct.bc_writer* %0, %struct.shader_reg* %1, %struct.bytecode_buffer* %2, i32 %3, i32 %4) #0 {
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
  %13 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = call i32 @WARN(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** @E_INVALIDARG, align 8
  %19 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %20 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %64

21:                                               ; preds = %5
  %22 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %23 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %37 [
    i32 128, label %25
    i32 129, label %31
  ]

25:                                               ; preds = %21
  %26 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %27 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %28 = call i32 @map_ps13_temp(%struct.bc_writer* %26, %struct.shader_reg* %27)
  %29 = load i32, i32* %11, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %11, align 4
  br label %42

31:                                               ; preds = %21
  %32 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %33 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %34 = call i32 @map_ps_input(%struct.bc_writer* %32, %struct.shader_reg* %33)
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %42

37:                                               ; preds = %21
  %38 = call i32 @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** @E_INVALIDARG, align 8
  %40 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %41 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %64

42:                                               ; preds = %31, %25
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @D3DSP_DSTSHIFT_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @D3DSP_DSTSHIFT_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @d3d9_dstmod(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %55 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @d3d9_writemask(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @put_dword(%struct.bytecode_buffer* %61, i32 %62)
  br label %64

64:                                               ; preds = %42, %37, %16
  ret void
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @map_ps13_temp(%struct.bc_writer*, %struct.shader_reg*) #1

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
