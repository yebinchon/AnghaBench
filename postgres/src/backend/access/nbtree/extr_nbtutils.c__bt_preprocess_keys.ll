; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_preprocess_keys.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_preprocess_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__* }

@BTMaxStrategyNumber = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"btree index keys must be ordered by attribute\00", align 1
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@SK_SEARCHNULL = common dso_local global i32 0, align 4
@BTLessStrategyNumber = common dso_local global i32 0, align 4
@BTLessEqualStrategyNumber = common dso_local global i32 0, align 4
@BTGreaterStrategyNumber = common dso_local global i32 0, align 4
@BTGreaterEqualStrategyNumber = common dso_local global i32 0, align 4
@SK_ROW_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bt_preprocess_keys(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca %struct.TYPE_16__*, align 8
  %24 = alloca %struct.TYPE_16__*, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca %struct.TYPE_16__*, align 8
  %27 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %3, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %5, align 8
  %41 = load i32, i32* @BTMaxStrategyNumber, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %11, align 8
  %44 = alloca %struct.TYPE_16__*, i64 %42, align 16
  store i64 %42, i64* %12, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %1
  store i32 1, i32* %17, align 4
  br label %444

52:                                               ; preds = %1
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = icmp ne %struct.TYPE_16__* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %8, align 8
  br label %65

61:                                               ; preds = %52
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %8, align 8
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %9, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i64 0
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %10, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @ERROR, align 4
  %77 = call i32 @elog(i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %65
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %103

81:                                               ; preds = %78
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @_bt_fix_scankey_strategy(%struct.TYPE_16__* %82, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %92 = call i32 @memcpy(%struct.TYPE_16__* %90, %struct.TYPE_16__* %91, i32 4)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %101 = call i32 @_bt_mark_scankey_required(%struct.TYPE_16__* %100)
  br label %102

102:                                              ; preds = %99, %89
  store i32 1, i32* %17, align 4
  br label %444

103:                                              ; preds = %78
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %16, align 4
  %104 = mul nuw i64 8, %42
  %105 = trunc i64 %104 to i32
  %106 = call i32 @memset(%struct.TYPE_16__** %44, i32 0, i32 %105)
  store i32 0, i32* %14, align 4
  br label %107

107:                                              ; preds = %435, %103
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @_bt_fix_scankey_strategy(%struct.TYPE_16__* %112, i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  store i32 1, i32* %17, align 4
  br label %444

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %107
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %120
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %343

130:                                              ; preds = %124, %120
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @ERROR, align 4
  %143 = call i32 @elog(i32 %142, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %135, %130
  %145 = load i32, i32* @BTEqualStrategyNumber, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %147
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = icmp ne %struct.TYPE_16__* %149, null
  br i1 %150, label %151, label %206

151:                                              ; preds = %144
  %152 = load i32, i32* @BTEqualStrategyNumber, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %154
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  store %struct.TYPE_16__* %156, %struct.TYPE_16__** %19, align 8
  %157 = load i32, i32* @BTMaxStrategyNumber, align 4
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %202, %174, %151
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %15, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %203

162:                                              ; preds = %158
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %164
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  store %struct.TYPE_16__* %166, %struct.TYPE_16__** %20, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %168 = icmp ne %struct.TYPE_16__* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %162
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* @BTEqualStrategyNumber, align 4
  %172 = sub nsw i32 %171, 1
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %169, %162
  br label %158

175:                                              ; preds = %169
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @SK_SEARCHNULL, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  store i32 0, i32* %184, align 8
  store i32 1, i32* %17, align 4
  br label %444

185:                                              ; preds = %175
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %190 = call i64 @_bt_compare_scankey_args(%struct.TYPE_17__* %186, %struct.TYPE_16__* %187, %struct.TYPE_16__* %188, %struct.TYPE_16__* %189, i32* %13)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %185
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  store i32 1, i32* %17, align 4
  br label %444

198:                                              ; preds = %192
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %200
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %201, align 8
  br label %202

202:                                              ; preds = %198, %185
  br label %158

203:                                              ; preds = %158
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %203, %144
  %207 = load i32, i32* @BTLessStrategyNumber, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %209
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = icmp ne %struct.TYPE_16__* %211, null
  br i1 %212, label %213, label %252

213:                                              ; preds = %206
  %214 = load i32, i32* @BTLessEqualStrategyNumber, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %216
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = icmp ne %struct.TYPE_16__* %218, null
  br i1 %219, label %220, label %252

220:                                              ; preds = %213
  %221 = load i32, i32* @BTLessStrategyNumber, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %223
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  store %struct.TYPE_16__* %225, %struct.TYPE_16__** %21, align 8
  %226 = load i32, i32* @BTLessEqualStrategyNumber, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %228
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  store %struct.TYPE_16__* %230, %struct.TYPE_16__** %22, align 8
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %235 = call i64 @_bt_compare_scankey_args(%struct.TYPE_17__* %231, %struct.TYPE_16__* %232, %struct.TYPE_16__* %233, %struct.TYPE_16__* %234, i32* %13)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %220
  %238 = load i32, i32* %13, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load i32, i32* @BTLessEqualStrategyNumber, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %243
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %244, align 8
  br label %250

245:                                              ; preds = %237
  %246 = load i32, i32* @BTLessStrategyNumber, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %248
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %249, align 8
  br label %250

250:                                              ; preds = %245, %240
  br label %251

251:                                              ; preds = %250, %220
  br label %252

252:                                              ; preds = %251, %213, %206
  %253 = load i32, i32* @BTGreaterStrategyNumber, align 4
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %255
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %256, align 8
  %258 = icmp ne %struct.TYPE_16__* %257, null
  br i1 %258, label %259, label %298

259:                                              ; preds = %252
  %260 = load i32, i32* @BTGreaterEqualStrategyNumber, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %262
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %263, align 8
  %265 = icmp ne %struct.TYPE_16__* %264, null
  br i1 %265, label %266, label %298

266:                                              ; preds = %259
  %267 = load i32, i32* @BTGreaterStrategyNumber, align 4
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %269
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %270, align 8
  store %struct.TYPE_16__* %271, %struct.TYPE_16__** %23, align 8
  %272 = load i32, i32* @BTGreaterEqualStrategyNumber, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %274
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %275, align 8
  store %struct.TYPE_16__* %276, %struct.TYPE_16__** %24, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %281 = call i64 @_bt_compare_scankey_args(%struct.TYPE_17__* %277, %struct.TYPE_16__* %278, %struct.TYPE_16__* %279, %struct.TYPE_16__* %280, i32* %13)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %297

283:                                              ; preds = %266
  %284 = load i32, i32* %13, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %283
  %287 = load i32, i32* @BTGreaterEqualStrategyNumber, align 4
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %289
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %290, align 8
  br label %296

291:                                              ; preds = %283
  %292 = load i32, i32* @BTGreaterStrategyNumber, align 4
  %293 = sub nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %294
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %295, align 8
  br label %296

296:                                              ; preds = %291, %286
  br label %297

297:                                              ; preds = %296, %266
  br label %298

298:                                              ; preds = %297, %259, %252
  %299 = load i32, i32* @BTMaxStrategyNumber, align 4
  store i32 %299, i32* %15, align 4
  br label %300

300:                                              ; preds = %330, %298
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %301, -1
  store i32 %302, i32* %15, align 4
  %303 = icmp sge i32 %302, 0
  br i1 %303, label %304, label %331

304:                                              ; preds = %300
  %305 = load i32, i32* %15, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %306
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %307, align 8
  %309 = icmp ne %struct.TYPE_16__* %308, null
  br i1 %309, label %310, label %330

310:                                              ; preds = %304
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %312 = load i32, i32* %6, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %6, align 4
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i64 %314
  store %struct.TYPE_16__* %315, %struct.TYPE_16__** %25, align 8
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %317 = load i32, i32* %15, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %318
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %319, align 8
  %321 = call i32 @memcpy(%struct.TYPE_16__* %316, %struct.TYPE_16__* %320, i32 4)
  %322 = load i32, i32* %18, align 4
  %323 = load i32, i32* %16, align 4
  %324 = sub nsw i32 %323, 1
  %325 = icmp eq i32 %322, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %310
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %328 = call i32 @_bt_mark_scankey_required(%struct.TYPE_16__* %327)
  br label %329

329:                                              ; preds = %326, %310
  br label %330

330:                                              ; preds = %329, %304
  br label %300

331:                                              ; preds = %300
  %332 = load i32, i32* %14, align 4
  %333 = load i32, i32* %4, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %331
  br label %440

336:                                              ; preds = %331
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %16, align 4
  %340 = mul nuw i64 8, %42
  %341 = trunc i64 %340 to i32
  %342 = call i32 @memset(%struct.TYPE_16__** %44, i32 0, i32 %341)
  br label %343

343:                                              ; preds = %336, %124
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %346, 1
  store i32 %347, i32* %15, align 4
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @SK_ROW_HEADER, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %377

354:                                              ; preds = %343
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %356 = load i32, i32* %6, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %6, align 4
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i64 %358
  store %struct.TYPE_16__* %359, %struct.TYPE_16__** %26, align 8
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %362 = call i32 @memcpy(%struct.TYPE_16__* %360, %struct.TYPE_16__* %361, i32 4)
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* %16, align 4
  %365 = sub nsw i32 %364, 1
  %366 = icmp eq i32 %363, %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %354
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %369 = call i32 @_bt_mark_scankey_required(%struct.TYPE_16__* %368)
  br label %370

370:                                              ; preds = %367, %354
  %371 = load i32, i32* %15, align 4
  %372 = load i32, i32* @BTEqualStrategyNumber, align 4
  %373 = sub nsw i32 %372, 1
  %374 = icmp ne i32 %371, %373
  %375 = zext i1 %374 to i32
  %376 = call i32 @Assert(i32 %375)
  br label %435

377:                                              ; preds = %343
  %378 = load i32, i32* %15, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %379
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %380, align 8
  %382 = icmp eq %struct.TYPE_16__* %381, null
  br i1 %382, label %383, label %388

383:                                              ; preds = %377
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %385 = load i32, i32* %15, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %386
  store %struct.TYPE_16__* %384, %struct.TYPE_16__** %387, align 8
  br label %434

388:                                              ; preds = %377
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %392 = load i32, i32* %15, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %393
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %394, align 8
  %396 = call i64 @_bt_compare_scankey_args(%struct.TYPE_17__* %389, %struct.TYPE_16__* %390, %struct.TYPE_16__* %391, %struct.TYPE_16__* %395, i32* %13)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %416

398:                                              ; preds = %388
  %399 = load i32, i32* %13, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %398
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %403 = load i32, i32* %15, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 %404
  store %struct.TYPE_16__* %402, %struct.TYPE_16__** %405, align 8
  br label %415

406:                                              ; preds = %398
  %407 = load i32, i32* %15, align 4
  %408 = load i32, i32* @BTEqualStrategyNumber, align 4
  %409 = sub nsw i32 %408, 1
  %410 = icmp eq i32 %407, %409
  br i1 %410, label %411, label %414

411:                                              ; preds = %406
  %412 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %412, i32 0, i32 0
  store i32 0, i32* %413, align 8
  store i32 1, i32* %17, align 4
  br label %444

414:                                              ; preds = %406
  br label %415

415:                                              ; preds = %414, %401
  br label %433

416:                                              ; preds = %388
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %418 = load i32, i32* %6, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %6, align 4
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i64 %420
  store %struct.TYPE_16__* %421, %struct.TYPE_16__** %27, align 8
  %422 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %423 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %424 = call i32 @memcpy(%struct.TYPE_16__* %422, %struct.TYPE_16__* %423, i32 4)
  %425 = load i32, i32* %7, align 4
  %426 = load i32, i32* %16, align 4
  %427 = sub nsw i32 %426, 1
  %428 = icmp eq i32 %425, %427
  br i1 %428, label %429, label %432

429:                                              ; preds = %416
  %430 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %431 = call i32 @_bt_mark_scankey_required(%struct.TYPE_16__* %430)
  br label %432

432:                                              ; preds = %429, %416
  br label %433

433:                                              ; preds = %432, %415
  br label %434

434:                                              ; preds = %433, %383
  br label %435

435:                                              ; preds = %434, %370
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 1
  store %struct.TYPE_16__* %437, %struct.TYPE_16__** %10, align 8
  %438 = load i32, i32* %14, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %14, align 4
  br label %107

440:                                              ; preds = %335
  %441 = load i32, i32* %6, align 4
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %442, i32 0, i32 1
  store i32 %441, i32* %443, align 4
  store i32 0, i32* %17, align 4
  br label %444

444:                                              ; preds = %440, %411, %195, %182, %116, %102, %51
  %445 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %445)
  %446 = load i32, i32* %17, align 4
  switch i32 %446, label %448 [
    i32 0, label %447
    i32 1, label %447
  ]

447:                                              ; preds = %444, %444
  ret void

448:                                              ; preds = %444
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i32 @_bt_fix_scankey_strategy(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @_bt_mark_scankey_required(%struct.TYPE_16__*) #2

declare dso_local i32 @memset(%struct.TYPE_16__**, i32, i32) #2

declare dso_local i64 @_bt_compare_scankey_args(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*) #2

declare dso_local i32 @Assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
