; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUse.c_cmdUse.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUse.c_cmdUse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32*, i32 }

@NO_ERROR = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i32] [i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [8 x i32] [i32 47, i32 68, i32 69, i32 76, i32 69, i32 84, i32 69, i32 0], align 4
@CONNECT_UPDATE_PROFILE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i32] [i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [13 x i32] [i32 47, i32 80, i32 69, i32 82, i32 83, i32 73, i32 83, i32 84, i32 69, i32 78, i32 84, i32 58, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i32] [i32 80, i32 101, i32 114, i32 115, i32 105, i32 115, i32 116, i32 101, i32 110, i32 116, i32 0], align 4
@RESOURCETYPE_DISK = common dso_local global i32 0, align 4
@CONNECT_REDIRECT = common dso_local global i32 0, align 4
@CONNECT_LOCALDRIVE = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@IDS_USE_NOW_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdUse(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = call i64 @EnumerateConnections(i8* null)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @NO_ERROR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ERROR_SUCCESS, align 4
  %26 = call i32 @PrintErrorMessage(i32 %25)
  br label %30

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @PrintError(i64 %28)
  br label %30

30:                                               ; preds = %27, %24
  store i32 0, i32* %3, align 4
  br label %333

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @ValidateDeviceName(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([11 x i32]* @.str to i8*))
  store i32 1, i32* %3, align 4
  br label %333

42:                                               ; preds = %34
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @EnumerateConnections(i8* %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @NO_ERROR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @ERROR_SUCCESS, align 4
  %52 = call i32 @PrintErrorMessage(i32 %51)
  br label %56

53:                                               ; preds = %42
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @PrintError(i64 %54)
  br label %56

56:                                               ; preds = %53, %50
  store i32 0, i32* %3, align 4
  br label %333

57:                                               ; preds = %31
  br label %58

58:                                               ; preds = %57
  store i64 0, i64* %8, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @wcsicmp(i8* %61, i8* bitcast ([8 x i32]* @.str.1 to i8*))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i64 3, i64* %8, align 8
  br label %90

65:                                               ; preds = %58
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 42
  br i1 %72, label %73, label %89

73:                                               ; preds = %65
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @ValidateDeviceName(i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([11 x i32]* @.str to i8*))
  store i32 1, i32* %3, align 4
  br label %333

89:                                               ; preds = %81, %73, %65
  br label %90

90:                                               ; preds = %89, %64
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @wcsicmp(i8* %93, i8* bitcast ([8 x i32]* @.str.1 to i8*))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i64 2, i64* %8, align 8
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %97
  %101 = load i8**, i8*** %5, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds i8*, i8** %101, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @ValidateDeviceName(i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load i8**, i8*** %5, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 42
  br i1 %115, label %116, label %118

116:                                              ; preds = %107, %100
  %117 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([11 x i32]* @.str to i8*))
  store i32 1, i32* %3, align 4
  br label %333

118:                                              ; preds = %107
  %119 = load i8**, i8*** %5, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* @CONNECT_UPDATE_PROFILE, align 4
  %124 = load i64, i64* @FALSE, align 8
  %125 = call i64 @WNetCancelConnection2(i8* %122, i32 %123, i64 %124)
  store i64 %125, i64* %6, align 8
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* @NO_ERROR, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @PrintError(i64 %130)
  br label %132

132:                                              ; preds = %129, %118
  %133 = load i64, i64* %6, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %3, align 4
  br label %333

135:                                              ; preds = %97
  %136 = load i64, i64* @FALSE, align 8
  store i64 %136, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %138 = call i64 @ARRAYSIZE(i8* %137)
  store i64 %138, i64* %13, align 8
  %139 = load i8**, i8*** %5, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 3
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @wcslen(i8* %141)
  store i64 %142, i64* %7, align 8
  %143 = load i64, i64* %7, align 8
  %144 = icmp slt i64 %143, 4
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  store i32 1, i32* %3, align 4
  br label %333

147:                                              ; preds = %135
  %148 = load i8**, i8*** %5, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 3
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 92
  br i1 %154, label %163, label %155

155:                                              ; preds = %147
  %156 = load i8**, i8*** %5, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 3
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 92
  br i1 %162, label %163, label %165

163:                                              ; preds = %155, %147
  %164 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([5 x i32]* @.str.2 to i8*))
  store i32 1, i32* %3, align 4
  br label %333

165:                                              ; preds = %155
  %166 = load i32, i32* %4, align 4
  %167 = icmp sgt i32 %166, 4
  br i1 %167, label %168, label %265

168:                                              ; preds = %165
  %169 = load i8**, i8*** %5, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 4
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @wcslen(i8* %171)
  store i64 %172, i64* %7, align 8
  %173 = load i64, i64* %7, align 8
  %174 = icmp sgt i64 %173, 12
  br i1 %174, label %175, label %264

175:                                              ; preds = %168
  %176 = call i32 (...) @GetProcessHeap()
  %177 = load i64, i64* %7, align 8
  %178 = add nsw i64 %177, 1
  %179 = mul i64 %178, 1
  %180 = call i8* @HeapAlloc(i32 %176, i32 0, i64 %179)
  store i8* %180, i8** %14, align 8
  %181 = load i8*, i8** %14, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %263

183:                                              ; preds = %175
  store i32 0, i32* %15, align 4
  br label %184

184:                                              ; preds = %202, %183
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %7, align 8
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %184
  %190 = load i8**, i8*** %5, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 4
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = call signext i8 @towupper(i8 signext %196)
  %198 = load i8*, i8** %14, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  store i8 %197, i8* %201, align 1
  br label %202

202:                                              ; preds = %189
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  br label %184

205:                                              ; preds = %184
  %206 = load i8*, i8** %14, align 8
  %207 = call i8* @wcsstr(i8* %206, i8* bitcast ([13 x i32]* @.str.3 to i8*))
  %208 = load i8*, i8** %14, align 8
  %209 = icmp eq i8* %207, %208
  br i1 %209, label %210, label %259

210:                                              ; preds = %205
  %211 = load i8*, i8** %14, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 12
  store i8* %212, i8** %16, align 8
  %213 = load i64, i64* %7, align 8
  %214 = icmp eq i64 %213, 14
  br i1 %214, label %215, label %229

215:                                              ; preds = %210
  %216 = load i8*, i8** %16, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 78
  br i1 %220, label %221, label %229

221:                                              ; preds = %215
  %222 = load i8*, i8** %16, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 79
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = load i64, i64* @FALSE, align 8
  store i64 %228, i64* %9, align 8
  br label %258

229:                                              ; preds = %221, %215, %210
  %230 = load i64, i64* %7, align 8
  %231 = icmp eq i64 %230, 15
  br i1 %231, label %232, label %252

232:                                              ; preds = %229
  %233 = load i8*, i8** %16, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 89
  br i1 %237, label %238, label %252

238:                                              ; preds = %232
  %239 = load i8*, i8** %16, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 69
  br i1 %243, label %244, label %252

244:                                              ; preds = %238
  %245 = load i8*, i8** %16, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 2
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 83
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = load i64, i64* @TRUE, align 8
  store i64 %251, i64* %9, align 8
  br label %257

252:                                              ; preds = %244, %238, %232, %229
  %253 = call i32 (...) @GetProcessHeap()
  %254 = load i8*, i8** %14, align 8
  %255 = call i32 @HeapFree(i32 %253, i32 0, i8* %254)
  %256 = call i32 @PrintMessageStringV(i32 3952, i8* bitcast ([11 x i32]* @.str.4 to i8*))
  store i32 1, i32* %3, align 4
  br label %333

257:                                              ; preds = %250
  br label %258

258:                                              ; preds = %257, %227
  br label %259

259:                                              ; preds = %258, %205
  %260 = call i32 (...) @GetProcessHeap()
  %261 = load i8*, i8** %14, align 8
  %262 = call i32 @HeapFree(i32 %260, i32 0, i8* %261)
  br label %263

263:                                              ; preds = %259, %175
  br label %264

264:                                              ; preds = %263, %168
  br label %265

265:                                              ; preds = %264, %165
  %266 = load i32, i32* @RESOURCETYPE_DISK, align 4
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i32 %266, i32* %267, align 8
  %268 = load i8**, i8*** %5, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 2
  %270 = load i8*, i8** %269, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 0
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp ne i32 %273, 42
  br i1 %274, label %275, label %279

275:                                              ; preds = %265
  %276 = load i8**, i8*** %5, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 2
  %278 = load i8*, i8** %277, align 8
  br label %280

279:                                              ; preds = %265
  br label %280

280:                                              ; preds = %279, %275
  %281 = phi i8* [ %278, %275 ], [ null, %279 ]
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i8* %281, i8** %282, align 8
  %283 = load i8**, i8*** %5, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 3
  %285 = load i8*, i8** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i8* %285, i8** %286, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store i32* null, i32** %287, align 8
  %288 = load i32, i32* @CONNECT_REDIRECT, align 4
  %289 = load i64, i64* %9, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %280
  %292 = load i32, i32* @CONNECT_UPDATE_PROFILE, align 4
  br label %294

293:                                              ; preds = %280
  br label %294

294:                                              ; preds = %293, %291
  %295 = phi i32 [ %292, %291 ], [ 0, %293 ]
  %296 = or i32 %288, %295
  %297 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %298 = call i64 @WNetUseConnection(i32* null, %struct.TYPE_3__* %10, i32* null, i32* null, i32 %296, i8* %297, i64* %13, i64* %12)
  store i64 %298, i64* %6, align 8
  %299 = load i8**, i8*** %5, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 2
  %301 = load i8*, i8** %300, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 0
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 42
  br i1 %305, label %306, label %322

306:                                              ; preds = %294
  %307 = load i64, i64* %6, align 8
  %308 = load i64, i64* @NO_ERROR, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %322

310:                                              ; preds = %306
  %311 = load i64, i64* %12, align 8
  %312 = load i64, i64* @CONNECT_LOCALDRIVE, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %322

314:                                              ; preds = %310
  %315 = load i32, i32* @StdOut, align 4
  %316 = load i32, i32* @IDS_USE_NOW_CONNECTED, align 4
  %317 = load i8**, i8*** %5, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i64 3
  %319 = load i8*, i8** %318, align 8
  %320 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %321 = call i32 @ConResPrintf(i32 %315, i32 %316, i8* %319, i8* %320)
  br label %330

322:                                              ; preds = %310, %306, %294
  %323 = load i64, i64* %6, align 8
  %324 = load i64, i64* @NO_ERROR, align 8
  %325 = icmp ne i64 %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = load i64, i64* %6, align 8
  %328 = call i32 @PrintError(i64 %327)
  br label %329

329:                                              ; preds = %326, %322
  br label %330

330:                                              ; preds = %329, %314
  %331 = load i64, i64* %6, align 8
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %3, align 4
  br label %333

333:                                              ; preds = %330, %252, %163, %145, %132, %116, %87, %56, %40, %30
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

declare dso_local i64 @EnumerateConnections(i8*) #1

declare dso_local i32 @PrintErrorMessage(i32) #1

declare dso_local i32 @PrintError(i64) #1

declare dso_local i32 @ValidateDeviceName(i8*) #1

declare dso_local i32 @PrintMessageStringV(i32, i8*) #1

declare dso_local i64 @wcsicmp(i8*, i8*) #1

declare dso_local i64 @WNetCancelConnection2(i8*, i32, i64) #1

declare dso_local i64 @ARRAYSIZE(i8*) #1

declare dso_local i64 @wcslen(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local signext i8 @towupper(i8 signext) #1

declare dso_local i8* @wcsstr(i8*, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i64 @WNetUseConnection(i32*, %struct.TYPE_3__*, i32*, i32*, i32, i8*, i64*, i64*) #1

declare dso_local i32 @ConResPrintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
