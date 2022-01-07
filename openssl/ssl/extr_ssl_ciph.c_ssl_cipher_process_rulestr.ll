; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_ciph.c_ssl_cipher_process_rulestr.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_ciph.c_ssl_cipher_process_rulestr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@CIPHER_DEL = common dso_local global i32 0, align 4
@CIPHER_ORD = common dso_local global i32 0, align 4
@CIPHER_KILL = common dso_local global i32 0, align 4
@CIPHER_SPECIAL = common dso_local global i32 0, align 4
@CIPHER_ADD = common dso_local global i32 0, align 4
@SSL_F_SSL_CIPHER_PROCESS_RULESTR = common dso_local global i32 0, align 4
@SSL_R_INVALID_COMMAND = common dso_local global i32 0, align 4
@SSL_STRONG_MASK = common dso_local global i32 0, align 4
@SSL_DEFAULT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"STRENGTH\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SECLEVEL=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**, i32**, %struct.TYPE_5__**, %struct.TYPE_6__*)* @ssl_cipher_process_rulestr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_cipher_process_rulestr(i8* %0, i32** %1, i32** %2, %struct.TYPE_5__** %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %26, align 4
  store i32 1, i32* %23, align 4
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %17, align 8
  br label %30

30:                                               ; preds = %597, %78, %5
  %31 = load i8*, i8** %17, align 8
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %27, align 1
  %33 = load i8, i8* %27, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %598

37:                                               ; preds = %30
  %38 = load i8, i8* %27, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @CIPHER_DEL, align 4
  store i32 %42, i32* %22, align 4
  %43 = load i8*, i8** %17, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %17, align 8
  br label %74

45:                                               ; preds = %37
  %46 = load i8, i8* %27, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 43
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @CIPHER_ORD, align 4
  store i32 %50, i32* %22, align 4
  %51 = load i8*, i8** %17, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %17, align 8
  br label %73

53:                                               ; preds = %45
  %54 = load i8, i8* %27, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 33
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @CIPHER_KILL, align 4
  store i32 %58, i32* %22, align 4
  %59 = load i8*, i8** %17, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %17, align 8
  br label %72

61:                                               ; preds = %53
  %62 = load i8, i8* %27, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 64
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @CIPHER_SPECIAL, align 4
  store i32 %66, i32* %22, align 4
  %67 = load i8*, i8** %17, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %17, align 8
  br label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @CIPHER_ADD, align 4
  store i32 %70, i32* %22, align 4
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71, %57
  br label %73

73:                                               ; preds = %72, %49
  br label %74

