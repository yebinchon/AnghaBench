; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_write_samplers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_write_samplers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwriter_shader = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.bytecode_buffer = type { i32 }

@D3DSIO_DCL = common dso_local global i32 0, align 4
@D3DSI_INSTLENGTH_SHIFT = common dso_local global i32 0, align 4
@D3DSPR_SAMPLER = common dso_local global i32 0, align 4
@D3DSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@D3DSP_TEXTURETYPE_MASK = common dso_local global i64 0, align 8
@D3DSP_REGNUM_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwriter_shader*, %struct.bytecode_buffer*)* @write_samplers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_samplers(%struct.bwriter_shader* %0, %struct.bytecode_buffer* %1) #0 {
  %3 = alloca %struct.bwriter_shader*, align 8
  %4 = alloca %struct.bytecode_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bwriter_shader* %0, %struct.bwriter_shader** %3, align 8
  store %struct.bytecode_buffer* %1, %struct.bytecode_buffer** %4, align 8
  %9 = load i32, i32* @D3DSIO_DCL, align 4
  %10 = load i32, i32* @D3DSI_INSTLENGTH_SHIFT, align 4
  %11 = shl i32 2, %10
  %12 = or i32 %9, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* @D3DSPR_SAMPLER, align 4
  %15 = call i32 @d3dsp_register(i32 %14, i32 0)
  %16 = or i32 -2147483648, %15
  %17 = load i32, i32* @D3DSP_WRITEMASK_ALL, align 4
  %18 = or i32 %16, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %69, %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %23 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %20
  %27 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @put_dword(%struct.bytecode_buffer* %27, i64 %28)
  store i64 2147483648, i64* %7, align 8
  %30 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %31 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @d3d9_sampler(i32 %36)
  %38 = load i64, i64* @D3DSP_TEXTURETYPE_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* %7, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @put_dword(%struct.bytecode_buffer* %42, i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %47 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @D3DSP_REGNUM_MASK, align 8
  %54 = and i64 %52, %53
  %55 = or i64 %45, %54
  store i64 %55, i64* %7, align 8
  %56 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  %57 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @d3d9_dstmod(i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %4, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @put_dword(%struct.bytecode_buffer* %66, i64 %67)
  br label %69

69:                                               ; preds = %26
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %20

72:                                               ; preds = %20
  ret void
}

declare dso_local i32 @d3dsp_register(i32, i32) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i64) #1

declare dso_local i64 @d3d9_sampler(i32) #1

declare dso_local i64 @d3d9_dstmod(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
