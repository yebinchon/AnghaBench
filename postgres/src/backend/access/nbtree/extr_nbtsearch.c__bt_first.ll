; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_first.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i64, i64, i32, i32, i32*, i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i64*, i32* }
%struct.TYPE_40__ = type { i32, i64, %struct.TYPE_36__, %struct.TYPE_35__*, i32 }
%struct.TYPE_36__ = type { i64, %struct.TYPE_39__*, i32 }
%struct.TYPE_39__ = type { i64, i32 }
%struct.TYPE_35__ = type { i32, i32, i32, i64, i64, i32 }
%struct.TYPE_41__ = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_35__* }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@P_NONE = common dso_local global i64 0, align 8
@InvalidBlockNumber = common dso_local global i64 0, align 8
@SK_BT_NULLS_FIRST = common dso_local global i32 0, align 4
@SK_SEARCHNOTNULL = common dso_local global i32 0, align 4
@SK_ISNULL = common dso_local global i32 0, align 4
@SK_BT_DESC = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@SK_ROW_HEADER = common dso_local global i32 0, align 4
@SK_ROW_MEMBER = common dso_local global i32 0, align 4
@SK_ROW_END = common dso_local global i32 0, align 4
@BTORDER_PROC = common dso_local global i32 0, align 4
@InvalidStrategy = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"missing support function %d(%u,%u) for attribute %d of index \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unrecognized strat_total: %d\00", align 1
@BT_READ = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_first(%struct.TYPE_38__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_41__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_39__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_35__*, align 8
  %27 = alloca %struct.TYPE_35__*, align 8
  %28 = alloca %struct.TYPE_35__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_35__*, align 8
  %31 = alloca %struct.TYPE_35__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %4, align 8
  store i32 %1, i32* %5, align 4
  %35 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_37__*, %struct.TYPE_37__** %36, align 8
  store %struct.TYPE_37__* %37, %struct.TYPE_37__** %6, align 8
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %42, %struct.TYPE_40__** %7, align 8
  %43 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %15, align 8
  %46 = alloca %struct.TYPE_35__*, i64 %44, align 16
  store i64 %44, i64* %16, align 8
  %47 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca %struct.TYPE_35__, i64 %48, align 16
  store i64 %48, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 1, i32* %20, align 4
  %50 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %50, i32 0, i32 2
  %52 = call i32 @BTScanPosIsValid(%struct.TYPE_36__* byval(%struct.TYPE_36__) align 8 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %58 = call i32 @pgstat_count_index_scan(%struct.TYPE_37__* %57)
  %59 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %60 = call i32 @_bt_preprocess_keys(%struct.TYPE_38__* %59)
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %659

66:                                               ; preds = %2
  %67 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %99

71:                                               ; preds = %66
  %72 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %73 = call i32 @_bt_parallel_seize(%struct.TYPE_38__* %72, i64* %23)
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %659

77:                                               ; preds = %71
  %78 = load i64, i64* %23, align 8
  %79 = load i64, i64* @P_NONE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %83 = call i32 @_bt_parallel_done(%struct.TYPE_38__* %82)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %659

84:                                               ; preds = %77
  %85 = load i64, i64* %23, align 8
  %86 = load i64, i64* @InvalidBlockNumber, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %90 = load i64, i64* %23, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @_bt_parallel_readpage(%struct.TYPE_38__* %89, i64 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %659

95:                                               ; preds = %88
  br label %629

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98, %66
  store i32 132, i32* %21, align 4
  %100 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %251

104:                                              ; preds = %99
  store i32 1, i32* %25, align 4
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %26, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %27, align 8
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_35__*, %struct.TYPE_35__** %106, align 8
  store %struct.TYPE_35__* %107, %struct.TYPE_35__** %28, align 8
  store i32 0, i32* %19, align 4
  br label %108

108:                                              ; preds = %245, %104
  %109 = load i32, i32* %19, align 4
  %110 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %109, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  %116 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %25, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %212

120:                                              ; preds = %114, %108
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %122 = icmp eq %struct.TYPE_35__* %121, null
  br i1 %122, label %123, label %170

123:                                              ; preds = %120
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %125 = icmp ne %struct.TYPE_35__* %124, null
  br i1 %125, label %126, label %170

126:                                              ; preds = %123
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, i32* %5, align 4
  %135 = call i64 @ScanDirectionIsForward(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %170

137:                                              ; preds = %126
  %138 = load i32, i32* %5, align 4
  %139 = call i64 @ScanDirectionIsBackward(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %137, %133
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %49, i64 %143
  store %struct.TYPE_35__* %144, %struct.TYPE_35__** %26, align 8
  %145 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %146 = load i32, i32* @SK_SEARCHNOTNULL, align 4
  %147 = load i32, i32* @SK_ISNULL, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %150 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @SK_BT_DESC, align 4
  %153 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = or i32 %148, %155
  %157 = load i32, i32* %25, align 4
  %158 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %159 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @SK_BT_NULLS_FIRST, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 130, i32 128
  %166 = load i64, i64* @InvalidOid, align 8
  %167 = load i64, i64* @InvalidOid, align 8
  %168 = load i64, i64* @InvalidOid, align 8
  %169 = call i32 @ScanKeyEntryInitialize(%struct.TYPE_35__* %145, i32 %156, i32 %157, i32 %165, i64 %166, i64 %167, i64 %168, i32 0)
  br label %170

170:                                              ; preds = %141, %137, %133, %123, %120
  %171 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %172 = icmp eq %struct.TYPE_35__* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %250

174:                                              ; preds = %170
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %18, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %46, i64 %178
  store %struct.TYPE_35__* %175, %struct.TYPE_35__** %179, align 8
  %180 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %181 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 132
  br i1 %184, label %185, label %194

185:                                              ; preds = %174
  %186 = load i32, i32* %11, align 4
  store i32 %186, i32* %21, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp eq i32 %187, 130
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %11, align 4
  %191 = icmp eq i32 %190, 128
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %185
  br label %250

193:                                              ; preds = %189
  br label %194

194:                                              ; preds = %193, %174
  %195 = load i32, i32* %19, align 4
  %196 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sge i32 %195, %198
  br i1 %199, label %207, label %200

200:                                              ; preds = %194
  %201 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  %202 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %25, align 4
  %205 = add nsw i32 %204, 1
  %206 = icmp ne i32 %203, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %200, %194
  br label %250

208:                                              ; preds = %200
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  %210 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %25, align 4
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %26, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %27, align 8
  br label %212

212:                                              ; preds = %208, %114
  %213 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  %214 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  switch i32 %215, label %244 [
    i32 128, label %216
    i32 129, label %216
    i32 132, label %229
    i32 131, label %231
    i32 130, label %231
  ]

216:                                              ; preds = %212, %212
  %217 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %218 = icmp eq %struct.TYPE_35__* %217, null
  br i1 %218, label %219, label %228

219:                                              ; preds = %216
  %220 = load i32, i32* %5, align 4
  %221 = call i64 @ScanDirectionIsBackward(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  store %struct.TYPE_35__* %224, %struct.TYPE_35__** %26, align 8
  br label %227

225:                                              ; preds = %219
  %226 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  store %struct.TYPE_35__* %226, %struct.TYPE_35__** %27, align 8
  br label %227

227:                                              ; preds = %225, %223
  br label %228

228:                                              ; preds = %227, %216
  br label %244

229:                                              ; preds = %212
  %230 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  store %struct.TYPE_35__* %230, %struct.TYPE_35__** %26, align 8
  br label %244

231:                                              ; preds = %212, %212
  %232 = load %struct.TYPE_35__*, %struct.TYPE_35__** %26, align 8
  %233 = icmp eq %struct.TYPE_35__* %232, null
  br i1 %233, label %234, label %243

234:                                              ; preds = %231
  %235 = load i32, i32* %5, align 4
  %236 = call i64 @ScanDirectionIsForward(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  store %struct.TYPE_35__* %239, %struct.TYPE_35__** %26, align 8
  br label %242

240:                                              ; preds = %234
  %241 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  store %struct.TYPE_35__* %241, %struct.TYPE_35__** %27, align 8
  br label %242

242:                                              ; preds = %240, %238
  br label %243

243:                                              ; preds = %242, %231
  br label %244

244:                                              ; preds = %212, %243, %229, %228
  br label %245

245:                                              ; preds = %244
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %28, align 8
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 1
  store %struct.TYPE_35__* %247, %struct.TYPE_35__** %28, align 8
  %248 = load i32, i32* %19, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %19, align 4
  br label %108

250:                                              ; preds = %207, %192, %173
  br label %251

251:                                              ; preds = %250, %99
  %252 = load i32, i32* %18, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %251
  %255 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %256 = load i32, i32* %5, align 4
  %257 = call i32 @_bt_endpoint(%struct.TYPE_38__* %255, i32 %256)
  store i32 %257, i32* %29, align 4
  %258 = load i32, i32* %29, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %254
  %261 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %262 = call i32 @_bt_parallel_done(%struct.TYPE_38__* %261)
  br label %263

263:                                              ; preds = %260, %254
  %264 = load i32, i32* %29, align 4
  store i32 %264, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %659

265:                                              ; preds = %251
  %266 = load i32, i32* %18, align 4
  %267 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %268 = icmp sle i32 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @Assert(i32 %269)
  store i32 0, i32* %19, align 4
  br label %271

271:                                              ; preds = %520, %265
  %272 = load i32, i32* %19, align 4
  %273 = load i32, i32* %18, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %523

275:                                              ; preds = %271
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %46, i64 %277
  %279 = load %struct.TYPE_35__*, %struct.TYPE_35__** %278, align 8
  store %struct.TYPE_35__* %279, %struct.TYPE_35__** %30, align 8
  %280 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %281 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %19, align 4
  %284 = add nsw i32 %283, 1
  %285 = icmp eq i32 %282, %284
  %286 = zext i1 %285 to i32
  %287 = call i32 @Assert(i32 %286)
  %288 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %289 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @SK_ROW_HEADER, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %404

294:                                              ; preds = %275
  %295 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %296 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @DatumGetPointer(i32 %297)
  %299 = sext i32 %298 to i64
  %300 = inttoptr i64 %299 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %300, %struct.TYPE_35__** %31, align 8
  %301 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %302 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @SK_ROW_MEMBER, align 4
  %305 = and i32 %303, %304
  %306 = call i32 @Assert(i32 %305)
  %307 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %308 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @SK_ISNULL, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %294
  %314 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %315 = call i32 @_bt_parallel_done(%struct.TYPE_38__* %314)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %659

316:                                              ; preds = %294
  %317 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 6
  %318 = load %struct.TYPE_35__*, %struct.TYPE_35__** %317, align 8
  %319 = load i32, i32* %19, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %318, i64 %320
  %322 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %323 = call i32 @memcpy(%struct.TYPE_35__* %321, %struct.TYPE_35__* %322, i32 40)
  %324 = load i32, i32* %19, align 4
  %325 = load i32, i32* %18, align 4
  %326 = sub nsw i32 %325, 1
  %327 = icmp eq i32 %324, %326
  br i1 %327, label %328, label %403

328:                                              ; preds = %316
  store i32 0, i32* %32, align 4
  %329 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %330 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @SK_ROW_END, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  %335 = xor i1 %334, true
  %336 = zext i1 %335 to i32
  %337 = call i32 @Assert(i32 %336)
  br label %338

338:                                              ; preds = %393, %328
  %339 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %340 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %339, i32 1
  store %struct.TYPE_35__* %340, %struct.TYPE_35__** %31, align 8
  %341 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %342 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @SK_ROW_MEMBER, align 4
  %345 = and i32 %343, %344
  %346 = call i32 @Assert(i32 %345)
  %347 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %348 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* %18, align 4
  %351 = add nsw i32 %350, 1
  %352 = icmp ne i32 %349, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %338
  br label %394

354:                                              ; preds = %338
  %355 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %356 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %359 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %357, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %354
  br label %394

363:                                              ; preds = %354
  %364 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %365 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @SK_ISNULL, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %363
  br label %394

371:                                              ; preds = %363
  %372 = load i32, i32* %18, align 4
  %373 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %374 = icmp slt i32 %372, %373
  %375 = zext i1 %374 to i32
  %376 = call i32 @Assert(i32 %375)
  %377 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 6
  %378 = load %struct.TYPE_35__*, %struct.TYPE_35__** %377, align 8
  %379 = load i32, i32* %18, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %378, i64 %380
  %382 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %383 = call i32 @memcpy(%struct.TYPE_35__* %381, %struct.TYPE_35__* %382, i32 40)
  %384 = load i32, i32* %18, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %18, align 4
  %386 = load %struct.TYPE_35__*, %struct.TYPE_35__** %31, align 8
  %387 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @SK_ROW_END, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %371
  store i32 1, i32* %32, align 4
  br label %394

393:                                              ; preds = %371
  br label %338

394:                                              ; preds = %392, %370, %362, %353
  %395 = load i32, i32* %32, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %402, label %397

397:                                              ; preds = %394
  %398 = load i32, i32* %21, align 4
  switch i32 %398, label %401 [
    i32 128, label %399
    i32 130, label %400
  ]

399:                                              ; preds = %397
  store i32 129, i32* %21, align 4
  br label %401

400:                                              ; preds = %397
  store i32 131, i32* %21, align 4
  br label %401

401:                                              ; preds = %397, %400, %399
  br label %402

402:                                              ; preds = %401, %394
  br label %523

403:                                              ; preds = %316
  br label %519

404:                                              ; preds = %275
  %405 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %406 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %405, i32 0, i32 3
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %408, i32 0, i32 0
  %410 = load i64*, i64** %409, align 8
  %411 = load i32, i32* %19, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i64, i64* %410, i64 %412
  %414 = load i64, i64* %413, align 8
  %415 = icmp eq i64 %407, %414
  br i1 %415, label %422, label %416

416:                                              ; preds = %404
  %417 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %418 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %417, i32 0, i32 3
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @InvalidOid, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %422, label %452

422:                                              ; preds = %416, %404
  %423 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %424 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %425 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* @BTORDER_PROC, align 4
  %428 = call i32* @index_getprocinfo(%struct.TYPE_37__* %423, i32 %426, i32 %427)
  store i32* %428, i32** %33, align 8
  %429 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 6
  %430 = load %struct.TYPE_35__*, %struct.TYPE_35__** %429, align 8
  %431 = load i32, i32* %19, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %430, i64 %432
  %434 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %435 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %438 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @InvalidStrategy, align 4
  %441 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %442 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %441, i32 0, i32 3
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %445 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %444, i32 0, i32 4
  %446 = load i64, i64* %445, align 8
  %447 = load i32*, i32** %33, align 8
  %448 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %449 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %448, i32 0, i32 5
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @ScanKeyEntryInitializeWithInfo(%struct.TYPE_35__* %433, i32 %436, i32 %439, i32 %440, i64 %443, i64 %446, i32* %447, i32 %450)
  br label %518

452:                                              ; preds = %416
  %453 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %453, i32 0, i32 1
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* %19, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %461 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %460, i32 0, i32 0
  %462 = load i64*, i64** %461, align 8
  %463 = load i32, i32* %19, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i64, i64* %462, i64 %464
  %466 = load i64, i64* %465, align 8
  %467 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %468 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %467, i32 0, i32 3
  %469 = load i64, i64* %468, align 8
  %470 = load i32, i32* @BTORDER_PROC, align 4
  %471 = call i64 @get_opfamily_proc(i32 %459, i64 %466, i64 %469, i32 %470)
  store i64 %471, i64* %34, align 8
  %472 = load i64, i64* %34, align 8
  %473 = call i32 @RegProcedureIsValid(i64 %472)
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %494, label %475

475:                                              ; preds = %452
  %476 = load i32, i32* @ERROR, align 4
  %477 = load i32, i32* @BTORDER_PROC, align 4
  %478 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %479 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %478, i32 0, i32 0
  %480 = load i64*, i64** %479, align 8
  %481 = load i32, i32* %19, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i64, i64* %480, i64 %482
  %484 = load i64, i64* %483, align 8
  %485 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %486 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %485, i32 0, i32 3
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %489 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %492 = call i32 @RelationGetRelationName(%struct.TYPE_37__* %491)
  %493 = call i32 (i32, i8*, i32, ...) @elog(i32 %476, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %477, i64 %484, i64 %487, i32 %490, i32 %492)
  br label %494

494:                                              ; preds = %475, %452
  %495 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 6
  %496 = load %struct.TYPE_35__*, %struct.TYPE_35__** %495, align 8
  %497 = load i32, i32* %19, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %496, i64 %498
  %500 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %501 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %504 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = load i32, i32* @InvalidStrategy, align 4
  %507 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %508 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %507, i32 0, i32 3
  %509 = load i64, i64* %508, align 8
  %510 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %511 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %510, i32 0, i32 4
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* %34, align 8
  %514 = load %struct.TYPE_35__*, %struct.TYPE_35__** %30, align 8
  %515 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %514, i32 0, i32 5
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @ScanKeyEntryInitialize(%struct.TYPE_35__* %499, i32 %502, i32 %505, i32 %506, i64 %509, i64 %512, i64 %513, i32 %516)
  br label %518

518:                                              ; preds = %494, %422
  br label %519

519:                                              ; preds = %518, %403
  br label %520

520:                                              ; preds = %519
  %521 = load i32, i32* %19, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %19, align 4
  br label %271

523:                                              ; preds = %402, %271
  %524 = load i32, i32* %21, align 4
  switch i32 %524, label %536 [
    i32 128, label %525
    i32 129, label %526
    i32 132, label %527
    i32 131, label %534
    i32 130, label %535
  ]

525:                                              ; preds = %523
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %540

526:                                              ; preds = %523
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %540

527:                                              ; preds = %523
  %528 = load i32, i32* %5, align 4
  %529 = call i64 @ScanDirectionIsBackward(i32 %528)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %527
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %533

532:                                              ; preds = %527
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %533

533:                                              ; preds = %532, %531
  br label %540

534:                                              ; preds = %523
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %540

535:                                              ; preds = %523
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %540

536:                                              ; preds = %523
  %537 = load i32, i32* @ERROR, align 4
  %538 = load i32, i32* %21, align 4
  %539 = call i32 (i32, i8*, i32, ...) @elog(i32 %537, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %538)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %659

540:                                              ; preds = %535, %534, %533, %526, %525
  %541 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %542 = call i32 @_bt_heapkeyspace(%struct.TYPE_37__* %541)
  %543 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 5
  store i32 %542, i32* %543, align 8
  %544 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 0
  store i32 0, i32* %544, align 8
  %545 = load i32, i32* %12, align 4
  %546 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 1
  store i32 %545, i32* %546, align 4
  %547 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 2
  store i32 0, i32* %547, align 8
  %548 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 4
  store i32* null, i32** %548, align 8
  %549 = load i32, i32* %18, align 4
  %550 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %14, i32 0, i32 3
  store i32 %549, i32* %550, align 4
  %551 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %552 = load i32, i32* @BT_READ, align 4
  %553 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %554 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %553, i32 0, i32 3
  %555 = load i32, i32* %554, align 4
  %556 = call i32 @_bt_search(%struct.TYPE_37__* %551, %struct.TYPE_41__* %14, i32* %8, i32 %552, i32 %555)
  store i32 %556, i32* %9, align 4
  %557 = load i32, i32* %9, align 4
  %558 = call i32 @_bt_freestack(i32 %557)
  %559 = load i32, i32* %8, align 4
  %560 = call i32 @BufferIsValid(i32 %559)
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %573, label %562

562:                                              ; preds = %540
  %563 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %564 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %565 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %564, i32 0, i32 3
  %566 = load i32, i32* %565, align 4
  %567 = call i32 @PredicateLockRelation(%struct.TYPE_37__* %563, i32 %566)
  %568 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %569 = call i32 @_bt_parallel_done(%struct.TYPE_38__* %568)
  %570 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %571 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %570, i32 0, i32 2
  %572 = call i32 @BTScanPosInvalidate(%struct.TYPE_36__* byval(%struct.TYPE_36__) align 8 %571)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %659

573:                                              ; preds = %540
  %574 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %575 = load i32, i32* %8, align 4
  %576 = call i32 @BufferGetBlockNumber(i32 %575)
  %577 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %578 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %577, i32 0, i32 3
  %579 = load i32, i32* %578, align 4
  %580 = call i32 @PredicateLockPage(%struct.TYPE_37__* %574, i32 %576, i32 %579)
  br label %581

581:                                              ; preds = %573
  %582 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %583 = load i32, i32* %5, align 4
  %584 = call i32 @_bt_initialize_more_data(%struct.TYPE_40__* %582, i32 %583)
  %585 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %586 = load i32, i32* %8, align 4
  %587 = call i32 @_bt_binsrch(%struct.TYPE_37__* %585, %struct.TYPE_41__* %14, i32 %586)
  store i32 %587, i32* %10, align 4
  %588 = load i32, i32* %13, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %593

590:                                              ; preds = %581
  %591 = load i32, i32* %10, align 4
  %592 = call i32 @OffsetNumberPrev(i32 %591)
  store i32 %592, i32* %10, align 4
  br label %593

593:                                              ; preds = %590, %581
  %594 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %595 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %594, i32 0, i32 2
  %596 = call i32 @BTScanPosIsValid(%struct.TYPE_36__* byval(%struct.TYPE_36__) align 8 %595)
  %597 = icmp ne i32 %596, 0
  %598 = xor i1 %597, true
  %599 = zext i1 %598 to i32
  %600 = call i32 @Assert(i32 %599)
  %601 = load i32, i32* %8, align 4
  %602 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %603 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %602, i32 0, i32 2
  %604 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %603, i32 0, i32 2
  store i32 %601, i32* %604, align 8
  %605 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %606 = load i32, i32* %5, align 4
  %607 = load i32, i32* %10, align 4
  %608 = call i32 @_bt_readpage(%struct.TYPE_38__* %605, i32 %606, i32 %607)
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %623, label %610

610:                                              ; preds = %593
  %611 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %612 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %611, i32 0, i32 2
  %613 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %612, i32 0, i32 2
  %614 = load i32, i32* %613, align 8
  %615 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %616 = call i32 @LockBuffer(i32 %614, i32 %615)
  %617 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %618 = load i32, i32* %5, align 4
  %619 = call i32 @_bt_steppage(%struct.TYPE_38__* %617, i32 %618)
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %622, label %621

621:                                              ; preds = %610
  store i32 0, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %659

622:                                              ; preds = %610
  br label %628

623:                                              ; preds = %593
  %624 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %625 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %626 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %625, i32 0, i32 2
  %627 = call i32 @_bt_drop_lock_and_maybe_pin(%struct.TYPE_38__* %624, %struct.TYPE_36__* %626)
  br label %628

628:                                              ; preds = %623, %622
  br label %629

629:                                              ; preds = %628, %95
  %630 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %631 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %630, i32 0, i32 2
  %632 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %631, i32 0, i32 1
  %633 = load %struct.TYPE_39__*, %struct.TYPE_39__** %632, align 8
  %634 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %635 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %634, i32 0, i32 2
  %636 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %635, i32 0, i32 0
  %637 = load i64, i64* %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %633, i64 %637
  store %struct.TYPE_39__* %638, %struct.TYPE_39__** %22, align 8
  %639 = load %struct.TYPE_39__*, %struct.TYPE_39__** %22, align 8
  %640 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 8
  %642 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %643 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %642, i32 0, i32 2
  store i32 %641, i32* %643, align 8
  %644 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %645 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %644, i32 0, i32 1
  %646 = load i64, i64* %645, align 8
  %647 = icmp ne i64 %646, 0
  br i1 %647, label %648, label %658

648:                                              ; preds = %629
  %649 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %650 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %649, i32 0, i32 1
  %651 = load i64, i64* %650, align 8
  %652 = load %struct.TYPE_39__*, %struct.TYPE_39__** %22, align 8
  %653 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = add nsw i64 %651, %654
  %656 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %657 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %656, i32 0, i32 0
  store i64 %655, i64* %657, align 8
  br label %658

658:                                              ; preds = %648, %629
  store i32 1, i32* %3, align 4
  store i32 1, i32* %24, align 4
  br label %659

659:                                              ; preds = %658, %621, %562, %536, %313, %263, %94, %81, %76, %65
  %660 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %660)
  %661 = load i32, i32* %3, align 4
  ret i32 %661
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @BTScanPosIsValid(%struct.TYPE_36__* byval(%struct.TYPE_36__) align 8) #2

declare dso_local i32 @pgstat_count_index_scan(%struct.TYPE_37__*) #2

declare dso_local i32 @_bt_preprocess_keys(%struct.TYPE_38__*) #2

declare dso_local i32 @_bt_parallel_seize(%struct.TYPE_38__*, i64*) #2

declare dso_local i32 @_bt_parallel_done(%struct.TYPE_38__*) #2

declare dso_local i32 @_bt_parallel_readpage(%struct.TYPE_38__*, i64, i32) #2

declare dso_local i64 @ScanDirectionIsForward(i32) #2

declare dso_local i64 @ScanDirectionIsBackward(i32) #2

declare dso_local i32 @ScanKeyEntryInitialize(%struct.TYPE_35__*, i32, i32, i32, i64, i64, i64, i32) #2

declare dso_local i32 @_bt_endpoint(%struct.TYPE_38__*, i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_35__*, %struct.TYPE_35__*, i32) #2

declare dso_local i32* @index_getprocinfo(%struct.TYPE_37__*, i32, i32) #2

declare dso_local i32 @ScanKeyEntryInitializeWithInfo(%struct.TYPE_35__*, i32, i32, i32, i64, i64, i32*, i32) #2

declare dso_local i64 @get_opfamily_proc(i32, i64, i64, i32) #2

declare dso_local i32 @RegProcedureIsValid(i64) #2

declare dso_local i32 @elog(i32, i8*, i32, ...) #2

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_37__*) #2

declare dso_local i32 @_bt_heapkeyspace(%struct.TYPE_37__*) #2

declare dso_local i32 @_bt_search(%struct.TYPE_37__*, %struct.TYPE_41__*, i32*, i32, i32) #2

declare dso_local i32 @_bt_freestack(i32) #2

declare dso_local i32 @BufferIsValid(i32) #2

declare dso_local i32 @PredicateLockRelation(%struct.TYPE_37__*, i32) #2

declare dso_local i32 @BTScanPosInvalidate(%struct.TYPE_36__* byval(%struct.TYPE_36__) align 8) #2

declare dso_local i32 @PredicateLockPage(%struct.TYPE_37__*, i32, i32) #2

declare dso_local i32 @BufferGetBlockNumber(i32) #2

declare dso_local i32 @_bt_initialize_more_data(%struct.TYPE_40__*, i32) #2

declare dso_local i32 @_bt_binsrch(%struct.TYPE_37__*, %struct.TYPE_41__*, i32) #2

declare dso_local i32 @OffsetNumberPrev(i32) #2

declare dso_local i32 @_bt_readpage(%struct.TYPE_38__*, i32, i32) #2

declare dso_local i32 @LockBuffer(i32, i32) #2

declare dso_local i32 @_bt_steppage(%struct.TYPE_38__*, i32) #2

declare dso_local i32 @_bt_drop_lock_and_maybe_pin(%struct.TYPE_38__*, %struct.TYPE_36__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
