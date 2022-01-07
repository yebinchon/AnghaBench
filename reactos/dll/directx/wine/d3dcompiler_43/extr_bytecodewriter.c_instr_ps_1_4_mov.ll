; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_instr_ps_1_4_mov.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_instr_ps_1_4_mov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i64*, i64*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.bc_writer*, %struct.TYPE_5__*, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.TYPE_6__*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.instruction = type { %struct.TYPE_5__*, i32, i32, %struct.TYPE_6__ }
%struct.bytecode_buffer = type { i32 }

@D3DSIO_MOV = common dso_local global i32 0, align 4
@D3DSI_OPCODE_MASK = common dso_local global i32 0, align 4
@BWRITERSPR_TEMP = common dso_local global i64 0, align 8
@BWRITERSPR_INPUT = common dso_local global i64 0, align 8
@D3DSIO_TEXCOORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unsupported varying -> temp mov in ps_1_4\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)* @instr_ps_1_4_mov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instr_ps_1_4_mov(%struct.bc_writer* %0, %struct.instruction* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.instruction*, align 8
  %6 = alloca %struct.bytecode_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.instruction* %1, %struct.instruction** %5, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %6, align 8
  %8 = load i32, i32* @D3DSIO_MOV, align 4
  %9 = load i32, i32* @D3DSI_OPCODE_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.instruction*, %struct.instruction** %5, align 8
  %12 = getelementptr inbounds %struct.instruction, %struct.instruction* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BWRITERSPR_TEMP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %142

17:                                               ; preds = %3
  %18 = load %struct.instruction*, %struct.instruction** %5, align 8
  %19 = getelementptr inbounds %struct.instruction, %struct.instruction* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BWRITERSPR_INPUT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %142

26:                                               ; preds = %17
  %27 = load %struct.instruction*, %struct.instruction** %5, align 8
  %28 = getelementptr inbounds %struct.instruction, %struct.instruction* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %34 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %104, label %39

39:                                               ; preds = %26
  %40 = load %struct.instruction*, %struct.instruction** %5, align 8
  %41 = getelementptr inbounds %struct.instruction, %struct.instruction* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %47 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %45, %50
  br i1 %51, label %104, label %52

52:                                               ; preds = %39
  %53 = load %struct.instruction*, %struct.instruction** %5, align 8
  %54 = getelementptr inbounds %struct.instruction, %struct.instruction* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %60 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %58, %63
  br i1 %64, label %104, label %65

65:                                               ; preds = %52
  %66 = load %struct.instruction*, %struct.instruction** %5, align 8
  %67 = getelementptr inbounds %struct.instruction, %struct.instruction* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %73 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %71, %76
  br i1 %77, label %104, label %78

78:                                               ; preds = %65
  %79 = load %struct.instruction*, %struct.instruction** %5, align 8
  %80 = getelementptr inbounds %struct.instruction, %struct.instruction* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %86 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %84, %89
  br i1 %90, label %104, label %91

91:                                               ; preds = %78
  %92 = load %struct.instruction*, %struct.instruction** %5, align 8
  %93 = getelementptr inbounds %struct.instruction, %struct.instruction* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %99 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %97, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %91, %78, %65, %52, %39, %26
  %105 = load i32, i32* @D3DSIO_TEXCOORD, align 4
  %106 = load i32, i32* @D3DSI_OPCODE_MASK, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %7, align 4
  br label %141

108:                                              ; preds = %91
  %109 = load %struct.instruction*, %struct.instruction** %5, align 8
  %110 = getelementptr inbounds %struct.instruction, %struct.instruction* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %116 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %114, %119
  br i1 %120, label %134, label %121

121:                                              ; preds = %108
  %122 = load %struct.instruction*, %struct.instruction** %5, align 8
  %123 = getelementptr inbounds %struct.instruction, %struct.instruction* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %129 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %127, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %121, %108
  br label %140

135:                                              ; preds = %121
  %136 = call i32 @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %137 = load i32, i32* @E_INVALIDARG, align 4
  %138 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %139 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  br label %181

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %104
  br label %142

142:                                              ; preds = %141, %17, %3
  %143 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %144 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)** %146, align 8
  %148 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %149 = load %struct.instruction*, %struct.instruction** %5, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %152 = call i32 %147(%struct.bc_writer* %148, %struct.instruction* %149, i32 %150, %struct.bytecode_buffer* %151)
  %153 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %154 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %153, i32 0, i32 2
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32 (%struct.bc_writer*, %struct.TYPE_6__*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.TYPE_6__*, %struct.bytecode_buffer*, i32, i32)** %156, align 8
  %158 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %159 = load %struct.instruction*, %struct.instruction** %5, align 8
  %160 = getelementptr inbounds %struct.instruction, %struct.instruction* %159, i32 0, i32 3
  %161 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %162 = load %struct.instruction*, %struct.instruction** %5, align 8
  %163 = getelementptr inbounds %struct.instruction, %struct.instruction* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.instruction*, %struct.instruction** %5, align 8
  %166 = getelementptr inbounds %struct.instruction, %struct.instruction* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 %157(%struct.bc_writer* %158, %struct.TYPE_6__* %160, %struct.bytecode_buffer* %161, i32 %164, i32 %167)
  %169 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %170 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %169, i32 0, i32 2
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32 (%struct.bc_writer*, %struct.TYPE_5__*, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.TYPE_5__*, %struct.bytecode_buffer*)** %172, align 8
  %174 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %175 = load %struct.instruction*, %struct.instruction** %5, align 8
  %176 = getelementptr inbounds %struct.instruction, %struct.instruction* %175, i32 0, i32 0
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 0
  %179 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %180 = call i32 %173(%struct.bc_writer* %174, %struct.TYPE_5__* %178, %struct.bytecode_buffer* %179)
  br label %181

181:                                              ; preds = %142, %135
  ret void
}

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
