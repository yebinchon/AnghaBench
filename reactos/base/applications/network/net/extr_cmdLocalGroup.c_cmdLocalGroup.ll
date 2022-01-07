; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdLocalGroup.c_cmdLocalGroup.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdLocalGroup.c_cmdLocalGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32* }

@FALSE = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 83, i32 116, i32 97, i32 116, i32 117, i32 115, i32 58, i32 32, i32 37, i32 108, i32 117, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [19 x i32] [i32 77, i32 101, i32 109, i32 98, i32 101, i32 114, i32 32, i32 99, i32 111, i32 117, i32 110, i32 116, i32 58, i32 32, i32 37, i32 108, i32 117, i32 10, i32 0], align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 47, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@MSG_LOCALGROUP_SYNTAX = common dso_local global i32 0, align 4
@MSG_LOCALGROUP_HELP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i32] [i32 47, i32 97, i32 100, i32 100, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i32] [i32 47, i32 100, i32 101, i32 108, i32 101, i32 116, i32 101, i32 0], align 4
@.str.6 = private unnamed_addr constant [10 x i32] [i32 47, i32 99, i32 111, i32 109, i32 109, i32 101, i32 110, i32 116, i32 58, i32 0], align 4
@.str.7 = private unnamed_addr constant [8 x i32] [i32 47, i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 0], align 4
@StdErr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i32] [i32 84, i32 104, i32 101, i32 32, i32 47, i32 68, i32 79, i32 77, i32 65, i32 73, i32 78, i32 32, i32 111, i32 112, i32 116, i32 105, i32 111, i32 110, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 115, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 101, i32 100, i32 32, i32 121, i32 101, i32 116, i32 46, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdLocalGroup(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = call i32* (...) @EnumerateLocalGroups()
  store i32* %24, i32** %18, align 8
  %25 = load i32, i32* @StdOut, align 4
  %26 = load i32*, i32** %18, align 8
  %27 = call i32 (i32, i8*, ...) @ConPrintf(i32 %25, i8* bitcast ([13 x i32]* @.str to i8*), i32* %26)
  store i32 0, i32* %3, align 4
  br label %348

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32**, i32*** %5, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32* @DisplayLocalGroup(i32* %34)
  store i32* %35, i32** %18, align 8
  %36 = load i32, i32* @StdOut, align 4
  %37 = load i32*, i32** %18, align 8
  %38 = call i32 (i32, i8*, ...) @ConPrintf(i32 %36, i8* bitcast ([13 x i32]* @.str to i8*), i32* %37)
  store i32 0, i32* %3, align 4
  br label %348

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  store i32 2, i32* %6, align 4
  %41 = load i32**, i32*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 47
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load i32**, i32*** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %12, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %49, %40
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %76, %57
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i32**, i32*** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %79

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %59

79:                                               ; preds = %72, %59
  %80 = load i32, i32* @StdOut, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i32, i8*, ...) @ConPrintf(i32 %80, i8* bitcast ([19 x i32]* @.str.1 to i8*), i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = call i32 (...) @RtlGetProcessHeap()
  %87 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 8
  %91 = trunc i64 %90 to i32
  %92 = call %struct.TYPE_7__* @RtlAllocateHeap(i32 %86, i32 %87, i32 %91)
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %14, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %94 = icmp eq %struct.TYPE_7__* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %348

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %79
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %125, %97
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %98
  %103 = load i32**, i32*** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 47
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %128

112:                                              ; preds = %102
  %113 = load i32**, i32*** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32* %117, i32** %122, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %112
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %98

128:                                              ; preds = %111, %98
  br label %129

129:                                              ; preds = %202, %128
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %205

133:                                              ; preds = %129
  %134 = load i32**, i32*** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @_wcsicmp(i32* %138, i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %133
  %142 = call i32 @PrintMessageString(i32 4381)
  %143 = load i32, i32* @StdOut, align 4
  %144 = call i32 @ConPuts(i32 %143, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %145 = load i32, i32* @MSG_LOCALGROUP_SYNTAX, align 4
  %146 = call i32 @PrintNetMessage(i32 %145)
  %147 = load i32, i32* @MSG_LOCALGROUP_HELP, align 4
  %148 = call i32 @PrintNetMessage(i32 %147)
  store i32 0, i32* %3, align 4
  br label %348

149:                                              ; preds = %133
  %150 = load i32**, i32*** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = call i64 @_wcsicmp(i32* %154, i8* bitcast ([5 x i32]* @.str.4 to i8*))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i64, i64* @TRUE, align 8
  store i64 %158, i64* %10, align 8
  br label %200

159:                                              ; preds = %149
  %160 = load i32**, i32*** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = call i64 @_wcsicmp(i32* %164, i8* bitcast ([8 x i32]* @.str.5 to i8*))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i64, i64* @TRUE, align 8
  store i64 %168, i64* %11, align 8
  br label %199

169:                                              ; preds = %159
  %170 = load i32**, i32*** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = call i64 @_wcsnicmp(i32* %174, i8* bitcast ([10 x i32]* @.str.6 to i8*), i32 9)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %169
  %178 = load i32**, i32*** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 9
  store i32* %183, i32** %13, align 8
  br label %198

184:                                              ; preds = %169
  %185 = load i32**, i32*** %5, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = call i64 @_wcsicmp(i32* %189, i8* bitcast ([8 x i32]* @.str.7 to i8*))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = load i32, i32* @StdErr, align 4
  %194 = call i32 @ConPuts(i32 %193, i8* bitcast ([42 x i32]* @.str.8 to i8*))
  br label %197

195:                                              ; preds = %184
  %196 = call i32 @PrintErrorMessage(i32 3506)
  store i32 1, i32* %8, align 4
  br label %330

197:                                              ; preds = %192
  br label %198

198:                                              ; preds = %197, %177
  br label %199

199:                                              ; preds = %198, %167
  br label %200

200:                                              ; preds = %199, %157
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %129

205:                                              ; preds = %129
  %206 = load i32*, i32** %12, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 1, i32* %8, align 4
  br label %330

209:                                              ; preds = %205
  %210 = load i64, i64* %10, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i64, i64* %11, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  store i32 1, i32* %8, align 4
  br label %330

216:                                              ; preds = %212, %209
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %218 = icmp eq %struct.TYPE_7__* %217, null
  br i1 %218, label %219, label %290

219:                                              ; preds = %216
  %220 = load i64, i64* %10, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %237, label %222

222:                                              ; preds = %219
  %223 = load i64, i64* %11, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %237, label %225

225:                                              ; preds = %222
  %226 = load i32*, i32** %13, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = load i32*, i32** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32* %229, i32** %230, align 8
  %231 = load i32*, i32** %12, align 8
  %232 = ptrtoint %struct.TYPE_8__* %17 to i32
  %233 = call i32* @NetLocalGroupSetInfo(i32* null, i32* %231, i32 1002, i32 %232, i32* null)
  store i32* %233, i32** %18, align 8
  %234 = load i32, i32* @StdOut, align 4
  %235 = load i32*, i32** %18, align 8
  %236 = call i32 (i32, i8*, ...) @ConPrintf(i32 %234, i8* bitcast ([13 x i32]* @.str to i8*), i32* %235)
  br label %289

237:                                              ; preds = %225, %222, %219
  %238 = load i64, i64* %10, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %271

240:                                              ; preds = %237
  %241 = load i64, i64* %11, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %271, label %243

243:                                              ; preds = %240
  %244 = load i32*, i32** %13, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32*, i32** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32* %247, i32** %248, align 8
  br label %254

249:                                              ; preds = %243
  %250 = load i32*, i32** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32* %250, i32** %251, align 8
  %252 = load i32*, i32** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i32* %252, i32** %253, align 8
  br label %254

254:                                              ; preds = %249, %246
  %255 = load i32*, i32** %13, align 8
  %256 = icmp eq i32* %255, null
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 0, i32 1
  %259 = load i32*, i32** %13, align 8
  %260 = icmp eq i32* %259, null
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = ptrtoint %struct.TYPE_10__* %15 to i32
  br label %265

263:                                              ; preds = %254
  %264 = ptrtoint %struct.TYPE_9__* %16 to i32
  br label %265

265:                                              ; preds = %263, %261
  %266 = phi i32 [ %262, %261 ], [ %264, %263 ]
  %267 = call i32* @NetLocalGroupAdd(i32* null, i32 %258, i32 %266, i32* null)
  store i32* %267, i32** %18, align 8
  %268 = load i32, i32* @StdOut, align 4
  %269 = load i32*, i32** %18, align 8
  %270 = call i32 (i32, i8*, ...) @ConPrintf(i32 %268, i8* bitcast ([13 x i32]* @.str to i8*), i32* %269)
  br label %288

271:                                              ; preds = %240, %237
  %272 = load i64, i64* %10, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %286, label %274

274:                                              ; preds = %271
  %275 = load i64, i64* %11, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = load i32*, i32** %13, align 8
  %279 = icmp eq i32* %278, null
  br i1 %279, label %280, label %286

280:                                              ; preds = %277
  %281 = load i32*, i32** %12, align 8
  %282 = call i32* @NetLocalGroupDel(i32* null, i32* %281)
  store i32* %282, i32** %18, align 8
  %283 = load i32, i32* @StdOut, align 4
  %284 = load i32*, i32** %18, align 8
  %285 = call i32 (i32, i8*, ...) @ConPrintf(i32 %283, i8* bitcast ([13 x i32]* @.str to i8*), i32* %284)
  br label %287

286:                                              ; preds = %277, %274, %271
  store i32 1, i32* %8, align 4
  br label %287

287:                                              ; preds = %286, %280
  br label %288

288:                                              ; preds = %287, %265
  br label %289

289:                                              ; preds = %288, %228
  br label %329

290:                                              ; preds = %216
  %291 = load i64, i64* %10, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %308

293:                                              ; preds = %290
  %294 = load i64, i64* %11, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %308, label %296

296:                                              ; preds = %293
  %297 = load i32*, i32** %13, align 8
  %298 = icmp eq i32* %297, null
  br i1 %298, label %299, label %308

299:                                              ; preds = %296
  %300 = load i32*, i32** %12, align 8
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %302 = ptrtoint %struct.TYPE_7__* %301 to i32
  %303 = load i32, i32* %9, align 4
  %304 = call i32* @NetLocalGroupAddMembers(i32* null, i32* %300, i32 3, i32 %302, i32 %303)
  store i32* %304, i32** %18, align 8
  %305 = load i32, i32* @StdOut, align 4
  %306 = load i32*, i32** %18, align 8
  %307 = call i32 (i32, i8*, ...) @ConPrintf(i32 %305, i8* bitcast ([13 x i32]* @.str to i8*), i32* %306)
  br label %328

308:                                              ; preds = %296, %293, %290
  %309 = load i64, i64* %10, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %326, label %311

311:                                              ; preds = %308
  %312 = load i64, i64* %11, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %311
  %315 = load i32*, i32** %13, align 8
  %316 = icmp eq i32* %315, null
  br i1 %316, label %317, label %326

317:                                              ; preds = %314
  %318 = load i32*, i32** %12, align 8
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %320 = ptrtoint %struct.TYPE_7__* %319 to i32
  %321 = load i32, i32* %9, align 4
  %322 = call i32* @NetLocalGroupDelMembers(i32* null, i32* %318, i32 3, i32 %320, i32 %321)
  store i32* %322, i32** %18, align 8
  %323 = load i32, i32* @StdOut, align 4
  %324 = load i32*, i32** %18, align 8
  %325 = call i32 (i32, i8*, ...) @ConPrintf(i32 %323, i8* bitcast ([13 x i32]* @.str to i8*), i32* %324)
  br label %327

326:                                              ; preds = %314, %311, %308
  store i32 1, i32* %8, align 4
  br label %327

327:                                              ; preds = %326, %317
  br label %328

328:                                              ; preds = %327, %299
  br label %329

329:                                              ; preds = %328, %289
  br label %330

330:                                              ; preds = %329, %215, %208, %195
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %332 = icmp ne %struct.TYPE_7__* %331, null
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = call i32 (...) @RtlGetProcessHeap()
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %336 = call i32 @RtlFreeHeap(i32 %334, i32 0, %struct.TYPE_7__* %335)
  br label %337

337:                                              ; preds = %333, %330
  %338 = load i32, i32* %8, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %337
  %341 = call i32 @PrintMessageString(i32 4381)
  %342 = load i32, i32* @StdOut, align 4
  %343 = call i32 @ConPuts(i32 %342, i8* bitcast ([2 x i32]* @.str.3 to i8*))
  %344 = load i32, i32* @MSG_LOCALGROUP_SYNTAX, align 4
  %345 = call i32 @PrintNetMessage(i32 %344)
  br label %346

346:                                              ; preds = %340, %337
  %347 = load i32, i32* %8, align 4
  store i32 %347, i32* %3, align 4
  br label %348

348:                                              ; preds = %346, %141, %95, %31, %23
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local i32* @EnumerateLocalGroups(...) #1

declare dso_local i32 @ConPrintf(i32, i8*, ...) #1

declare dso_local i32* @DisplayLocalGroup(i32*) #1

declare dso_local %struct.TYPE_7__* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i64 @_wcsicmp(i32*, i8*) #1

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintNetMessage(i32) #1

declare dso_local i64 @_wcsnicmp(i32*, i8*, i32) #1

declare dso_local i32 @PrintErrorMessage(i32) #1

declare dso_local i32* @NetLocalGroupSetInfo(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @NetLocalGroupAdd(i32*, i32, i32, i32*) #1

declare dso_local i32* @NetLocalGroupDel(i32*, i32*) #1

declare dso_local i32* @NetLocalGroupAddMembers(i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @NetLocalGroupDelMembers(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