74:                                               ; preds = %73, %41
  %75 = load i8, i8* %27, align 1
  %76 = call i64 @ITEM_SEP(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8*, i8** %17, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %17, align 8
  br label %30

81:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %82

82:                                               ; preds = %487, %81
  %83 = load i8*, i8** %17, align 8
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %27, align 1
  %85 = load i8*, i8** %17, align 8
  store i8* %85, i8** %18, align 8
  store i32 0, i32* %25, align 4
  br label %86

86:                                               ; preds = %124, %82
  %87 = load i8, i8* %27, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sge i32 %88, 65
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i8, i8* %27, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sle i32 %92, 90
  br i1 %93, label %122, label %94

94:                                               ; preds = %90, %86
  %95 = load i8, i8* %27, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sge i32 %96, 48
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i8, i8* %27, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sle i32 %100, 57
  br i1 %101, label %122, label %102

102:                                              ; preds = %98, %94
  %103 = load i8, i8* %27, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sge i32 %104, 97
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i8, i8* %27, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sle i32 %108, 122
  br i1 %109, label %122, label %110

110:                                              ; preds = %106, %102
  %111 = load i8, i8* %27, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 45
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load i8, i8* %27, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i8, i8* %27, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 61
  br label %122

122:                                              ; preds = %118, %114, %110, %106, %98, %90
  %123 = phi i1 [ true, %114 ], [ true, %110 ], [ true, %106 ], [ true, %98 ], [ true, %90 ], [ %121, %118 ]
  br i1 %123, label %124, label %130

124:                                              ; preds = %122
  %125 = load i8*, i8** %17, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %17, align 8
  %127 = load i8, i8* %126, align 1
  store i8 %127, i8* %27, align 1
  %128 = load i32, i32* %25, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %25, align 4
  br label %86

130:                                              ; preds = %122
  %131 = load i32, i32* %25, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* @SSL_F_SSL_CIPHER_PROCESS_RULESTR, align 4
  %135 = load i32, i32* @SSL_R_INVALID_COMMAND, align 4
  %136 = call i32 @SSLerr(i32 %134, i32 %135)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %137 = load i8*, i8** %17, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %17, align 8
  br label %488

139:                                              ; preds = %130
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* @CIPHER_SPECIAL, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 0, i32* %21, align 4
  br label %488

144:                                              ; preds = %139
  %145 = load i8, i8* %27, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 43
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  store i32 1, i32* %20, align 4
  %149 = load i8*, i8** %17, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %17, align 8
  br label %152

151:                                              ; preds = %144
  store i32 0, i32* %20, align 4
  br label %152

152:                                              ; preds = %151, %148
  store i32 0, i32* %21, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %26, align 4
  br label %153

153:                                              ; preds = %190, %152
  %154 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %154, i64 %156
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = icmp ne %struct.TYPE_5__* %158, null
  br i1 %159, label %160, label %191

160:                                              ; preds = %153
  %161 = load i8*, i8** %18, align 8
  %162 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %163 = load i32, i32* %19, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %162, i64 %164
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %25, align 4
  %170 = call i64 @strncmp(i8* %161, i8* %168, i32 %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %160
  %173 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %173, i64 %175
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* %25, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %172
  store i32 1, i32* %21, align 4
  br label %191

187:                                              ; preds = %172, %160
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %19, align 4
  br label %190

190:                                              ; preds = %187
  br label %153

191:                                              ; preds = %186, %153
  %192 = load i32, i32* %21, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  br label %488

195:                                              ; preds = %191
  %196 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %196, i64 %198
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %230

204:                                              ; preds = %195
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %204
  %208 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %208, i64 %210
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %207
  store i32 0, i32* %21, align 4
  br label %488

220:                                              ; preds = %207
  br label %229

221:                                              ; preds = %204
  %222 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %223 = load i32, i32* %19, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %222, i64 %224
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %11, align 4
  br label %229

229:                                              ; preds = %221, %220
  br label %230

230:                                              ; preds = %229, %195
  %231 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %232 = load i32, i32* %19, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %231, i64 %233
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %265

239:                                              ; preds = %230
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %243, i64 %245
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %12, align 4
  %251 = and i32 %250, %249
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %242
  store i32 0, i32* %21, align 4
  br label %488

255:                                              ; preds = %242
  br label %264

256:                                              ; preds = %239
  %257 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %258 = load i32, i32* %19, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %257, i64 %259
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %12, align 4
  br label %264

264:                                              ; preds = %256, %255
  br label %265

265:                                              ; preds = %264, %230
  %266 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %267 = load i32, i32* %19, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %266, i64 %268
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %300

274:                                              ; preds = %265
  %275 = load i32, i32* %13, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %291

277:                                              ; preds = %274
  %278 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %279 = load i32, i32* %19, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %278, i64 %280
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %13, align 4
  %286 = and i32 %285, %284
  store i32 %286, i32* %13, align 4
  %287 = load i32, i32* %13, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %277
  store i32 0, i32* %21, align 4
  br label %488

290:                                              ; preds = %277
  br label %299

291:                                              ; preds = %274
  %292 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %293 = load i32, i32* %19, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %292, i64 %294
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  store i32 %298, i32* %13, align 4
  br label %299

299:                                              ; preds = %291, %290
  br label %300

300:                                              ; preds = %299, %265
  %301 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %302 = load i32, i32* %19, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %301, i64 %303
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %335

309:                                              ; preds = %300
  %310 = load i32, i32* %14, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %326

312:                                              ; preds = %309
  %313 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %314 = load i32, i32* %19, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %313, i64 %315
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %14, align 4
  %321 = and i32 %320, %319
  store i32 %321, i32* %14, align 4
  %322 = load i32, i32* %14, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %312
  store i32 0, i32* %21, align 4
  br label %488

325:                                              ; preds = %312
  br label %334

326:                                              ; preds = %309
  %327 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %328 = load i32, i32* %19, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %327, i64 %329
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 4
  store i32 %333, i32* %14, align 4
  br label %334

334:                                              ; preds = %326, %325
  br label %335

335:                                              ; preds = %334, %300
  %336 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %337 = load i32, i32* %19, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %336, i64 %338
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @SSL_STRONG_MASK, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %383

346:                                              ; preds = %335
  %347 = load i32, i32* %15, align 4
  %348 = load i32, i32* @SSL_STRONG_MASK, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %372

351:                                              ; preds = %346
  %352 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %353 = load i32, i32* %19, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %352, i64 %354
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @SSL_STRONG_MASK, align 4
  %360 = and i32 %358, %359
  %361 = load i32, i32* @SSL_STRONG_MASK, align 4
  %362 = xor i32 %361, -1
  %363 = or i32 %360, %362
  %364 = load i32, i32* %15, align 4
  %365 = and i32 %364, %363
  store i32 %365, i32* %15, align 4
  %366 = load i32, i32* %15, align 4
  %367 = load i32, i32* @SSL_STRONG_MASK, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %371, label %370

370:                                              ; preds = %351
  store i32 0, i32* %21, align 4
  br label %488

371:                                              ; preds = %351
  br label %382

372:                                              ; preds = %346
  %373 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %374 = load i32, i32* %19, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %373, i64 %375
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @SSL_STRONG_MASK, align 4
  %381 = and i32 %379, %380
  store i32 %381, i32* %15, align 4
  br label %382

382:                                              ; preds = %372, %371
  br label %383

383:                                              ; preds = %382, %335
  %384 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %385 = load i32, i32* %19, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %384, i64 %386
  %388 = load %struct.TYPE_5__*, %struct.TYPE_5__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 5
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @SSL_DEFAULT_MASK, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %433

394:                                              ; preds = %383
  %395 = load i32, i32* %15, align 4
  %396 = load i32, i32* @SSL_DEFAULT_MASK, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %420

399:                                              ; preds = %394
  %400 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %401 = load i32, i32* %19, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %400, i64 %402
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @SSL_DEFAULT_MASK, align 4
  %408 = and i32 %406, %407
  %409 = load i32, i32* @SSL_DEFAULT_MASK, align 4
  %410 = xor i32 %409, -1
  %411 = or i32 %408, %410
  %412 = load i32, i32* %15, align 4
  %413 = and i32 %412, %411
  store i32 %413, i32* %15, align 4
  %414 = load i32, i32* %15, align 4
  %415 = load i32, i32* @SSL_DEFAULT_MASK, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %399
  store i32 0, i32* %21, align 4
  br label %488

419:                                              ; preds = %399
  br label %432

420:                                              ; preds = %394
  %421 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %422 = load i32, i32* %19, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %421, i64 %423
  %425 = load %struct.TYPE_5__*, %struct.TYPE_5__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 5
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* @SSL_DEFAULT_MASK, align 4
  %429 = and i32 %427, %428
  %430 = load i32, i32* %15, align 4
  %431 = or i32 %430, %429
  store i32 %431, i32* %15, align 4
  br label %432

432:                                              ; preds = %420, %419
  br label %433

433:                                              ; preds = %432, %383
  %434 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %435 = load i32, i32* %19, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %434, i64 %436
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 8
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %450

442:                                              ; preds = %433
  %443 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %444 = load i32, i32* %19, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %443, i64 %445
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 6
  %449 = load i32, i32* %448, align 4
  store i32 %449, i32* %26, align 4
  br label %483

450:                                              ; preds = %433
  %451 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %452 = load i32, i32* %19, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %451, i64 %453
  %455 = load %struct.TYPE_5__*, %struct.TYPE_5__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 7
  %457 = load i32, i32* %456, align 8
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %482

459:                                              ; preds = %450
  %460 = load i32, i32* %16, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %473

462:                                              ; preds = %459
  %463 = load i32, i32* %16, align 4
  %464 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %465 = load i32, i32* %19, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %464, i64 %466
  %468 = load %struct.TYPE_5__*, %struct.TYPE_5__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i32 0, i32 7
  %470 = load i32, i32* %469, align 8
  %471 = icmp ne i32 %463, %470
  br i1 %471, label %472, label %473

472:                                              ; preds = %462
  store i32 0, i32* %21, align 4
  br label %488

473:                                              ; preds = %462, %459
  %474 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %475 = load i32, i32* %19, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %474, i64 %476
  %478 = load %struct.TYPE_5__*, %struct.TYPE_5__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i32 0, i32 7
  %480 = load i32, i32* %479, align 8
  store i32 %480, i32* %16, align 4
  br label %481

481:                                              ; preds = %473
  br label %482

482:                                              ; preds = %481, %450
  br label %483

483:                                              ; preds = %482, %442
  %484 = load i32, i32* %20, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %487, label %486

486:                                              ; preds = %483
  br label %488

487:                                              ; preds = %483
  br label %82

488:                                              ; preds = %486, %472, %418, %370, %324, %289, %254, %219, %194, %143, %133
  %489 = load i32, i32* %22, align 4
  %490 = load i32, i32* @CIPHER_SPECIAL, align 4
  %491 = icmp eq i32 %489, %490
  br i1 %491, label %492, label %557

492:                                              ; preds = %488
  store i32 0, i32* %24, align 4
  %493 = load i32, i32* %25, align 4
  %494 = icmp eq i32 %493, 8
  br i1 %494, label %495, label %503

495:                                              ; preds = %492
  %496 = load i8*, i8** %18, align 8
  %497 = call i64 @strncmp(i8* %496, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %499, label %503

499:                                              ; preds = %495
  %500 = load i32**, i32*** %7, align 8
  %501 = load i32**, i32*** %8, align 8
  %502 = call i32 @ssl_cipher_strength_sort(i32** %500, i32** %501)
  store i32 %502, i32* %24, align 4
  br label %535

503:                                              ; preds = %495, %492
  %504 = load i32, i32* %25, align 4
  %505 = icmp eq i32 %504, 10
  br i1 %505, label %506, label %530

506:                                              ; preds = %503
  %507 = load i8*, i8** %18, align 8
  %508 = call i64 @strncmp(i8* %507, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %509 = icmp eq i64 %508, 0
  br i1 %509, label %510, label %530

510:                                              ; preds = %506
  %511 = load i8*, i8** %18, align 8
  %512 = getelementptr inbounds i8, i8* %511, i64 9
  %513 = load i8, i8* %512, align 1
  %514 = sext i8 %513 to i32
  %515 = sub nsw i32 %514, 48
  store i32 %515, i32* %28, align 4
  %516 = load i32, i32* %28, align 4
  %517 = icmp slt i32 %516, 0
  br i1 %517, label %521, label %518

518:                                              ; preds = %510
  %519 = load i32, i32* %28, align 4
  %520 = icmp sgt i32 %519, 5
  br i1 %520, label %521, label %525

521:                                              ; preds = %518, %510
  %522 = load i32, i32* @SSL_F_SSL_CIPHER_PROCESS_RULESTR, align 4
  %523 = load i32, i32* @SSL_R_INVALID_COMMAND, align 4
  %524 = call i32 @SSLerr(i32 %522, i32 %523)
  br label %529

525:                                              ; preds = %518
  %526 = load i32, i32* %28, align 4
  %527 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i32 0, i32 0
  store i32 %526, i32* %528, align 4
  store i32 1, i32* %24, align 4
  br label %529

529:                                              ; preds = %525, %521
  br label %534

530:                                              ; preds = %506, %503
  %531 = load i32, i32* @SSL_F_SSL_CIPHER_PROCESS_RULESTR, align 4
  %532 = load i32, i32* @SSL_R_INVALID_COMMAND, align 4
  %533 = call i32 @SSLerr(i32 %531, i32 %532)
  br label %534

534:                                              ; preds = %530, %529
  br label %535

535:                                              ; preds = %534, %499
  %536 = load i32, i32* %24, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %539

538:                                              ; preds = %535
  store i32 0, i32* %23, align 4
  br label %539

539:                                              ; preds = %538, %535
  br label %540

540:                                              ; preds = %553, %539
  %541 = load i8*, i8** %17, align 8
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %551

545:                                              ; preds = %540
  %546 = load i8*, i8** %17, align 8
  %547 = load i8, i8* %546, align 1
  %548 = call i64 @ITEM_SEP(i8 signext %547)
  %549 = icmp ne i64 %548, 0
  %550 = xor i1 %549, true
  br label %551

551:                                              ; preds = %545, %540
  %552 = phi i1 [ false, %540 ], [ %550, %545 ]
  br i1 %552, label %553, label %556

553:                                              ; preds = %551
  %554 = load i8*, i8** %17, align 8
  %555 = getelementptr inbounds i8, i8* %554, i32 1
  store i8* %555, i8** %17, align 8
  br label %540

556:                                              ; preds = %551
  br label %591

557:                                              ; preds = %488
  %558 = load i32, i32* %21, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %572

560:                                              ; preds = %557
  %561 = load i32, i32* %26, align 4
  %562 = load i32, i32* %11, align 4
  %563 = load i32, i32* %12, align 4
  %564 = load i32, i32* %13, align 4
  %565 = load i32, i32* %14, align 4
  %566 = load i32, i32* %16, align 4
  %567 = load i32, i32* %15, align 4
  %568 = load i32, i32* %22, align 4
  %569 = load i32**, i32*** %7, align 8
  %570 = load i32**, i32*** %8, align 8
  %571 = call i32 @ssl_cipher_apply_rule(i32 %561, i32 %562, i32 %563, i32 %564, i32 %565, i32 %566, i32 %567, i32 %568, i32 -1, i32** %569, i32** %570)
  br label %590

572:                                              ; preds = %557
  br label %573

573:                                              ; preds = %586, %572
  %574 = load i8*, i8** %17, align 8
  %575 = load i8, i8* %574, align 1
  %576 = sext i8 %575 to i32
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %584

578:                                              ; preds = %573
  %579 = load i8*, i8** %17, align 8
  %580 = load i8, i8* %579, align 1
  %581 = call i64 @ITEM_SEP(i8 signext %580)
  %582 = icmp ne i64 %581, 0
  %583 = xor i1 %582, true
  br label %584

584:                                              ; preds = %578, %573
  %585 = phi i1 [ false, %573 ], [ %583, %578 ]
  br i1 %585, label %586, label %589

586:                                              ; preds = %584
  %587 = load i8*, i8** %17, align 8
  %588 = getelementptr inbounds i8, i8* %587, i32 1
  store i8* %588, i8** %17, align 8
  br label %573

589:                                              ; preds = %584
  br label %590

590:                                              ; preds = %589, %560
  br label %591

591:                                              ; preds = %590, %556
  %592 = load i8*, i8** %17, align 8
  %593 = load i8, i8* %592, align 1
  %594 = sext i8 %593 to i32
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %591
  br label %598

597:                                              ; preds = %591
  br label %30

598:                                              ; preds = %596, %36
  %599 = load i32, i32* %23, align 4
  ret i32 %599
}

declare dso_local i64 @ITEM_SEP(i8 signext) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ssl_cipher_strength_sort(i32**, i32**) #1

declare dso_local i32 @ssl_cipher_apply_rule(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
