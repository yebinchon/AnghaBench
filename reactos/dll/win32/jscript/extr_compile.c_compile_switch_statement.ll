; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_switch_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_switch_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_21__*, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__*, %struct.TYPE_21__*, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_case = common dso_local global i32 0, align 4
@OP_pop = common dso_local global i32 0, align 4
@OP_jmp = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_17__*)* @compile_switch_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_switch_statement(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  store i32 0, i32* %20, align 4
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @compile_expression(%struct.TYPE_20__* %22, i64 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %3, align 4
  br label %305

33:                                               ; preds = %2
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = call i32 @alloc_label(%struct.TYPE_20__* %34)
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %41, i32* %3, align 4
  br label %305

42:                                               ; preds = %33
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %13, align 8
  br label %46

46:                                               ; preds = %58, %42
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %48 = icmp ne %struct.TYPE_21__* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %13, align 8
  br label %46

62:                                               ; preds = %46
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32* @heap_alloc(i32 %66)
  store i32* %67, i32** %8, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %71, i32* %3, align 4
  br label %305

72:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  store %struct.TYPE_21__* %75, %struct.TYPE_21__** %13, align 8
  br label %76

76:                                               ; preds = %116, %72
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %78 = icmp ne %struct.TYPE_21__* %77, null
  br i1 %78, label %79, label %120

79:                                               ; preds = %76
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %11, align 4
  br label %116

86:                                               ; preds = %79
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 @compile_expression(%struct.TYPE_20__* %87, i64 %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i64 @FAILED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %120

97:                                               ; preds = %86
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = load i32, i32* @OP_case, align 4
  %100 = call i32 @push_instr(%struct.TYPE_20__* %98, i32 %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %97
  %112 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %112, i32* %14, align 4
  br label %120

113:                                              ; preds = %97
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %84
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  store %struct.TYPE_21__* %119, %struct.TYPE_21__** %13, align 8
  br label %76

120:                                              ; preds = %111, %96, %76
  %121 = load i32, i32* %14, align 4
  %122 = call i64 @SUCCEEDED(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %126 = load i32, i32* @OP_pop, align 4
  %127 = call i32 @push_instr_uint(%struct.TYPE_20__* %125, i32 %126, i32 1)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i64 @SUCCEEDED(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = load i32, i32* @OP_jmp, align 4
  %134 = call i32 @push_instr(%struct.TYPE_20__* %132, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %131
  %138 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %137, %131
  br label %140

140:                                              ; preds = %139, %124
  br label %141

141:                                              ; preds = %140, %120
  %142 = load i32, i32* %14, align 4
  %143 = call i64 @FAILED(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @heap_free(i32* %146)
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %3, align 4
  br label %305

149:                                              ; preds = %141
  store i32 0, i32* %9, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  store %struct.TYPE_21__* %152, %struct.TYPE_21__** %13, align 8
  br label %153

153:                                              ; preds = %261, %149
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %155 = icmp ne %struct.TYPE_21__* %154, null
  br i1 %155, label %156, label %265

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %189, %156
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %159, align 8
  %161 = icmp ne %struct.TYPE_21__* %160, null
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %169, align 8
  %171 = icmp eq %struct.TYPE_18__* %167, %170
  br label %172

172:                                              ; preds = %162, %157
  %173 = phi i1 [ false, %157 ], [ %171, %162 ]
  br i1 %173, label %174, label %198

174:                                              ; preds = %172
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %174
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %9, align 4
  %184 = zext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  br label %189

187:                                              ; preds = %174
  %188 = load i32, i32* %10, align 4
  br label %189

189:                                              ; preds = %187, %180
  %190 = phi i32 [ %186, %180 ], [ %188, %187 ]
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @set_arg_uint(%struct.TYPE_20__* %175, i32 %190, i32 %193)
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %196, align 8
  store %struct.TYPE_21__* %197, %struct.TYPE_21__** %13, align 8
  br label %157

198:                                              ; preds = %172
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %198
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %9, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %9, align 4
  %208 = zext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  br label %213

211:                                              ; preds = %198
  %212 = load i32, i32* %10, align 4
  br label %213

213:                                              ; preds = %211, %204
  %214 = phi i32 [ %210, %204 ], [ %212, %211 ]
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @set_arg_uint(%struct.TYPE_20__* %199, i32 %214, i32 %217)
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %220, align 8
  store %struct.TYPE_18__* %221, %struct.TYPE_18__** %12, align 8
  br label %222

222:                                              ; preds = %251, %213
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %224 = icmp ne %struct.TYPE_18__* %223, null
  br i1 %224, label %225, label %240

225:                                              ; preds = %222
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %227, align 8
  %229 = icmp ne %struct.TYPE_21__* %228, null
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %234, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %237 = icmp ne %struct.TYPE_18__* %235, %236
  br label %238

238:                                              ; preds = %230, %225
  %239 = phi i1 [ true, %225 ], [ %237, %230 ]
  br label %240

240:                                              ; preds = %238, %222
  %241 = phi i1 [ false, %222 ], [ %239, %238 ]
  br i1 %241, label %242, label %255

242:                                              ; preds = %240
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %245 = call i32 @compile_statement(%struct.TYPE_20__* %243, %struct.TYPE_19__* %6, %struct.TYPE_18__* %244)
  store i32 %245, i32* %14, align 4
  %246 = load i32, i32* %14, align 4
  %247 = call i64 @FAILED(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  br label %255

250:                                              ; preds = %242
  br label %251

251:                                              ; preds = %250
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %253, align 8
  store %struct.TYPE_18__* %254, %struct.TYPE_18__** %12, align 8
  br label %222

255:                                              ; preds = %249, %240
  %256 = load i32, i32* %14, align 4
  %257 = call i64 @FAILED(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  br label %265

260:                                              ; preds = %255
  br label %261

261:                                              ; preds = %260
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %263, align 8
  store %struct.TYPE_21__* %264, %struct.TYPE_21__** %13, align 8
  br label %153

265:                                              ; preds = %259, %153
  %266 = load i32*, i32** %8, align 8
  %267 = call i32 @heap_free(i32* %266)
  %268 = load i32, i32* %14, align 4
  %269 = call i64 @FAILED(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = load i32, i32* %14, align 4
  store i32 %272, i32* %3, align 4
  br label %305

273:                                              ; preds = %265
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp eq i32 %274, %275
  %277 = zext i1 %276 to i32
  %278 = call i32 @assert(i32 %277)
  %279 = load i32, i32* %11, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %299, label %281

281:                                              ; preds = %273
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %283 = load i32, i32* @OP_jmp, align 4
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @push_instr_uint(%struct.TYPE_20__* %282, i32 %283, i32 %285)
  store i32 %286, i32* %14, align 4
  %287 = load i32, i32* %14, align 4
  %288 = call i64 @FAILED(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %281
  %291 = load i32, i32* %14, align 4
  store i32 %291, i32* %3, align 4
  br label %305

292:                                              ; preds = %281
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %294 = load i32, i32* %10, align 4
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @set_arg_uint(%struct.TYPE_20__* %293, i32 %294, i32 %297)
  br label %299

299:                                              ; preds = %292, %273
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @label_set_addr(%struct.TYPE_20__* %300, i32 %302)
  %304 = load i32, i32* @S_OK, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %299, %290, %271, %145, %70, %40, %31
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local i32 @compile_expression(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @alloc_label(%struct.TYPE_20__*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @push_instr(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @push_instr_uint(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @set_arg_uint(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @compile_statement(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @label_set_addr(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
