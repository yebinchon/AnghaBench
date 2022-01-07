; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_2_0_dstreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_ps_2_0_dstreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i8*, i32 }
%struct.shader_reg = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.bytecode_buffer = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Relative addressing not supported for destination registers\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Predicate register not supported in ps_2_0\0A\00", align 1
@D3DSPR_PREDICATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid dest register type for 2.x pshader\0A\00", align 1
@D3DSP_DSTSHIFT_SHIFT = common dso_local global i32 0, align 4
@D3DSP_DSTSHIFT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*, i32, i32)* @ps_2_0_dstreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_2_0_dstreg(%struct.bc_writer* %0, %struct.shader_reg* %1, %struct.bytecode_buffer* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bc_writer*, align 8
  %7 = alloca %struct.shader_reg*, align 8
  %8 = alloca %struct.bytecode_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %6, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %7, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 -2147483648, i32* %11, align 4
  %13 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %14 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = call i32 @WARN(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** @E_INVALIDARG, align 8
  %20 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %21 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  br label %90

22:                                               ; preds = %5
  %23 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %24 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %63 [
    i32 128, label %26
    i32 132, label %26
    i32 131, label %26
    i32 129, label %38
    i32 130, label %57
  ]

26:                                               ; preds = %22, %22, %22
  %27 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %28 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @d3d9_register(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %33 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @d3dsp_register(i32 %31, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %68

38:                                               ; preds = %22
  %39 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %40 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @BWRITERPS_VERSION(i32 2, i32 1)
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = call i32 @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8*, i8** @E_INVALIDARG, align 8
  %47 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %48 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %38
  %50 = load i32, i32* @D3DSPR_PREDICATE, align 4
  %51 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %52 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @d3dsp_register(i32 %50, i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %68

57:                                               ; preds = %22
  %58 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %59 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %60 = call i32 @map_ps_input(%struct.bc_writer* %58, %struct.shader_reg* %59)
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %68

63:                                               ; preds = %22
  %64 = call i32 @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i8*, i8** @E_INVALIDARG, align 8
  %66 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %67 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %90

68:                                               ; preds = %57, %49, %26
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @D3DSP_DSTSHIFT_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* @D3DSP_DSTSHIFT_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @d3d9_dstmod(i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %81 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @d3d9_writemask(i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @put_dword(%struct.bytecode_buffer* %87, i32 %88)
  br label %90

90:                                               ; preds = %68, %63, %17
  ret void
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @d3d9_register(i32) #1

declare dso_local i32 @d3dsp_register(i32, i32) #1

declare dso_local i32 @BWRITERPS_VERSION(i32, i32) #1

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
