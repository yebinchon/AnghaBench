; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_instr_ps_1_0123_texld.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_instr_ps_1_0123_texld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i32*, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.TYPE_7__*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)* }
%struct.shader_reg = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.instruction = type { %struct.shader_reg*, i32, i32, %struct.TYPE_7__ }
%struct.bytecode_buffer = type { i32 }

@BWRITERSPR_SAMPLER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Unsupported sampler type %u regnum %u\0A\00", align 1
@E_INVALIDARG = common dso_local global i8* null, align 8
@BWRITERSPR_TEMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Can only sample into a temp register\0A\00", align 1
@T0_REG = common dso_local global i32 0, align 4
@T1_REG = common dso_local global i32 0, align 4
@T2_REG = common dso_local global i32 0, align 4
@T3_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"Sampling from sampler s%u to register r%u is not possible in ps_1_x\0A\00", align 1
@BWRITERSPR_INPUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"Cannot sample from s%u with texture address data from interpolator %u\0A\00", align 1
@D3DSIO_TEX = common dso_local global i32 0, align 4
@D3DSI_OPCODE_MASK = common dso_local global i32 0, align 4
@BWRITERVS_SWIZZLE_SHIFT = common dso_local global i32 0, align 4
@BWRITERVS_X_X = common dso_local global i32 0, align 4
@BWRITERVS_Y_Y = common dso_local global i32 0, align 4
@BWRITERVS_Z_Z = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"writing texreg2rgb\0A\00", align 1
@D3DSIO_TEXREG2RGB = common dso_local global i32 0, align 4
@BWRITERVS_X_W = common dso_local global i32 0, align 4
@BWRITERVS_Y_X = common dso_local global i32 0, align 4
@BWRITERVS_Z_X = common dso_local global i32 0, align 4
@BWRITERVS_W_X = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"writing texreg2ar\0A\00", align 1
@D3DSIO_TEXREG2AR = common dso_local global i32 0, align 4
@BWRITERVS_X_Y = common dso_local global i32 0, align 4
@BWRITERVS_Y_Z = common dso_local global i32 0, align 4
@BWRITERVS_W_Z = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"writing texreg2gb\0A\00", align 1
@D3DSIO_TEXREG2GB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"Unsupported src addr swizzle in dependent texld: 0x%08x\0A\00", align 1
@BWRITERVS_NOSWIZZLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Invalid address data source register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_writer*, %struct.instruction*, %struct.bytecode_buffer*)* @instr_ps_1_0123_texld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instr_ps_1_0123_texld(%struct.bc_writer* %0, %struct.instruction* %1, %struct.bytecode_buffer* %2) #0 {
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.instruction*, align 8
  %6 = alloca %struct.bytecode_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.shader_reg, align 8
  %9 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.instruction* %1, %struct.instruction** %5, align 8
  store %struct.bytecode_buffer* %2, %struct.bytecode_buffer** %6, align 8
  %10 = load %struct.instruction*, %struct.instruction** %5, align 8
  %11 = getelementptr inbounds %struct.instruction, %struct.instruction* %10, i32 0, i32 0
  %12 = load %struct.shader_reg*, %struct.shader_reg** %11, align 8
  %13 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %12, i64 1
  %14 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BWRITERSPR_SAMPLER, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load %struct.instruction*, %struct.instruction** %5, align 8
  %20 = getelementptr inbounds %struct.instruction, %struct.instruction* %19, i32 0, i32 0
  %21 = load %struct.shader_reg*, %struct.shader_reg** %20, align 8
  %22 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %21, i64 1
  %23 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %43

26:                                               ; preds = %18, %3
  %27 = load %struct.instruction*, %struct.instruction** %5, align 8
  %28 = getelementptr inbounds %struct.instruction, %struct.instruction* %27, i32 0, i32 0
  %29 = load %struct.shader_reg*, %struct.shader_reg** %28, align 8
  %30 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %29, i64 1
  %31 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.instruction*, %struct.instruction** %5, align 8
  %34 = getelementptr inbounds %struct.instruction, %struct.instruction* %33, i32 0, i32 0
  %35 = load %struct.shader_reg*, %struct.shader_reg** %34, align 8
  %36 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %35, i64 1
  %37 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %38)
  %40 = load i8*, i8** @E_INVALIDARG, align 8
  %41 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %42 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %340

