; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_hash_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_hash_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Rd8 = #s6 ; Re8 = #S6\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Rd8 = #s6 ; Re8 = aslh (Rs8 )\00", align 1
@PACKET_PAIR = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [35 x i8] c" \09`~!@#$%^&*()_-=+[{]}\\|;:'\22,<.>/?\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@HEXAGON_HASH_G = common dso_local global i8 0, align 1
@HEXAGON_HASH_H = common dso_local global i8 0, align 1
@HEXAGON_HASH_I = common dso_local global i8 0, align 1
@HEXAGON_HASH_J = common dso_local global i8 0, align 1
@HEXAGON_HASH_2 = common dso_local global i8 0, align 1
@HEXAGON_HASH_1 = common dso_local global i32 0, align 4
@HEXAGON_HASH_4 = common dso_local global i8 0, align 1
@HEXAGON_HASH_0 = common dso_local global i8 0, align 1
@HEXAGON_HASH_K = common dso_local global i8 0, align 1
@HEXAGON_HASH_L = common dso_local global i8 0, align 1
@HEXAGON_HASH_M = common dso_local global i8 0, align 1
@HEXAGON_HASH_N = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"allocframe\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"deallocframe\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@HEXAGON_HASH_O = common dso_local global i8 0, align 1
@HEXAGON_HASH_P = common dso_local global i8 0, align 1
@HEXAGON_HASH_Z = common dso_local global i8 0, align 1
@HEXAGON_HASH_A = common dso_local global i8 0, align 1
@HEXAGON_HASH_B = common dso_local global i8 0, align 1
@HEXAGON_HASH_C = common dso_local global i8 0, align 1
@HEXAGON_HASH_D = common dso_local global i8 0, align 1
@HEXAGON_HASH_E = common dso_local global i8 0, align 1
@HEXAGON_HASH_F = common dso_local global i8 0, align 1
@pif = common dso_local global i64 0, align 8
@pnew = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @hexagon_hash_opcode(i8* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %1
  store i8* null, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* @PACKET_PAIR, align 1
  %23 = call i8* @strchr(i8* %21, i8 signext %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 61)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @strcspn(i8* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i64 %27, i64* %8, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i8* @strncmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 %29)
  %31 = icmp ne i8* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %92

36:                                               ; preds = %20
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %44, %36
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @ISSPACE(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  br label %39

47:                                               ; preds = %39
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @strncmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4)
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = call i8* @strncmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4)
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = call i8* @strncmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 4)
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load i8*, i8** %3, align 8
  %61 = call i8* @strncmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 4)
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = call i64 (...) @hexagon_if_arch_v4()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = call i64 (...) @hexagon_if_arch_v5()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %66, %63
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i8* @strncmp(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %71)
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %3, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i8* @strncmp(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %76)
  %78 = icmp ne i8* %77, null
  br i1 %78, label %91, label %79

79:                                               ; preds = %74, %69, %59, %55, %51, %47
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8, i8* @HEXAGON_HASH_G, align 1
  %84 = sext i8 %83 to i32
  br label %88

85:                                               ; preds = %79
  %86 = load i8, i8* @HEXAGON_HASH_H, align 1
  %87 = sext i8 %86 to i32
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i32 [ %84, %82 ], [ %87, %85 ]
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %2, align 1
  br label %308

91:                                               ; preds = %74, %66
  br label %125

92:                                               ; preds = %20
  %93 = load i8*, i8** %3, align 8
  store i8* %93, i8** %4, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i8* @strncmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4)
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load i8*, i8** %4, align 8
  %99 = call i8* @strncmp(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 4)
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = call i64 (...) @hexagon_if_arch_v4()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = call i64 (...) @hexagon_if_arch_v5()
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104, %101
  %108 = load i8*, i8** %4, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i8* @strncmp(i8* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %109)
  %111 = icmp ne i8* %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %107, %97, %92
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i8, i8* @HEXAGON_HASH_I, align 1
  %117 = sext i8 %116 to i32
  br label %121

118:                                              ; preds = %112
  %119 = load i8, i8* @HEXAGON_HASH_J, align 1
  %120 = sext i8 %119 to i32
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i32 [ %117, %115 ], [ %120, %118 ]
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %2, align 1
  br label %308

