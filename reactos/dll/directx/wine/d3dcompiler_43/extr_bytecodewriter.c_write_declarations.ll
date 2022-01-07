; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_write_declarations.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_write_declarations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*, i32, i32)* }
%struct.shader_reg = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bytecode_buffer = type { i32 }
%struct.declaration = type { i32, i32, i32, i32, i32, i64 }

@D3DSIO_DCL = common dso_local global i32 0, align 4
@D3DSI_INSTLENGTH_SHIFT = common dso_local global i32 0, align 4
@D3DSP_DCL_USAGE_SHIFT = common dso_local global i32 0, align 4
@D3DSP_DCL_USAGE_MASK = common dso_local global i32 0, align 4
@D3DSP_DCL_USAGEINDEX_SHIFT = common dso_local global i32 0, align 4
@D3DSP_DCL_USAGEINDEX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.bytecode_buffer*, i64, %struct.declaration*, i32, i32)* @write_declarations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_declarations(%struct.bc_writer* %0, %struct.bytecode_buffer* %1, i64 %2, %struct.declaration* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bc_writer*, align 8
  %8 = alloca %struct.bytecode_buffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.declaration*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.shader_reg, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %7, align 8
  store %struct.bytecode_buffer* %1, %struct.bytecode_buffer** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.declaration* %3, %struct.declaration** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @D3DSIO_DCL, align 4
  store i32 %17, i32* %14, align 4
  %18 = call i32 @ZeroMemory(%struct.shader_reg* %16, i32 12)
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %6
  %22 = load i32, i32* @D3DSI_INSTLENGTH_SHIFT, align 4
  %23 = shl i32 2, %22
  %24 = load i32, i32* %14, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %14, align 4
  br label %26

26:                                               ; preds = %21, %6
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %102, %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %105

31:                                               ; preds = %27
  %32 = load %struct.declaration*, %struct.declaration** %10, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.declaration, %struct.declaration* %32, i64 %34
  %36 = getelementptr inbounds %struct.declaration, %struct.declaration* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %102

40:                                               ; preds = %31
  %41 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @put_dword(%struct.bytecode_buffer* %41, i32 %42)
  store i32 -2147483648, i32* %15, align 4
  %44 = load %struct.declaration*, %struct.declaration** %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.declaration, %struct.declaration* %44, i64 %46
  %48 = getelementptr inbounds %struct.declaration, %struct.declaration* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @D3DSP_DCL_USAGE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* @D3DSP_DCL_USAGE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %15, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load %struct.declaration*, %struct.declaration** %10, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.declaration, %struct.declaration* %56, i64 %58
  %60 = getelementptr inbounds %struct.declaration, %struct.declaration* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @D3DSP_DCL_USAGEINDEX_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* @D3DSP_DCL_USAGEINDEX_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %15, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %15, align 4
  %68 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %8, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @put_dword(%struct.bytecode_buffer* %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %16, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load %struct.declaration*, %struct.declaration** %10, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.declaration, %struct.declaration* %73, i64 %75
  %77 = getelementptr inbounds %struct.declaration, %struct.declaration* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %16, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.declaration*, %struct.declaration** %10, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.declaration, %struct.declaration* %80, i64 %82
  %84 = getelementptr inbounds %struct.declaration, %struct.declaration* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %16, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.bc_writer*, %struct.bc_writer** %7, align 8
  %89 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*, i32, i32)** %91, align 8
  %93 = load %struct.bc_writer*, %struct.bc_writer** %7, align 8
  %94 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %8, align 8
  %95 = load %struct.declaration*, %struct.declaration** %10, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.declaration, %struct.declaration* %95, i64 %97
  %99 = getelementptr inbounds %struct.declaration, %struct.declaration* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 %92(%struct.bc_writer* %93, %struct.shader_reg* %16, %struct.bytecode_buffer* %94, i32 0, i32 %100)
  br label %102

102:                                              ; preds = %40, %39
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %27

105:                                              ; preds = %27
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.shader_reg*, i32) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