43:                                               ; preds = %18
  %44 = load %struct.instruction*, %struct.instruction** %5, align 8
  %45 = getelementptr inbounds %struct.instruction, %struct.instruction* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BWRITERSPR_TEMP, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i8*, i8** @E_INVALIDARG, align 8
  %53 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %54 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %340

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.instruction*, %struct.instruction** %5, align 8
  %58 = getelementptr inbounds %struct.instruction, %struct.instruction* %57, i32 0, i32 0
  %59 = load %struct.shader_reg*, %struct.shader_reg** %58, align 8
  %60 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %59, i64 1
  %61 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.instruction*, %struct.instruction** %5, align 8
  %67 = getelementptr inbounds %struct.instruction, %struct.instruction* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @T0_REG, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %102, label %72

72:                                               ; preds = %65, %56
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.instruction*, %struct.instruction** %5, align 8
  %77 = getelementptr inbounds %struct.instruction, %struct.instruction* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @T1_REG, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %102, label %82

82:                                               ; preds = %75, %72
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.instruction*, %struct.instruction** %5, align 8
  %87 = getelementptr inbounds %struct.instruction, %struct.instruction* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @T2_REG, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %85, %82
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load %struct.instruction*, %struct.instruction** %5, align 8
  %97 = getelementptr inbounds %struct.instruction, %struct.instruction* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @T3_REG, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %95, %85, %75, %65
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.instruction*, %struct.instruction** %5, align 8
  %105 = getelementptr inbounds %struct.instruction, %struct.instruction* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %107)
  %109 = load i8*, i8** @E_INVALIDARG, align 8
  %110 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %111 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  br label %340

112:                                              ; preds = %95, %92
  %113 = load %struct.instruction*, %struct.instruction** %5, align 8
  %114 = getelementptr inbounds %struct.instruction, %struct.instruction* %113, i32 0, i32 0
  %115 = load %struct.shader_reg*, %struct.shader_reg** %114, align 8
  %116 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %115, i64 0
  %117 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @BWRITERSPR_INPUT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %177

121:                                              ; preds = %112
  %122 = load %struct.instruction*, %struct.instruction** %5, align 8
  %123 = getelementptr inbounds %struct.instruction, %struct.instruction* %122, i32 0, i32 0
  %124 = load %struct.shader_reg*, %struct.shader_reg** %123, align 8
  %125 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %124, i64 0
  %126 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %129 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %127, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %121
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.instruction*, %struct.instruction** %5, align 8
  %139 = getelementptr inbounds %struct.instruction, %struct.instruction* %138, i32 0, i32 0
  %140 = load %struct.shader_reg*, %struct.shader_reg** %139, align 8
  %141 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %140, i64 0
  %142 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %143)
  %145 = load i8*, i8** @E_INVALIDARG, align 8
  %146 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %147 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  br label %340

148:                                              ; preds = %121
  %149 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %150 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %149, i32 0, i32 2
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)** %152, align 8
  %154 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %155 = load %struct.instruction*, %struct.instruction** %5, align 8
  %156 = load i32, i32* @D3DSIO_TEX, align 4
  %157 = load i32, i32* @D3DSI_OPCODE_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %160 = call i32 %153(%struct.bc_writer* %154, %struct.instruction* %155, i32 %158, %struct.bytecode_buffer* %159)
  %161 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %162 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %161, i32 0, i32 2
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32 (%struct.bc_writer*, %struct.TYPE_7__*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.TYPE_7__*, %struct.bytecode_buffer*, i32, i32)** %164, align 8
  %166 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %167 = load %struct.instruction*, %struct.instruction** %5, align 8
  %168 = getelementptr inbounds %struct.instruction, %struct.instruction* %167, i32 0, i32 3
  %169 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %170 = load %struct.instruction*, %struct.instruction** %5, align 8
  %171 = getelementptr inbounds %struct.instruction, %struct.instruction* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.instruction*, %struct.instruction** %5, align 8
  %174 = getelementptr inbounds %struct.instruction, %struct.instruction* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 %165(%struct.bc_writer* %166, %struct.TYPE_7__* %168, %struct.bytecode_buffer* %169, i32 %172, i32 %175)
  br label %340

