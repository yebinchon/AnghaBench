; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_instr_ps_1_0123_mov.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_instr_ps_1_0123_mov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i64*, i64*, %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { i32 (%struct.bc_writer*, %struct.TYPE_6__*, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.TYPE_7__*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.instruction = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_7__ }
%struct.bytecode_buffer = type { i32 }

@D3DSIO_MOV = common dso_local global i32 0, align 4
@D3DSI_OPCODE_MASK = common dso_local global i32 0, align 4
@BWRITERSPR_TEMP = common dso_local global i64 0, align 8
@BWRITERSPR_INPUT = common dso_local global i64 0, align 8
@T0_REG = common dso_local global i64 0, align 8
@T1_REG = common dso_local global i64 0, align 8
@T2_REG = common dso_local global i64 0, align 8
@T3_REG = common dso_local global i64 0, align 8
@BWRITERSPDM_SATURATE = common dso_local global i32 0, align 4
@D3DSIO_TEXCOORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"A varying -> temp copy is only supported with the SATURATE modifier in <=ps_1_3\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Unsupported varying -> temp mov in <= ps_1_3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)* @instr_ps_1_0123_mov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instr_ps_1_0123_mov(%struct.bc_writer* %0, %struct.instruction* %1, %struct.bytecode_buffer* %2) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BWRITERSPR_TEMP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %184

17:                                               ; preds = %3
  %18 = load %struct.instruction*, %struct.instruction** %5, align 8
  %19 = getelementptr inbounds %struct.instruction, %struct.instruction* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BWRITERSPR_INPUT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %184

26:                                               ; preds = %17
  %27 = load %struct.instruction*, %struct.instruction** %5, align 8
  %28 = getelementptr inbounds %struct.instruction, %struct.instruction* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @T0_REG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.instruction*, %struct.instruction** %5, align 8
  %35 = getelementptr inbounds %struct.instruction, %struct.instruction* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %41 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %106, label %46

46:                                               ; preds = %33, %26
  %47 = load %struct.instruction*, %struct.instruction** %5, align 8
  %48 = getelementptr inbounds %struct.instruction, %struct.instruction* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @T1_REG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.instruction*, %struct.instruction** %5, align 8
  %55 = getelementptr inbounds %struct.instruction, %struct.instruction* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %61 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %106, label %66

66:                                               ; preds = %53, %46
  %67 = load %struct.instruction*, %struct.instruction** %5, align 8
  %68 = getelementptr inbounds %struct.instruction, %struct.instruction* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @T2_REG, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.instruction*, %struct.instruction** %5, align 8
  %75 = getelementptr inbounds %struct.instruction, %struct.instruction* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %81 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %79, %84
  br i1 %85, label %106, label %86

86:                                               ; preds = %73, %66
  %87 = load %struct.instruction*, %struct.instruction** %5, align 8
  %88 = getelementptr inbounds %struct.instruction, %struct.instruction* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @T3_REG, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %150

93:                                               ; preds = %86
  %94 = load %struct.instruction*, %struct.instruction** %5, align 8
  %95 = getelementptr inbounds %struct.instruction, %struct.instruction* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %101 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %99, %104
  br i1 %105, label %106, label %150

106:                                              ; preds = %93, %73, %53, %33
  %107 = load %struct.instruction*, %struct.instruction** %5, align 8
  %108 = getelementptr inbounds %struct.instruction, %struct.instruction* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @BWRITERSPDM_SATURATE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %145

113:                                              ; preds = %106
  %114 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %115 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)** %117, align 8
  %119 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %120 = load %struct.instruction*, %struct.instruction** %5, align 8
  %121 = load i32, i32* @D3DSIO_TEXCOORD, align 4
  %122 = load i32, i32* @D3DSI_OPCODE_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %125 = call i32 %118(%struct.bc_writer* %119, %struct.instruction* %120, i32 %123, %struct.bytecode_buffer* %124)
  %126 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %127 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %126, i32 0, i32 2
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32 (%struct.bc_writer*, %struct.TYPE_7__*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.TYPE_7__*, %struct.bytecode_buffer*, i32, i32)** %129, align 8
  %131 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %132 = load %struct.instruction*, %struct.instruction** %5, align 8
  %133 = getelementptr inbounds %struct.instruction, %struct.instruction* %132, i32 0, i32 3
  %134 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %135 = load %struct.instruction*, %struct.instruction** %5, align 8
  %136 = getelementptr inbounds %struct.instruction, %struct.instruction* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.instruction*, %struct.instruction** %5, align 8
  %139 = getelementptr inbounds %struct.instruction, %struct.instruction* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @BWRITERSPDM_SATURATE, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  %144 = call i32 %130(%struct.bc_writer* %131, %struct.TYPE_7__* %133, %struct.bytecode_buffer* %134, i32 %137, i32 %143)
  br label %223

145:                                              ; preds = %106
  %146 = call i32 @WARN(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %147 = load i8*, i8** @E_INVALIDARG, align 8
  %148 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %149 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  br label %223

150:                                              ; preds = %93, %86
  %151 = load %struct.instruction*, %struct.instruction** %5, align 8
  %152 = getelementptr inbounds %struct.instruction, %struct.instruction* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %158 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %156, %161
  br i1 %162, label %176, label %163

163:                                              ; preds = %150
  %164 = load %struct.instruction*, %struct.instruction** %5, align 8
  %165 = getelementptr inbounds %struct.instruction, %struct.instruction* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %171 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %169, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %163, %150
  br label %182

177:                                              ; preds = %163
  %178 = call i32 @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %179 = load i8*, i8** @E_INVALIDARG, align 8
  %180 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %181 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  br label %223

182:                                              ; preds = %176
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183, %17, %3
  %185 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %186 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %185, i32 0, i32 2
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)** %188, align 8
  %190 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %191 = load %struct.instruction*, %struct.instruction** %5, align 8
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %194 = call i32 %189(%struct.bc_writer* %190, %struct.instruction* %191, i32 %192, %struct.bytecode_buffer* %193)
  %195 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %196 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %195, i32 0, i32 2
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32 (%struct.bc_writer*, %struct.TYPE_7__*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.TYPE_7__*, %struct.bytecode_buffer*, i32, i32)** %198, align 8
  %200 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %201 = load %struct.instruction*, %struct.instruction** %5, align 8
  %202 = getelementptr inbounds %struct.instruction, %struct.instruction* %201, i32 0, i32 3
  %203 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %204 = load %struct.instruction*, %struct.instruction** %5, align 8
  %205 = getelementptr inbounds %struct.instruction, %struct.instruction* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.instruction*, %struct.instruction** %5, align 8
  %208 = getelementptr inbounds %struct.instruction, %struct.instruction* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 %199(%struct.bc_writer* %200, %struct.TYPE_7__* %202, %struct.bytecode_buffer* %203, i32 %206, i32 %209)
  %211 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %212 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %211, i32 0, i32 2
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32 (%struct.bc_writer*, %struct.TYPE_6__*, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.TYPE_6__*, %struct.bytecode_buffer*)** %214, align 8
  %216 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %217 = load %struct.instruction*, %struct.instruction** %5, align 8
  %218 = getelementptr inbounds %struct.instruction, %struct.instruction* %217, i32 0, i32 1
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 0
  %221 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %222 = call i32 %215(%struct.bc_writer* %216, %struct.TYPE_6__* %220, %struct.bytecode_buffer* %221)
  br label %223

223:                                              ; preds = %184, %177, %145, %113
  ret void
}

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
