; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_findTerm.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_findTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_27__*, %struct.TYPE_19__ }
%struct.TYPE_27__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_26__ = type { i32*, i32, i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8 }

@WO_ALL = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@WO_EQUIV = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_24__*, i32, i32, i32, i32, %struct.TYPE_26__*)* @findTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @findTerm(%struct.TYPE_24__* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_26__* %5) #0 {
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [22 x i32], align 16
  %25 = alloca %struct.TYPE_18__*, align 8
  %26 = alloca i8, align 1
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_26__* %5, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %15, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %16, align 8
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %21, align 4
  store i32 2, i32* %22, align 4
  store i32 2, i32* %23, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds [22 x i32], [22 x i32]* %24, i64 0, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds [22 x i32], [22 x i32]* %24, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %290, %6
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %8, align 8
  br label %39

39:                                               ; preds = %281, %37
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %41 = icmp ne %struct.TYPE_24__* %40, null
  br i1 %41, label %42, label %285

42:                                               ; preds = %39
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %44, align 8
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %14, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %18, align 4
  br label %49

49:                                               ; preds = %275, %42
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %280

52:                                               ; preds = %49
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %274

58:                                               ; preds = %52
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %274

65:                                               ; preds = %58
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %198

72:                                               ; preds = %65
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @WO_ALL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %198

81:                                               ; preds = %72
  %82 = load i32, i32* %21, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %177

84:                                               ; preds = %81
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %86 = icmp ne %struct.TYPE_26__* %85, null
  br i1 %86, label %87, label %177

87:                                               ; preds = %84
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @WO_ISNULL, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %177

94:                                               ; preds = %87
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %96, align 8
  store %struct.TYPE_27__* %97, %struct.TYPE_27__** %19, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %99, align 8
  store %struct.TYPE_25__* %100, %struct.TYPE_25__** %20, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 1
  store i8 %110, i8* %26, align 1
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %112 = load i8, i8* %26, align 1
  %113 = call i32 @sqlite3IndexAffinityOk(%struct.TYPE_27__* %111, i8 signext %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %94
  br label %275

116:                                              ; preds = %94
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call %struct.TYPE_18__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_25__* %121, i32 %124, i32 %127)
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %25, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %130 = icmp eq %struct.TYPE_18__* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %116
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  store %struct.TYPE_18__* %136, %struct.TYPE_18__** %25, align 8
  br label %137

137:                                              ; preds = %131, %116
  store i32 0, i32* %17, align 4
  br label %138

138:                                              ; preds = %159, %137
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %21, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %138
  %149 = load i32, i32* %17, align 4
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp sge i32 %149, %152
  %154 = zext i1 %153 to i32
  %155 = call i64 @NEVER(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %7, align 8
  br label %304

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %138

162:                                              ; preds = %138
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @sqlite3StrICmp(i32 %165, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %162
  br label %275

176:                                              ; preds = %162
  br label %177

177:                                              ; preds = %176, %87, %84, %81
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %177
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @WO_EQ, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %190, %struct.TYPE_23__** %15, align 8
  br label %302

191:                                              ; preds = %182, %177
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %193 = icmp eq %struct.TYPE_23__* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %195, %struct.TYPE_23__** %15, align 8
  br label %196

196:                                              ; preds = %194, %191
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197, %72, %65
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @WO_EQUIV, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %273

205:                                              ; preds = %198
  %206 = load i32, i32* %22, align 4
  %207 = getelementptr inbounds [22 x i32], [22 x i32]* %24, i64 0, i64 0
  %208 = call i32 @ArraySize(i32* %207)
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %210, label %273

210:                                              ; preds = %205
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = call %struct.TYPE_27__* @sqlite3ExprSkipCollate(i32 %215)
  store %struct.TYPE_27__* %216, %struct.TYPE_27__** %19, align 8
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @TK_COLUMN, align 8
  %221 = icmp eq i64 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  store i32 0, i32* %17, align 4
  br label %224

224:                                              ; preds = %249, %210
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %22, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %252

228:                                              ; preds = %224
  %229 = load i32, i32* %17, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [22 x i32], [22 x i32]* %24, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %232, %235
  br i1 %236, label %237, label %248

237:                                              ; preds = %228
  %238 = load i32, i32* %17, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [22 x i32], [22 x i32]* %24, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %242, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %237
  br label %252

248:                                              ; preds = %237, %228
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %17, align 4
  %251 = add nsw i32 %250, 2
  store i32 %251, i32* %17, align 4
  br label %224

252:                                              ; preds = %247, %224
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %22, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %272

256:                                              ; preds = %252
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %17, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [22 x i32], [22 x i32]* %24, i64 0, i64 %261
  store i32 %259, i32* %262, align 4
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %17, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [22 x i32], [22 x i32]* %24, i64 0, i64 %268
  store i32 %265, i32* %269, align 4
  %270 = load i32, i32* %22, align 4
  %271 = add nsw i32 %270, 2
  store i32 %271, i32* %22, align 4
  br label %272

272:                                              ; preds = %256, %252
  br label %273

273:                                              ; preds = %272, %205, %198
  br label %274

274:                                              ; preds = %273, %58, %52
  br label %275

275:                                              ; preds = %274, %175, %115
  %276 = load i32, i32* %18, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %18, align 4
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 1
  store %struct.TYPE_23__* %279, %struct.TYPE_23__** %14, align 8
  br label %49

280:                                              ; preds = %49
  br label %281

281:                                              ; preds = %280
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %283, align 8
  store %struct.TYPE_24__* %284, %struct.TYPE_24__** %8, align 8
  br label %39

285:                                              ; preds = %39
  %286 = load i32, i32* %23, align 4
  %287 = load i32, i32* %22, align 4
  %288 = icmp sge i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  br label %301

290:                                              ; preds = %285
  %291 = load i32, i32* %23, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %23, align 4
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds [22 x i32], [22 x i32]* %24, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %9, align 4
  %296 = load i32, i32* %23, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %23, align 4
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds [22 x i32], [22 x i32]* %24, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %10, align 4
  br label %37

301:                                              ; preds = %289
  br label %302

302:                                              ; preds = %301, %189
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %303, %struct.TYPE_23__** %7, align 8
  br label %304

304:                                              ; preds = %302, %157
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  ret %struct.TYPE_23__* %305
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3IndexAffinityOk(%struct.TYPE_27__*, i8 signext) #1

declare dso_local %struct.TYPE_18__* @sqlite3BinaryCompareCollSeq(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i64 @sqlite3StrICmp(i32, i32) #1

declare dso_local i32 @ArraySize(i32*) #1

declare dso_local %struct.TYPE_27__* @sqlite3ExprSkipCollate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
