; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_gnu.c_op_thumb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_gnu.c_op_thumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i8*, i64 }
%struct.winedbg_arm_insn = type { i32, i32 }

@B1110 = common dso_local global i32 0, align 4
@B0010 = common dso_local global i32 0, align 4
@B1000 = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@B1111 = common dso_local global i32 0, align 4
@B1100 = common dso_local global i32 0, align 4
@B0100 = common dso_local global i32 0, align 4
@B0011 = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_NOP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_STORE = common dso_local global i8* null, align 8
@B0101 = common dso_local global i32 0, align 4
@B1101 = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_JMP = common dso_local global i8* null, align 8
@B0111 = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_UCALL = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_UJMP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_CALL = common dso_local global i8* null, align 8
@B1011 = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_TRAP = common dso_local global i8* null, align 8
@R_ANAL_OP_TYPE_SWI = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i8*, i32*, i32)* @op_thumb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_thumb(i32* %0, %struct.TYPE_3__* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.winedbg_arm_insn*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i32*, i32** %10, align 8
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %10, align 8
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = call %struct.winedbg_arm_insn* (...) @arm_new()
  store %struct.winedbg_arm_insn* %29, %struct.winedbg_arm_insn** %17, align 8
  %30 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %17, align 8
  %31 = call i32 @arm_set_thumb(%struct.winedbg_arm_insn* %30, i32 1)
  %32 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %17, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @arm_set_input_buffer(%struct.winedbg_arm_insn* %32, i32* %33)
  %35 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %17, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @arm_set_pc(%struct.winedbg_arm_insn* %35, i8* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 -1, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 -1, i32* %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %17, align 8
  %49 = call i32 @arm_disasm_one_insn(%struct.winedbg_arm_insn* %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %17, align 8
  %53 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %17, align 8
  %58 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %17, align 8
  %63 = call i32 @arm_free(%struct.winedbg_arm_insn* %62)
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @B1110, align 4
  %66 = call i32 @B4(i32 %65, i32 0, i32 0, i32 0)
  %67 = and i32 %64, %66
  %68 = load i32, i32* @B0010, align 4
  %69 = call i32 @B4(i32 %68, i32 0, i32 0, i32 0)
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %5
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @B1000, align 4
  %74 = call i32 @B4(i32 1, i32 %73, i32 0, i32 0)
  %75 = and i32 %72, %74
  %76 = ashr i32 %75, 11
  %77 = icmp eq i32 1, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %6, align 4
  br label %414

85:                                               ; preds = %71, %5
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @B1111, align 4
  %88 = load i32, i32* @B1100, align 4
  %89 = call i32 @B4(i32 %87, i32 %88, i32 0, i32 0)
  %90 = and i32 %86, %89
  %91 = load i32, i32* @B0100, align 4
  %92 = call i32 @B4(i32 %91, i32 0, i32 0, i32 0)
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %85
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @B0011, align 4
  %97 = load i32, i32* @B1100, align 4
  %98 = call i32 @B4(i32 0, i32 %96, i32 %97, i32 0)
  %99 = and i32 %95, %98
  %100 = ashr i32 %99, 6
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %106, label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, 10
  br i1 %105, label %106, label %113

106:                                              ; preds = %103, %94
  %107 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %6, align 4
  br label %414

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %85
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @B1111, align 4
  %117 = load i32, i32* @B1100, align 4
  %118 = call i32 @B4(i32 %116, i32 %117, i32 0, i32 0)
  %119 = and i32 %115, %118
  %120 = load i32, i32* @B0100, align 4
  %121 = load i32, i32* @B0100, align 4
  %122 = call i32 @B4(i32 %120, i32 %121, i32 0, i32 0)
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %114
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @B0011, align 4
  %127 = call i32 @B4(i32 0, i32 %126, i32 0, i32 0)
  %128 = and i32 %125, %127
  %129 = ashr i32 %128, 8
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %139

132:                                              ; preds = %124
  %133 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %6, align 4
  br label %414

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %114
  %141 = load i32, i32* %14, align 4
  %142 = icmp eq i32 %141, 191
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i8*, i8** @R_ANAL_OP_TYPE_NOP, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 5
  store i8* %144, i8** %146, align 8
  br label %410

147:                                              ; preds = %140
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @B1111, align 4
  %150 = load i32, i32* @B1000, align 4
  %151 = call i32 @B4(i32 %149, i32 %150, i32 0, i32 0)
  %152 = and i32 %148, %151
  %153 = ashr i32 %152, 11
  store i32 %153, i32* %12, align 4
  %154 = icmp sge i32 %153, 12
  br i1 %154, label %155, label %171

155:                                              ; preds = %147
  %156 = load i32, i32* %12, align 4
  %157 = icmp sle i32 %156, 17
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = load i32, i32* %12, align 4
  %160 = srem i32 %159, 2
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  store i8* %163, i8** %165, align 8
  br label %170

166:                                              ; preds = %158
  %167 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 5
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %166, %162
  br label %409

171:                                              ; preds = %155, %147
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* @B1111, align 4
  %174 = call i32 @B4(i32 %173, i32 0, i32 0, i32 0)
  %175 = and i32 %172, %174
  %176 = load i32, i32* @B0101, align 4
  %177 = call i32 @B4(i32 %176, i32 0, i32 0, i32 0)
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %197

179:                                              ; preds = %171
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* @B1110, align 4
  %182 = call i32 @B4(i32 0, i32 %181, i32 0, i32 0)
  %183 = and i32 %180, %182
  %184 = ashr i32 %183, 9
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = srem i32 %185, 2
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %179
  %189 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 5
  store i8* %189, i8** %191, align 8
  br label %196

192:                                              ; preds = %179
  %193 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 5
  store i8* %193, i8** %195, align 8
  br label %196

196:                                              ; preds = %192, %188
  br label %408

197:                                              ; preds = %171
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* @B1111, align 4
  %200 = call i32 @B4(i32 %199, i32 0, i32 0, i32 0)
  %201 = and i32 %198, %200
  %202 = load i32, i32* @B1101, align 4
  %203 = call i32 @B4(i32 %202, i32 0, i32 0, i32 0)
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %228

205:                                              ; preds = %197
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* @B1111, align 4
  %208 = load i32, i32* @B1111, align 4
  %209 = call i32 @B4(i32 0, i32 0, i32 %207, i32 %208)
  %210 = and i32 %206, %209
  store i32 %210, i32* %18, align 4
  %211 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 5
  store i8* %211, i8** %213, align 8
  %214 = load i8*, i8** %9, align 8
  %215 = getelementptr i8, i8* %214, i64 4
  %216 = load i32, i32* %18, align 4
  %217 = shl i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr i8, i8* %215, i64 %218
  %220 = ptrtoint i8* %219 to i32
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load i8*, i8** %9, align 8
  %224 = getelementptr i8, i8* %223, i64 4
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  br label %407

228:                                              ; preds = %197
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* @B1111, align 4
  %231 = load i32, i32* @B1000, align 4
  %232 = call i32 @B4(i32 %230, i32 %231, i32 0, i32 0)
  %233 = and i32 %229, %232
  %234 = load i32, i32* @B1110, align 4
  %235 = call i32 @B4(i32 %234, i32 0, i32 0, i32 0)
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %260

237:                                              ; preds = %228
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* @B1111, align 4
  %240 = load i32, i32* @B1111, align 4
  %241 = call i32 @B4(i32 0, i32 0, i32 %239, i32 %240)
  %242 = and i32 %238, %241
  store i32 %242, i32* %19, align 4
  %243 = load i8*, i8** @R_ANAL_OP_TYPE_JMP, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 5
  store i8* %243, i8** %245, align 8
  %246 = load i8*, i8** %9, align 8
  %247 = getelementptr i8, i8* %246, i64 4
  %248 = load i32, i32* %19, align 4
  %249 = shl i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr i8, i8* %247, i64 %250
  %252 = ptrtoint i8* %251 to i32
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load i8*, i8** %9, align 8
  %256 = getelementptr i8, i8* %255, i64 4
  %257 = ptrtoint i8* %256 to i32
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  br label %406

260:                                              ; preds = %228
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* @B1111, align 4
  %263 = load i32, i32* @B1111, align 4
  %264 = load i32, i32* @B1000, align 4
  %265 = call i32 @B4(i32 %262, i32 %263, i32 %264, i32 0)
  %266 = and i32 %261, %265
  %267 = load i32, i32* @B0100, align 4
  %268 = load i32, i32* @B0111, align 4
  %269 = load i32, i32* @B1000, align 4
  %270 = call i32 @B4(i32 %267, i32 %268, i32 %269, i32 0)
  %271 = icmp eq i32 %266, %270
  br i1 %271, label %272, label %281

272:                                              ; preds = %260
  %273 = load i8*, i8** @R_ANAL_OP_TYPE_UCALL, align 8
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 5
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** %9, align 8
  %277 = getelementptr i8, i8* %276, i64 4
  %278 = ptrtoint i8* %277 to i32
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  br label %405

281:                                              ; preds = %260
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* @B1111, align 4
  %284 = load i32, i32* @B1111, align 4
  %285 = load i32, i32* @B1000, align 4
  %286 = call i32 @B4(i32 %283, i32 %284, i32 %285, i32 0)
  %287 = and i32 %282, %286
  %288 = load i32, i32* @B0100, align 4
  %289 = load i32, i32* @B0111, align 4
  %290 = call i32 @B4(i32 %288, i32 %289, i32 0, i32 0)
  %291 = icmp eq i32 %287, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %281
  %293 = load i8*, i8** @R_ANAL_OP_TYPE_UJMP, align 8
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 5
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** %9, align 8
  %297 = getelementptr i8, i8* %296, i64 4
  %298 = ptrtoint i8* %297 to i32
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  br label %404

301:                                              ; preds = %281
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* @B1111, align 4
  %304 = load i32, i32* @B1000, align 4
  %305 = call i32 @B4(i32 %303, i32 %304, i32 0, i32 0)
  %306 = and i32 %302, %305
  %307 = load i32, i32* @B1111, align 4
  %308 = call i32 @B4(i32 %307, i32 0, i32 0, i32 0)
  %309 = icmp eq i32 %306, %308
  br i1 %309, label %310, label %359

310:                                              ; preds = %301
  %311 = load i32, i32* %16, align 4
  %312 = and i32 %311, -65536
  %313 = lshr i32 %312, 16
  store i32 %313, i32* %20, align 4
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* @B0111, align 4
  %316 = load i32, i32* @B1111, align 4
  %317 = load i32, i32* @B1111, align 4
  %318 = call i32 @B4(i32 0, i32 %315, i32 %316, i32 %317)
  %319 = and i32 %314, %318
  %320 = shl i32 %319, 12
  store i32 %320, i32* %21, align 4
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* @B0100, align 4
  %323 = call i32 @B4(i32 0, i32 %322, i32 0, i32 0)
  %324 = and i32 %321, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %310
  %327 = load i32, i32* @B1111, align 4
  %328 = load i32, i32* @B1000, align 4
  %329 = call i32 @B4(i32 %327, i32 %328, i32 0, i32 0)
  %330 = shl i32 %329, 16
  %331 = load i32, i32* %21, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %21, align 4
  br label %333

333:                                              ; preds = %326, %310
  %334 = load i32, i32* %21, align 4
  %335 = load i32, i32* %20, align 4
  %336 = load i32, i32* @B0111, align 4
  %337 = load i32, i32* @B1111, align 4
  %338 = load i32, i32* @B1111, align 4
  %339 = call i32 @B4(i32 0, i32 %336, i32 %337, i32 %338)
  %340 = and i32 %335, %339
  %341 = mul nsw i32 %340, 2
  %342 = add nsw i32 %334, %341
  store i32 %342, i32* %22, align 4
  %343 = load i8*, i8** %9, align 8
  %344 = getelementptr i8, i8* %343, i64 4
  %345 = load i32, i32* %22, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr i8, i8* %344, i64 %346
  %348 = ptrtoint i8* %347 to i32
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 0
  store i32 %348, i32* %350, align 8
  %351 = load i8*, i8** @R_ANAL_OP_TYPE_CALL, align 8
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 5
  store i8* %351, i8** %353, align 8
  %354 = load i8*, i8** %9, align 8
  %355 = getelementptr i8, i8* %354, i64 4
  %356 = ptrtoint i8* %355 to i32
  %357 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 1
  store i32 %356, i32* %358, align 4
  br label %403

359:                                              ; preds = %301
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* @B1111, align 4
  %362 = load i32, i32* @B1111, align 4
  %363 = call i32 @B4(i32 %361, i32 %362, i32 0, i32 0)
  %364 = and i32 %360, %363
  %365 = load i32, i32* @B1011, align 4
  %366 = load i32, i32* @B1110, align 4
  %367 = call i32 @B4(i32 %365, i32 %366, i32 0, i32 0)
  %368 = icmp eq i32 %364, %367
  br i1 %368, label %369, label %380

369:                                              ; preds = %359
  %370 = load i8*, i8** @R_ANAL_OP_TYPE_TRAP, align 8
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 5
  store i8* %370, i8** %372, align 8
  %373 = load i32, i32* %14, align 4
  %374 = ashr i32 %373, 8
  %375 = sext i32 %374 to i64
  %376 = inttoptr i64 %375 to i8*
  %377 = ptrtoint i8* %376 to i32
  %378 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 3
  store i32 %377, i32* %379, align 4
  br label %402

380:                                              ; preds = %359
  %381 = load i32, i32* %14, align 4
  %382 = load i32, i32* @B1111, align 4
  %383 = load i32, i32* @B1111, align 4
  %384 = call i32 @B4(i32 %382, i32 %383, i32 0, i32 0)
  %385 = and i32 %381, %384
  %386 = load i32, i32* @B1101, align 4
  %387 = load i32, i32* @B1111, align 4
  %388 = call i32 @B4(i32 %386, i32 %387, i32 0, i32 0)
  %389 = icmp eq i32 %385, %388
  br i1 %389, label %390, label %401

390:                                              ; preds = %380
  %391 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 5
  store i8* %391, i8** %393, align 8
  %394 = load i32, i32* %14, align 4
  %395 = ashr i32 %394, 8
  %396 = sext i32 %395 to i64
  %397 = inttoptr i64 %396 to i8*
  %398 = ptrtoint i8* %397 to i32
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 3
  store i32 %398, i32* %400, align 4
  br label %401

401:                                              ; preds = %390, %380
  br label %402

402:                                              ; preds = %401, %369
  br label %403

403:                                              ; preds = %402, %333
  br label %404

404:                                              ; preds = %403, %292
  br label %405

405:                                              ; preds = %404, %272
  br label %406

406:                                              ; preds = %405, %237
  br label %407

407:                                              ; preds = %406, %205
  br label %408

408:                                              ; preds = %407, %196
  br label %409

409:                                              ; preds = %408, %170
  br label %410

410:                                              ; preds = %409, %143
  %411 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 8
  store i32 %413, i32* %6, align 4
  br label %414

414:                                              ; preds = %410, %132, %106, %78
  %415 = load i32, i32* %6, align 4
  ret i32 %415
}

declare dso_local %struct.winedbg_arm_insn* @arm_new(...) #1

declare dso_local i32 @arm_set_thumb(%struct.winedbg_arm_insn*, i32) #1

declare dso_local i32 @arm_set_input_buffer(%struct.winedbg_arm_insn*, i32*) #1

declare dso_local i32 @arm_set_pc(%struct.winedbg_arm_insn*, i8*) #1

declare dso_local i32 @arm_disasm_one_insn(%struct.winedbg_arm_insn*) #1

declare dso_local i32 @arm_free(%struct.winedbg_arm_insn*) #1

declare dso_local i32 @B4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
