; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_sm_3_dstreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_sm_3_dstreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i64, i32 }
%struct.shader_reg = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bytecode_buffer = type { i32 }

@BWRITERSPR_OUTPUT = common dso_local global i64 0, align 8
@D3DVS_ADDRMODE_RELATIVE = common dso_local global i32 0, align 4
@D3DVS_ADDRESSMODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Relative addressing not supported for this shader type or register type\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*, i32, i32)* @sm_3_dstreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm_3_dstreg(%struct.bc_writer* %0, %struct.shader_reg* %1, %struct.bytecode_buffer* %2, i32 %3, i32 %4) #0 {
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
  %14 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %5
  %18 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %19 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @BWRITERVS_VERSION(i32 3, i32 0)
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %25 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BWRITERSPR_OUTPUT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @D3DVS_ADDRMODE_RELATIVE, align 4
  %31 = load i32, i32* @D3DVS_ADDRESSMODE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %40

35:                                               ; preds = %23, %17
  %36 = call i32 @WARN(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @E_INVALIDARG, align 4
  %38 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %39 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %78

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %5
  %42 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %43 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @d3d9_register(i64 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %48 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @d3dsp_register(i32 %46, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @d3d9_dstmod(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %58 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @d3d9_writemask(i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @put_dword(%struct.bytecode_buffer* %64, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @D3DVS_ADDRMODE_RELATIVE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %41
  %72 = load %struct.bc_writer*, %struct.bc_writer** %6, align 8
  %73 = load %struct.shader_reg*, %struct.shader_reg** %7, align 8
  %74 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %8, align 8
  %77 = call i32 @sm_3_srcreg(%struct.bc_writer* %72, i64 %75, %struct.bytecode_buffer* %76)
  br label %78

78:                                               ; preds = %35, %71, %41
  ret void
}

declare dso_local i64 @BWRITERVS_VERSION(i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @d3d9_register(i64) #1

declare dso_local i32 @d3dsp_register(i32, i32) #1

declare dso_local i32 @d3d9_dstmod(i32) #1

declare dso_local i32 @d3d9_writemask(i32) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i32) #1

declare dso_local i32 @sm_3_srcreg(%struct.bc_writer*, i64, %struct.bytecode_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