177:                                              ; preds = %112
  %178 = load %struct.instruction*, %struct.instruction** %5, align 8
  %179 = getelementptr inbounds %struct.instruction, %struct.instruction* %178, i32 0, i32 0
  %180 = load %struct.shader_reg*, %struct.shader_reg** %179, align 8
  %181 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %180, i64 0
  %182 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @BWRITERSPR_TEMP, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %334

186:                                              ; preds = %177
  %187 = load i32, i32* @BWRITERVS_SWIZZLE_SHIFT, align 4
  %188 = shl i32 3, %187
  %189 = load i32, i32* @BWRITERVS_SWIZZLE_SHIFT, align 4
  %190 = add nsw i32 %189, 2
  %191 = shl i32 3, %190
  %192 = or i32 %188, %191
  %193 = load i32, i32* @BWRITERVS_SWIZZLE_SHIFT, align 4
  %194 = add nsw i32 %193, 4
  %195 = shl i32 3, %194
  %196 = or i32 %192, %195
  store i32 %196, i32* %9, align 4
  %197 = load %struct.instruction*, %struct.instruction** %5, align 8
  %198 = getelementptr inbounds %struct.instruction, %struct.instruction* %197, i32 0, i32 0
  %199 = load %struct.shader_reg*, %struct.shader_reg** %198, align 8
  %200 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %199, i64 0
  %201 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %9, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* @BWRITERVS_X_X, align 4
  %207 = load i32, i32* @BWRITERVS_Y_Y, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @BWRITERVS_Z_Z, align 4
  %210 = or i32 %208, %209
  %211 = icmp eq i32 %205, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %186
  %213 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %214 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %215 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %214, i32 0, i32 2
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  %218 = load i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)** %217, align 8
  %219 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %220 = load %struct.instruction*, %struct.instruction** %5, align 8
  %221 = load i32, i32* @D3DSIO_TEXREG2RGB, align 4
  %222 = load i32, i32* @D3DSI_OPCODE_MASK, align 4
  %223 = and i32 %221, %222
  %224 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %225 = call i32 %218(%struct.bc_writer* %219, %struct.instruction* %220, i32 %223, %struct.bytecode_buffer* %224)
  br label %300

226:                                              ; preds = %186
  %227 = load %struct.instruction*, %struct.instruction** %5, align 8
  %228 = getelementptr inbounds %struct.instruction, %struct.instruction* %227, i32 0, i32 0
  %229 = load %struct.shader_reg*, %struct.shader_reg** %228, align 8
  %230 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %229, i64 0
  %231 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @BWRITERVS_X_W, align 4
  %235 = load i32, i32* @BWRITERVS_Y_X, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @BWRITERVS_Z_X, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* @BWRITERVS_W_X, align 4
  %240 = or i32 %238, %239
  %241 = icmp eq i32 %233, %240
  br i1 %241, label %242, label %256

242:                                              ; preds = %226
  %243 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %244 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %245 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %244, i32 0, i32 2
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 2
  %248 = load i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)** %247, align 8
  %249 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %250 = load %struct.instruction*, %struct.instruction** %5, align 8
  %251 = load i32, i32* @D3DSIO_TEXREG2AR, align 4
  %252 = load i32, i32* @D3DSI_OPCODE_MASK, align 4
  %253 = and i32 %251, %252
  %254 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %255 = call i32 %248(%struct.bc_writer* %249, %struct.instruction* %250, i32 %253, %struct.bytecode_buffer* %254)
  br label %299

256:                                              ; preds = %226
  %257 = load %struct.instruction*, %struct.instruction** %5, align 8
  %258 = getelementptr inbounds %struct.instruction, %struct.instruction* %257, i32 0, i32 0
  %259 = load %struct.shader_reg*, %struct.shader_reg** %258, align 8
  %260 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %259, i64 0
  %261 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @BWRITERVS_X_Y, align 4
  %265 = load i32, i32* @BWRITERVS_Y_Z, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @BWRITERVS_Z_Z, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @BWRITERVS_W_Z, align 4
  %270 = or i32 %268, %269
  %271 = icmp eq i32 %263, %270
  br i1 %271, label %272, label %286

