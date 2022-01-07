; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_instr_ps_1_4_texld.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_instr_ps_1_4_texld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { i32 (%struct.bc_writer*, %struct.TYPE_5__*, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.TYPE_6__*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.instruction = type { %struct.TYPE_5__*, i32, i32, %struct.TYPE_6__ }
%struct.bytecode_buffer = type { i32 }

@BWRITERSPR_SAMPLER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Unsupported sampler type %u regnum %u\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@BWRITERSPR_TEMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Can only sample into a temp register\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Sampling from sampler s%u to register r%u is not possible in ps_1_4\0A\00", align 1
@D3DSIO_TEX = common dso_local global i32 0, align 4
@D3DSI_OPCODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)* @instr_ps_1_4_texld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instr_ps_1_4_texld(%struct.bc_writer* %0, %struct.instruction* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.instruction*, align 8
  %6 = alloca %struct.bytecode_buffer*, align 8
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.instruction* %1, %struct.instruction** %5, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %6, align 8
  %7 = load %struct.instruction*, %struct.instruction** %5, align 8
  %8 = getelementptr inbounds %struct.instruction, %struct.instruction* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BWRITERSPR_SAMPLER, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.instruction*, %struct.instruction** %5, align 8
  %17 = getelementptr inbounds %struct.instruction, %struct.instruction* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 5
  br i1 %22, label %23, label %40

23:                                               ; preds = %15, %3
  %24 = load %struct.instruction*, %struct.instruction** %5, align 8
  %25 = getelementptr inbounds %struct.instruction, %struct.instruction* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.instruction*, %struct.instruction** %5, align 8
  %31 = getelementptr inbounds %struct.instruction, %struct.instruction* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %35)
  %37 = load i8*, i8** @E_INVALIDARG, align 8
  %38 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %39 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %121

40:                                               ; preds = %15
  %41 = load %struct.instruction*, %struct.instruction** %5, align 8
  %42 = getelementptr inbounds %struct.instruction, %struct.instruction* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BWRITERSPR_TEMP, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i8*, i8** @E_INVALIDARG, align 8
  %50 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %51 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %121

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.instruction*, %struct.instruction** %5, align 8
  %55 = getelementptr inbounds %struct.instruction, %struct.instruction* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.instruction*, %struct.instruction** %5, align 8
  %61 = getelementptr inbounds %struct.instruction, %struct.instruction* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %59, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %53
  %66 = load %struct.instruction*, %struct.instruction** %5, align 8
  %67 = getelementptr inbounds %struct.instruction, %struct.instruction* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.instruction*, %struct.instruction** %5, align 8
  %73 = getelementptr inbounds %struct.instruction, %struct.instruction* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load i8*, i8** @E_INVALIDARG, align 8
  %78 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %79 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %121

80:                                               ; preds = %53
  %81 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %82 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)** %84, align 8
  %86 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %87 = load %struct.instruction*, %struct.instruction** %5, align 8
  %88 = load i32, i32* @D3DSIO_TEX, align 4
  %89 = load i32, i32* @D3DSI_OPCODE_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %92 = call i32 %85(%struct.bc_writer* %86, %struct.instruction* %87, i32 %90, %struct.bytecode_buffer* %91)
  %93 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %94 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32 (%struct.bc_writer*, %struct.TYPE_6__*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.TYPE_6__*, %struct.bytecode_buffer*, i32, i32)** %96, align 8
  %98 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %99 = load %struct.instruction*, %struct.instruction** %5, align 8
  %100 = getelementptr inbounds %struct.instruction, %struct.instruction* %99, i32 0, i32 3
  %101 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %102 = load %struct.instruction*, %struct.instruction** %5, align 8
  %103 = getelementptr inbounds %struct.instruction, %struct.instruction* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.instruction*, %struct.instruction** %5, align 8
  %106 = getelementptr inbounds %struct.instruction, %struct.instruction* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 %97(%struct.bc_writer* %98, %struct.TYPE_6__* %100, %struct.bytecode_buffer* %101, i32 %104, i32 %107)
  %109 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %110 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32 (%struct.bc_writer*, %struct.TYPE_5__*, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.TYPE_5__*, %struct.bytecode_buffer*)** %112, align 8
  %114 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %115 = load %struct.instruction*, %struct.instruction** %5, align 8
  %116 = getelementptr inbounds %struct.instruction, %struct.instruction* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 0
  %119 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %120 = call i32 %113(%struct.bc_writer* %114, %struct.TYPE_5__* %118, %struct.bytecode_buffer* %119)
  br label %121

121:                                              ; preds = %80, %65, %47, %23
  ret void
}

declare dso_local i32 @WARN(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
