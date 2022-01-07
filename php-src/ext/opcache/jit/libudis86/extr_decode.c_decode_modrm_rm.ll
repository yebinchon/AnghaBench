; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_modrm_rm.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_modrm_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, i32 }
%struct.ud_operand = type { i64, i64, i32, i64, i32, i32 }

@UD_OP_MEM = common dso_local global i32 0, align 4
@UD_R_RAX = common dso_local global i8* null, align 8
@UD_R_RIP = common dso_local global i64 0, align 8
@UD_R_RSP = common dso_local global i64 0, align 8
@UD_NONE = common dso_local global i32 0, align 4
@UD_R_RBP = common dso_local global i64 0, align 8
@UD_R_R13 = common dso_local global i64 0, align 8
@UD_R_EAX = common dso_local global i8* null, align 8
@UD_R_ESP = common dso_local global i64 0, align 8
@UD_R_EBP = common dso_local global i64 0, align 8
@UD_R_BX = common dso_local global i32 0, align 4
@UD_R_BP = common dso_local global i32 0, align 4
@UD_R_SI = common dso_local global i32 0, align 4
@UD_R_DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ud*, %struct.ud_operand*, i8, i32)* @decode_modrm_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_modrm_rm(%struct.ud* %0, %struct.ud_operand* %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.ud*, align 8
  %6 = alloca %struct.ud_operand*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [8 x i32], align 16
  %13 = alloca [8 x i32], align 16
  store %struct.ud* %0, %struct.ud** %5, align 8
  store %struct.ud_operand* %1, %struct.ud_operand** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %14 = load %struct.ud*, %struct.ud** %5, align 8
  %15 = call i32 @modrm(%struct.ud* %14)
  %16 = call zeroext i8 @MODRM_MOD(i32 %15)
  store i8 %16, i8* %10, align 1
  %17 = load %struct.ud*, %struct.ud** %5, align 8
  %18 = getelementptr inbounds %struct.ud, %struct.ud* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @REX_B(i32 %19)
  %21 = shl i32 %20, 3
  %22 = load %struct.ud*, %struct.ud** %5, align 8
  %23 = call i32 @modrm(%struct.ud* %22)
  %24 = call i32 @MODRM_RM(i32 %23)
  %25 = or i32 %21, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %11, align 1
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load %struct.ud*, %struct.ud** %5, align 8
  %32 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %33 = load i8, i8* %7, align 1
  %34 = load i8, i8* %11, align 1
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @decode_reg(%struct.ud* %31, %struct.ud_operand* %32, i8 zeroext %33, i8 zeroext %34, i32 %35)
  br label %401

37:                                               ; preds = %4
  %38 = load i32, i32* @UD_OP_MEM, align 4
  %39 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %40 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ud*, %struct.ud** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @resolve_operand_size(%struct.ud* %41, i32 %42)
  %44 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %45 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ud*, %struct.ud** %5, align 8
  %47 = getelementptr inbounds %struct.ud, %struct.ud* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 64
  br i1 %49, label %50, label %181

50:                                               ; preds = %37
  %51 = load i8*, i8** @UD_R_RAX, align 8
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %51, i64 %54
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %58 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i64 8, i64* %9, align 8
  br label %84

63:                                               ; preds = %50
  %64 = load i8, i8* %10, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i64 32, i64* %9, align 8
  br label %83

68:                                               ; preds = %63
  %69 = load i8, i8* %10, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i8, i8* %11, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 7
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* @UD_R_RIP, align 8
  %79 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %80 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  store i64 32, i64* %9, align 8
  br label %82

81:                                               ; preds = %72, %68
  store i64 0, i64* %9, align 8
  br label %82

82:                                               ; preds = %81, %77
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i8, i8* %11, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 7
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %172

89:                                               ; preds = %84
  %90 = load %struct.ud*, %struct.ud** %5, align 8
  %91 = call i32 @inp_next(%struct.ud* %90)
  %92 = load i8*, i8** @UD_R_RAX, align 8
  %93 = load %struct.ud*, %struct.ud** %5, align 8
  %94 = call i32 @inp_curr(%struct.ud* %93)
  %95 = call i32 @SIB_B(i32 %94)
  %96 = load %struct.ud*, %struct.ud** %5, align 8
  %97 = getelementptr inbounds %struct.ud, %struct.ud* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @REX_B(i32 %98)
  %100 = shl i32 %99, 3
  %101 = or i32 %95, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr i8, i8* %92, i64 %102
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %106 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i8*, i8** @UD_R_RAX, align 8
  %108 = load %struct.ud*, %struct.ud** %5, align 8
  %109 = call i32 @inp_curr(%struct.ud* %108)
  %110 = call i32 @SIB_I(i32 %109)
  %111 = load %struct.ud*, %struct.ud** %5, align 8
  %112 = getelementptr inbounds %struct.ud, %struct.ud* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @REX_X(i32 %113)
  %115 = shl i32 %114, 3
  %116 = or i32 %110, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr i8, i8* %107, i64 %117
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %121 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %123 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @UD_R_RSP, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %89
  %128 = load i32, i32* @UD_NONE, align 4
  %129 = zext i32 %128 to i64
  %130 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %131 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* @UD_NONE, align 4
  %133 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %134 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  br label %143

135:                                              ; preds = %89
  %136 = load %struct.ud*, %struct.ud** %5, align 8
  %137 = call i32 @inp_curr(%struct.ud* %136)
  %138 = call i32 @SIB_S(i32 %137)
  %139 = shl i32 1, %138
  %140 = and i32 %139, -2
  %141 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %142 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %135, %127
  %144 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %145 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @UD_R_RBP, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %151 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @UD_R_R13, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %149, %143
  %156 = load i8, i8* %10, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i32, i32* @UD_NONE, align 4
  %161 = zext i32 %160 to i64
  %162 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %163 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %159, %155
  %165 = load i8, i8* %10, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i64 8, i64* %9, align 8
  br label %170

169:                                              ; preds = %164
  store i64 32, i64* %9, align 8
  br label %170

170:                                              ; preds = %169, %168
  br label %171

171:                                              ; preds = %170, %149
  br label %180

172:                                              ; preds = %84
  %173 = load i32, i32* @UD_NONE, align 4
  %174 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %175 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* @UD_NONE, align 4
  %177 = zext i32 %176 to i64
  %178 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %179 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %172, %171
  br label %390

181:                                              ; preds = %37
  %182 = load %struct.ud*, %struct.ud** %5, align 8
  %183 = getelementptr inbounds %struct.ud, %struct.ud* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 32
  br i1 %185, label %186, label %310

186:                                              ; preds = %181
  %187 = load i8*, i8** @UD_R_EAX, align 8
  %188 = load i8, i8* %11, align 1
  %189 = zext i8 %188 to i32
  %190 = sext i32 %189 to i64
  %191 = getelementptr i8, i8* %187, i64 %190
  %192 = ptrtoint i8* %191 to i64
  %193 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %194 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load i8, i8* %10, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  store i64 8, i64* %9, align 8
  br label %220

199:                                              ; preds = %186
  %200 = load i8, i8* %10, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i64 32, i64* %9, align 8
  br label %219

204:                                              ; preds = %199
  %205 = load i8, i8* %10, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load i8, i8* %11, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %210, 5
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load i32, i32* @UD_NONE, align 4
  %214 = zext i32 %213 to i64
  %215 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %216 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %215, i32 0, i32 0
  store i64 %214, i64* %216, align 8
  store i64 32, i64* %9, align 8
  br label %218

217:                                              ; preds = %208, %204
  store i64 0, i64* %9, align 8
  br label %218

218:                                              ; preds = %217, %212
  br label %219

219:                                              ; preds = %218, %203
  br label %220

220:                                              ; preds = %219, %198
  %221 = load i8, i8* %11, align 1
  %222 = zext i8 %221 to i32
  %223 = and i32 %222, 7
  %224 = icmp eq i32 %223, 4
  br i1 %224, label %225, label %301

225:                                              ; preds = %220
  %226 = load %struct.ud*, %struct.ud** %5, align 8
  %227 = call i32 @inp_next(%struct.ud* %226)
  %228 = load %struct.ud*, %struct.ud** %5, align 8
  %229 = call i32 @inp_curr(%struct.ud* %228)
  %230 = call i32 @SIB_S(i32 %229)
  %231 = shl i32 1, %230
  %232 = and i32 %231, -2
  %233 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %234 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  %235 = load i8*, i8** @UD_R_EAX, align 8
  %236 = load %struct.ud*, %struct.ud** %5, align 8
  %237 = call i32 @inp_curr(%struct.ud* %236)
  %238 = call i32 @SIB_I(i32 %237)
  %239 = load %struct.ud*, %struct.ud** %5, align 8
  %240 = getelementptr inbounds %struct.ud, %struct.ud* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @REX_X(i32 %241)
  %243 = shl i32 %242, 3
  %244 = or i32 %238, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr i8, i8* %235, i64 %245
  %247 = ptrtoint i8* %246 to i64
  %248 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %249 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %248, i32 0, i32 1
  store i64 %247, i64* %249, align 8
  %250 = load i8*, i8** @UD_R_EAX, align 8
  %251 = load %struct.ud*, %struct.ud** %5, align 8
  %252 = call i32 @inp_curr(%struct.ud* %251)
  %253 = call i32 @SIB_B(i32 %252)
  %254 = load %struct.ud*, %struct.ud** %5, align 8
  %255 = getelementptr inbounds %struct.ud, %struct.ud* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @REX_B(i32 %256)
  %258 = shl i32 %257, 3
  %259 = or i32 %253, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr i8, i8* %250, i64 %260
  %262 = ptrtoint i8* %261 to i64
  %263 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %264 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %263, i32 0, i32 0
  store i64 %262, i64* %264, align 8
  %265 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %266 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @UD_R_ESP, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %278

270:                                              ; preds = %225
  %271 = load i32, i32* @UD_NONE, align 4
  %272 = zext i32 %271 to i64
  %273 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %274 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %273, i32 0, i32 1
  store i64 %272, i64* %274, align 8
  %275 = load i32, i32* @UD_NONE, align 4
  %276 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %277 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 8
  br label %278

278:                                              ; preds = %270, %225
  %279 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %280 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @UD_R_EBP, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %300

284:                                              ; preds = %278
  %285 = load i8, i8* %10, align 1
  %286 = zext i8 %285 to i32
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load i32, i32* @UD_NONE, align 4
  %290 = zext i32 %289 to i64
  %291 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %292 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %291, i32 0, i32 0
  store i64 %290, i64* %292, align 8
  br label %293

293:                                              ; preds = %288, %284
  %294 = load i8, i8* %10, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %297, label %298

297:                                              ; preds = %293
  store i64 8, i64* %9, align 8
  br label %299

298:                                              ; preds = %293
  store i64 32, i64* %9, align 8
  br label %299

299:                                              ; preds = %298, %297
  br label %300

300:                                              ; preds = %299, %278
  br label %309

301:                                              ; preds = %220
  %302 = load i32, i32* @UD_NONE, align 4
  %303 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %304 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  %305 = load i32, i32* @UD_NONE, align 4
  %306 = zext i32 %305 to i64
  %307 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %308 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %307, i32 0, i32 1
  store i64 %306, i64* %308, align 8
  br label %309

309:                                              ; preds = %301, %300
  br label %389

310:                                              ; preds = %181
  %311 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %312 = load i32, i32* @UD_R_BX, align 4
  store i32 %312, i32* %311, align 4
  %313 = getelementptr inbounds i32, i32* %311, i64 1
  %314 = load i32, i32* @UD_R_BX, align 4
  store i32 %314, i32* %313, align 4
  %315 = getelementptr inbounds i32, i32* %313, i64 1
  %316 = load i32, i32* @UD_R_BP, align 4
  store i32 %316, i32* %315, align 4
  %317 = getelementptr inbounds i32, i32* %315, i64 1
  %318 = load i32, i32* @UD_R_BP, align 4
  store i32 %318, i32* %317, align 4
  %319 = getelementptr inbounds i32, i32* %317, i64 1
  %320 = load i32, i32* @UD_R_SI, align 4
  store i32 %320, i32* %319, align 4
  %321 = getelementptr inbounds i32, i32* %319, i64 1
  %322 = load i32, i32* @UD_R_DI, align 4
  store i32 %322, i32* %321, align 4
  %323 = getelementptr inbounds i32, i32* %321, i64 1
  %324 = load i32, i32* @UD_R_BP, align 4
  store i32 %324, i32* %323, align 4
  %325 = getelementptr inbounds i32, i32* %323, i64 1
  %326 = load i32, i32* @UD_R_BX, align 4
  store i32 %326, i32* %325, align 4
  %327 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %328 = load i32, i32* @UD_R_SI, align 4
  store i32 %328, i32* %327, align 4
  %329 = getelementptr inbounds i32, i32* %327, i64 1
  %330 = load i32, i32* @UD_R_DI, align 4
  store i32 %330, i32* %329, align 4
  %331 = getelementptr inbounds i32, i32* %329, i64 1
  %332 = load i32, i32* @UD_R_SI, align 4
  store i32 %332, i32* %331, align 4
  %333 = getelementptr inbounds i32, i32* %331, i64 1
  %334 = load i32, i32* @UD_R_DI, align 4
  store i32 %334, i32* %333, align 4
  %335 = getelementptr inbounds i32, i32* %333, i64 1
  %336 = load i32, i32* @UD_NONE, align 4
  store i32 %336, i32* %335, align 4
  %337 = getelementptr inbounds i32, i32* %335, i64 1
  %338 = load i32, i32* @UD_NONE, align 4
  store i32 %338, i32* %337, align 4
  %339 = getelementptr inbounds i32, i32* %337, i64 1
  %340 = load i32, i32* @UD_NONE, align 4
  store i32 %340, i32* %339, align 4
  %341 = getelementptr inbounds i32, i32* %339, i64 1
  %342 = load i32, i32* @UD_NONE, align 4
  store i32 %342, i32* %341, align 4
  %343 = load i8, i8* %11, align 1
  %344 = zext i8 %343 to i32
  %345 = and i32 %344, 7
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = zext i32 %348 to i64
  %350 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %351 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %350, i32 0, i32 0
  store i64 %349, i64* %351, align 8
  %352 = load i8, i8* %11, align 1
  %353 = zext i8 %352 to i32
  %354 = and i32 %353, 7
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = zext i32 %357 to i64
  %359 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %360 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %359, i32 0, i32 1
  store i64 %358, i64* %360, align 8
  %361 = load i32, i32* @UD_NONE, align 4
  %362 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %363 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %362, i32 0, i32 2
  store i32 %361, i32* %363, align 8
  %364 = load i8, i8* %10, align 1
  %365 = zext i8 %364 to i32
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %376

367:                                              ; preds = %310
  %368 = load i8, i8* %11, align 1
  %369 = zext i8 %368 to i32
  %370 = icmp eq i32 %369, 6
  br i1 %370, label %371, label %376

371:                                              ; preds = %367
  store i64 16, i64* %9, align 8
  %372 = load i32, i32* @UD_NONE, align 4
  %373 = zext i32 %372 to i64
  %374 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %375 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %374, i32 0, i32 0
  store i64 %373, i64* %375, align 8
  br label %388

376:                                              ; preds = %367, %310
  %377 = load i8, i8* %10, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp eq i32 %378, 1
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  store i64 8, i64* %9, align 8
  br label %387

381:                                              ; preds = %376
  %382 = load i8, i8* %10, align 1
  %383 = zext i8 %382 to i32
  %384 = icmp eq i32 %383, 2
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  store i64 16, i64* %9, align 8
  br label %386

386:                                              ; preds = %385, %381
  br label %387

387:                                              ; preds = %386, %380
  br label %388

388:                                              ; preds = %387, %371
  br label %389

389:                                              ; preds = %388, %309
  br label %390

390:                                              ; preds = %389, %180
  %391 = load i64, i64* %9, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %390
  %394 = load %struct.ud*, %struct.ud** %5, align 8
  %395 = load i64, i64* %9, align 8
  %396 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %397 = call i32 @decode_mem_disp(%struct.ud* %394, i64 %395, %struct.ud_operand* %396)
  br label %401

398:                                              ; preds = %390
  %399 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %400 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %399, i32 0, i32 3
  store i64 0, i64* %400, align 8
  br label %401

401:                                              ; preds = %30, %398, %393
  ret void
}

declare dso_local zeroext i8 @MODRM_MOD(i32) #1

declare dso_local i32 @modrm(%struct.ud*) #1

declare dso_local i32 @REX_B(i32) #1

declare dso_local i32 @MODRM_RM(i32) #1

declare dso_local i32 @decode_reg(%struct.ud*, %struct.ud_operand*, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @resolve_operand_size(%struct.ud*, i32) #1

declare dso_local i32 @inp_next(%struct.ud*) #1

declare dso_local i32 @SIB_B(i32) #1

declare dso_local i32 @inp_curr(%struct.ud*) #1

declare dso_local i32 @SIB_I(i32) #1

declare dso_local i32 @REX_X(i32) #1

declare dso_local i32 @SIB_S(i32) #1

declare dso_local i32 @decode_mem_disp(%struct.ud*, i64, %struct.ud_operand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
