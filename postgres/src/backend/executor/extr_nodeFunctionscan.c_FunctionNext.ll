; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeFunctionscan.c_FunctionNext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeFunctionscan.c_FunctionNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i64* }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i32, %struct.TYPE_15__, %struct.TYPE_18__*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__*, i32*, i32, i32 }

@EXEC_FLAG_BACKWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*)* @FunctionNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @FunctionNext(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %4, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %6, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %1
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %74

39:                                               ; preds = %30
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @EXEC_FLAG_BACKWARD, align 4
  %64 = and i32 %62, %63
  %65 = call i8* @ExecMakeTableFunctionResult(i32 %45, i32 %50, i32 %53, i32 %59, i32 %64)
  %66 = bitcast i8* %65 to i32*
  store i32* %66, i32** %11, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  store i32* %66, i32** %71, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @tuplestore_rescan(i32* %72)
  br label %74

74:                                               ; preds = %39, %30
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @ScanDirectionIsForward(i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = call i32 @tuplestore_gettupleslot(i32* %75, i64 %77, i32 0, %struct.TYPE_16__* %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %2, align 8
  br label %301

81:                                               ; preds = %1
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @ScanDirectionIsForward(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %98

93:                                               ; preds = %81
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = call i32 @ExecClearTuple(%struct.TYPE_16__* %99)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %268, %98
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %271

107:                                              ; preds = %101
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i64 %112
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** %12, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %146

118:                                              ; preds = %107
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @EXEC_FLAG_BACKWARD, align 4
  %137 = and i32 %135, %136
  %138 = call i8* @ExecMakeTableFunctionResult(i32 %121, i32 %126, i32 %129, i32 %132, i32 %137)
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 3
  store i32* %139, i32** %141, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @tuplestore_rescan(i32* %144)
  br label %146

146:                                              ; preds = %118, %107
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, -1
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = call i32 @ExecClearTuple(%struct.TYPE_16__* %160)
  br label %172

162:                                              ; preds = %151, %146
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i64 @ScanDirectionIsForward(i32 %166)
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = call i32 @tuplestore_gettupleslot(i32* %165, i64 %167, i32 0, %struct.TYPE_16__* %170)
  br label %172

172:                                              ; preds = %162, %157
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = call i64 @TupIsNull(%struct.TYPE_16__* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %219

178:                                              ; preds = %172
  %179 = load i32, i32* %5, align 4
  %180 = call i64 @ScanDirectionIsForward(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %178
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %187, %182, %178
  store i32 0, i32* %13, align 4
  br label %194

194:                                              ; preds = %215, %193
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %218

200:                                              ; preds = %194
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  store i64 0, i64* %206, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 1, i32* %212, align 4
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %215

215:                                              ; preds = %200
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %194

218:                                              ; preds = %194
  br label %267

219:                                              ; preds = %172
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %221, align 8
  %223 = call i32 @slot_getallattrs(%struct.TYPE_16__* %222)
  store i32 0, i32* %13, align 4
  br label %224

224:                                              ; preds = %263, %219
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %266

230:                                              ; preds = %224
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i64*, i64** %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  %242 = load i64*, i64** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  store i64 %239, i64* %245, align 8
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 %254, i32* %260, align 4
  %261 = load i32, i32* %10, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %10, align 4
  br label %263

263:                                              ; preds = %230
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %224

266:                                              ; preds = %224
  store i32 0, i32* %7, align 4
  br label %267

267:                                              ; preds = %266, %218
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %9, align 4
  br label %101

271:                                              ; preds = %101
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %293

276:                                              ; preds = %271
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @Int64GetDatumFast(i32 %279)
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  store i64 %280, i64* %286, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %10, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 0, i32* %292, align 4
  br label %293

293:                                              ; preds = %276, %271
  %294 = load i32, i32* %7, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %293
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %298 = call i32 @ExecStoreVirtualTuple(%struct.TYPE_16__* %297)
  br label %299

299:                                              ; preds = %296, %293
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %300, %struct.TYPE_16__** %2, align 8
  br label %301

301:                                              ; preds = %299, %74
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %302
}

declare dso_local i8* @ExecMakeTableFunctionResult(i32, i32, i32, i32, i32) #1

declare dso_local i32 @tuplestore_rescan(i32*) #1

declare dso_local i32 @tuplestore_gettupleslot(i32*, i64, i32, %struct.TYPE_16__*) #1

declare dso_local i64 @ScanDirectionIsForward(i32) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_16__*) #1

declare dso_local i64 @TupIsNull(%struct.TYPE_16__*) #1

declare dso_local i32 @slot_getallattrs(%struct.TYPE_16__*) #1

declare dso_local i64 @Int64GetDatumFast(i32) #1

declare dso_local i32 @ExecStoreVirtualTuple(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