272:                                              ; preds = %256
  %273 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %274 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %275 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %274, i32 0, i32 2
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 2
  %278 = load i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.instruction*, i32, %struct.bytecode_buffer*)** %277, align 8
  %279 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %280 = load %struct.instruction*, %struct.instruction** %5, align 8
  %281 = load i32, i32* @D3DSIO_TEXREG2GB, align 4
  %282 = load i32, i32* @D3DSI_OPCODE_MASK, align 4
  %283 = and i32 %281, %282
  %284 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %285 = call i32 %278(%struct.bc_writer* %279, %struct.instruction* %280, i32 %283, %struct.bytecode_buffer* %284)
  br label %298

286:                                              ; preds = %256
  %287 = load %struct.instruction*, %struct.instruction** %5, align 8
  %288 = getelementptr inbounds %struct.instruction, %struct.instruction* %287, i32 0, i32 0
  %289 = load %struct.shader_reg*, %struct.shader_reg** %288, align 8
  %290 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %289, i64 0
  %291 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %293)
  %295 = load i8*, i8** @E_INVALIDARG, align 8
  %296 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %297 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %296, i32 0, i32 1
  store i8* %295, i8** %297, align 8
  br label %340

298:                                              ; preds = %272
  br label %299

299:                                              ; preds = %298, %242
  br label %300

300:                                              ; preds = %299, %212
  %301 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %302 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %301, i32 0, i32 2
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  %305 = load i32 (%struct.bc_writer*, %struct.TYPE_7__*, %struct.bytecode_buffer*, i32, i32)*, i32 (%struct.bc_writer*, %struct.TYPE_7__*, %struct.bytecode_buffer*, i32, i32)** %304, align 8
  %306 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %307 = load %struct.instruction*, %struct.instruction** %5, align 8
  %308 = getelementptr inbounds %struct.instruction, %struct.instruction* %307, i32 0, i32 3
  %309 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %310 = load %struct.instruction*, %struct.instruction** %5, align 8
  %311 = getelementptr inbounds %struct.instruction, %struct.instruction* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.instruction*, %struct.instruction** %5, align 8
  %314 = getelementptr inbounds %struct.instruction, %struct.instruction* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = call i32 %305(%struct.bc_writer* %306, %struct.TYPE_7__* %308, %struct.bytecode_buffer* %309, i32 %312, i32 %315)
  %317 = load %struct.instruction*, %struct.instruction** %5, align 8
  %318 = getelementptr inbounds %struct.instruction, %struct.instruction* %317, i32 0, i32 0
  %319 = load %struct.shader_reg*, %struct.shader_reg** %318, align 8
  %320 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %319, i64 0
  %321 = bitcast %struct.shader_reg* %8 to i8*
  %322 = bitcast %struct.shader_reg* %320 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %321, i8* align 8 %322, i64 16, i1 false)
  %323 = load i32, i32* @BWRITERVS_NOSWIZZLE, align 4
  %324 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %8, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  store i32 %323, i32* %325, align 4
  %326 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %327 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %326, i32 0, i32 2
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 0
  %330 = load i32 (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*)*, i32 (%struct.bc_writer*, %struct.shader_reg*, %struct.bytecode_buffer*)** %329, align 8
  %331 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %332 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %6, align 8
  %333 = call i32 %330(%struct.bc_writer* %331, %struct.shader_reg* %8, %struct.bytecode_buffer* %332)
  br label %339

334:                                              ; preds = %177
  %335 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %336 = load i8*, i8** @E_INVALIDARG, align 8
  %337 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %338 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %337, i32 0, i32 1
  store i8* %336, i8** %338, align 8
  br label %340

339:                                              ; preds = %300
  br label %340

340:                                              ; preds = %26, %50, %102, %136, %286, %334, %339, %148
  ret void
}

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @TRACE(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