124:                                              ; preds = %107, %104
  br label %125

125:                                              ; preds = %124, %91
  %126 = load i8*, i8** %7, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %280

128:                                              ; preds = %125
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8* %130, i8** %4, align 8
  br label %131

131:                                              ; preds = %136, %128
  %132 = load i8*, i8** %4, align 8
  %133 = load i8, i8* %132, align 1
  %134 = call i64 @ISSPACE(i8 signext %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %4, align 8
  br label %131

139:                                              ; preds = %131
  %140 = load i8*, i8** %4, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 35
  br i1 %143, label %144, label %251

144:                                              ; preds = %139
  %145 = load i8*, i8** %4, align 8
  %146 = call i8* @strchr(i8* %145, i8 signext 40)
  store i8* %146, i8** %5, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %251

148:                                              ; preds = %144
  br label %149

149:                                              ; preds = %161, %148
  %150 = load i8*, i8** %4, align 8
  %151 = load i8, i8* %150, align 1
  %152 = call i64 @ISSPACE(i8 signext %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %4, align 8
  %156 = load i8, i8* %155, align 1
  %157 = call i64 @ISPUNCT(i8 signext %156)
  %158 = icmp ne i64 %157, 0
  br label %159

159:                                              ; preds = %154, %149
  %160 = phi i1 [ true, %149 ], [ %158, %154 ]
  br i1 %160, label %161, label %164

161:                                              ; preds = %159
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %4, align 8
  br label %149

164:                                              ; preds = %159
  %165 = load i8*, i8** %4, align 8
  %166 = load i8, i8* %165, align 1
  %167 = call signext i8 @TOLOWER(i8 signext %166)
  store i8 %167, i8* %10, align 1
  %168 = call i64 @ISALPHA(i8 signext %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %250

170:                                              ; preds = %164
  %171 = load i8, i8* %10, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 118
  br i1 %173, label %174, label %214

174:                                              ; preds = %170
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = call signext i8 @TOLOWER(i8 signext %177)
  store i8 %178, i8* %10, align 1
  %179 = load i8*, i8** %6, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %196

181:                                              ; preds = %174
  %182 = load i8, i8* @HEXAGON_HASH_2, align 1
  %183 = sext i8 %182 to i32
  %184 = load i8, i8* %10, align 1
  %185 = sext i8 %184 to i32
  %186 = add nsw i32 %183, %185
  %187 = sub nsw i32 %186, 97
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = load i32, i32* @HEXAGON_HASH_1, align 4
  br label %193

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %192, %190
  %194 = phi i32 [ %191, %190 ], [ 0, %192 ]
  %195 = add nsw i32 %187, %194
  br label %211

196:                                              ; preds = %174
  %197 = load i8, i8* @HEXAGON_HASH_4, align 1
  %198 = sext i8 %197 to i32
  %199 = load i8, i8* %10, align 1
  %200 = sext i8 %199 to i32
  %201 = add nsw i32 %198, %200
  %202 = sub nsw i32 %201, 97
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %196
  %206 = load i32, i32* @HEXAGON_HASH_1, align 4
  br label %208

207:                                              ; preds = %196
  br label %208

208:                                              ; preds = %207, %205
  %209 = phi i32 [ %206, %205 ], [ 0, %207 ]
  %210 = add nsw i32 %202, %209
  br label %211

211:                                              ; preds = %208, %193
  %212 = phi i32 [ %195, %193 ], [ %210, %208 ]
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %2, align 1
  br label %308

214:                                              ; preds = %170
  %215 = load i8*, i8** %6, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %232

217:                                              ; preds = %214
  %218 = load i8, i8* @HEXAGON_HASH_2, align 1
  %219 = sext i8 %218 to i32
  %220 = load i8, i8* %10, align 1
  %221 = sext i8 %220 to i32
  %222 = add nsw i32 %219, %221
  %223 = sub nsw i32 %222, 97
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %217
  %227 = load i32, i32* @HEXAGON_HASH_1, align 4
  br label %229

228:                                              ; preds = %217
  br label %229

229:                                              ; preds = %228, %226
  %230 = phi i32 [ %227, %226 ], [ 0, %228 ]
  %231 = add nsw i32 %223, %230
  br label %247

232:                                              ; preds = %214
  %233 = load i8, i8* @HEXAGON_HASH_0, align 1
  %234 = sext i8 %233 to i32
  %235 = load i8, i8* %10, align 1
  %236 = sext i8 %235 to i32
  %237 = add nsw i32 %234, %236
  %238 = sub nsw i32 %237, 97
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %232
  %242 = load i32, i32* @HEXAGON_HASH_1, align 4
  br label %244

243:                                              ; preds = %232
  br label %244

244:                                              ; preds = %243, %241
  %245 = phi i32 [ %242, %241 ], [ 0, %243 ]
  %246 = add nsw i32 %238, %245
  br label %247

247:                                              ; preds = %244, %229
  %248 = phi i32 [ %231, %229 ], [ %246, %244 ]
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %2, align 1
  br label %308

250:                                              ; preds = %164
  br label %279

251:                                              ; preds = %144, %139
  %252 = load i8*, i8** %6, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %265

254:                                              ; preds = %251
  %255 = load i32, i32* %9, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i8, i8* @HEXAGON_HASH_K, align 1
  %259 = sext i8 %258 to i32
  br label %263

260:                                              ; preds = %254
  %261 = load i8, i8* @HEXAGON_HASH_L, align 1
  %262 = sext i8 %261 to i32
  br label %263

263:                                              ; preds = %260, %257
  %264 = phi i32 [ %259, %257 ], [ %262, %260 ]
  br label %276

265:                                              ; preds = %251
  %266 = load i32, i32* %9, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load i8, i8* @HEXAGON_HASH_M, align 1
  %270 = sext i8 %269 to i32
  br label %274

271:                                              ; preds = %265
  %272 = load i8, i8* @HEXAGON_HASH_N, align 1
  %273 = sext i8 %272 to i32
  br label %274

274:                                              ; preds = %271, %268
  %275 = phi i32 [ %270, %268 ], [ %273, %271 ]
  br label %276

276:                                              ; preds = %274, %263
  %277 = phi i32 [ %264, %263 ], [ %275, %274 ]
  %278 = trunc i32 %277 to i8
  store i8 %278, i8* %2, align 1
  br label %308

279:                                              ; preds = %250
  br label %280

280:                                              ; preds = %279, %125
  %281 = load i8*, i8** %3, align 8
  %282 = call i8* @strncmp(i8* %281, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 10)
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %294

284:                                              ; preds = %280
  %285 = load i8*, i8** %3, align 8
  %286 = load i64, i64* %8, align 8
  %287 = call i8* @strncmp(i8* %285, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 %286)
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  %290 = load i8*, i8** %3, align 8
  %291 = load i64, i64* %8, align 8
  %292 = call i8* @strncmp(i8* %290, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 %291)
  %293 = icmp ne i8* %292, null
  br i1 %293, label %306, label %294

294:                                              ; preds = %289, %284, %280
  %295 = load i8*, i8** %6, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load i8, i8* @HEXAGON_HASH_O, align 1
  %299 = sext i8 %298 to i32
  br label %303

300:                                              ; preds = %294
  %301 = load i8, i8* @HEXAGON_HASH_P, align 1
  %302 = sext i8 %301 to i32
  br label %303

303:                                              ; preds = %300, %297
  %304 = phi i32 [ %299, %297 ], [ %302, %300 ]
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %2, align 1
  br label %308

306:                                              ; preds = %289
  %307 = load i8, i8* @HEXAGON_HASH_Z, align 1
  store i8 %307, i8* %2, align 1
  br label %308

308:                                              ; preds = %306, %303, %276, %247, %211, %121, %88
  %309 = load i8, i8* %2, align 1
  ret i8 %309
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i64 @hexagon_if_arch_v4(...) #1

declare dso_local i64 @hexagon_if_arch_v5(...) #1

declare dso_local i64 @ISPUNCT(i8 signext) #1

declare dso_local i64 @ISALPHA(i8 signext) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
