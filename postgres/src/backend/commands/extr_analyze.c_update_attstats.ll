; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_update_attstats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_update_attstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32*, i32*, i8*, %struct.TYPE_14__*, i32*, i32*, i64**, i32**, i32*, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@StatisticRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Natts_pg_statistic = common dso_local global i32 0, align 4
@Anum_pg_statistic_starelid = common dso_local global i32 0, align 4
@Anum_pg_statistic_staattnum = common dso_local global i32 0, align 4
@Anum_pg_statistic_stainherit = common dso_local global i32 0, align 4
@Anum_pg_statistic_stanullfrac = common dso_local global i32 0, align 4
@Anum_pg_statistic_stawidth = common dso_local global i32 0, align 4
@Anum_pg_statistic_stadistinct = common dso_local global i32 0, align 4
@Anum_pg_statistic_stakind1 = common dso_local global i32 0, align 4
@STATISTIC_NUM_SLOTS = common dso_local global i32 0, align 4
@Anum_pg_statistic_staop1 = common dso_local global i32 0, align 4
@Anum_pg_statistic_stacoll1 = common dso_local global i32 0, align 4
@Anum_pg_statistic_stanumbers1 = common dso_local global i32 0, align 4
@FLOAT4OID = common dso_local global i32 0, align 4
@FLOAT4PASSBYVAL = common dso_local global i32 0, align 4
@Anum_pg_statistic_stavalues1 = common dso_local global i32 0, align 4
@STATRELATTINH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.TYPE_15__**)* @update_attstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_attstats(i32 %0, i32 %1, i32 %2, %struct.TYPE_15__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %387

29:                                               ; preds = %4
  %30 = load i32, i32* @StatisticRelationId, align 4
  %31 = load i32, i32* @RowExclusiveLock, align 4
  %32 = call i32 @table_open(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %380, %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %383

37:                                               ; preds = %33
  %38 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %38, i64 %40
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %11, align 8
  %43 = load i32, i32* @Natts_pg_statistic, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %17, align 8
  %46 = alloca i64, i64 %44, align 16
  store i64 %44, i64* %18, align 8
  %47 = load i32, i32* @Natts_pg_statistic, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %19, align 8
  %50 = load i32, i32* @Natts_pg_statistic, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %20, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 15
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %37
  store i32 4, i32* %21, align 4
  br label %376

58:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @Natts_pg_statistic, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %49, i64 %65
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %52, i64 %68
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %59

73:                                               ; preds = %59
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @ObjectIdGetDatum(i32 %74)
  %76 = load i32, i32* @Anum_pg_statistic_starelid, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %46, i64 %78
  store i64 %75, i64* %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @Int16GetDatum(i32 %84)
  %86 = load i32, i32* @Anum_pg_statistic_staattnum, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %46, i64 %88
  store i64 %85, i64* %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i64 @BoolGetDatum(i32 %90)
  %92 = load i32, i32* @Anum_pg_statistic_stainherit, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %46, i64 %94
  store i64 %91, i64* %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 14
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @Float4GetDatum(i32 %98)
  %100 = load i32, i32* @Anum_pg_statistic_stanullfrac, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %46, i64 %102
  store i64 %99, i64* %103, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @Int32GetDatum(i32 %106)
  %108 = load i32, i32* @Anum_pg_statistic_stawidth, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %46, i64 %110
  store i64 %107, i64* %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @Float4GetDatum(i32 %114)
  %116 = load i32, i32* @Anum_pg_statistic_stadistinct, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %46, i64 %118
  store i64 %115, i64* %119, align 8
  %120 = load i32, i32* @Anum_pg_statistic_stakind1, align 4
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %122

122:                                              ; preds = %139, %73
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @STATISTIC_NUM_SLOTS, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %122
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 11
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @Int16GetDatum(i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i64, i64* %46, i64 %137
  store i64 %134, i64* %138, align 8
  br label %139

139:                                              ; preds = %126
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %122

142:                                              ; preds = %122
  %143 = load i32, i32* @Anum_pg_statistic_staop1, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %145

145:                                              ; preds = %162, %142
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* @STATISTIC_NUM_SLOTS, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 10
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @ObjectIdGetDatum(i32 %156)
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i64, i64* %46, i64 %160
  store i64 %157, i64* %161, align 8
  br label %162

162:                                              ; preds = %149
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %145

165:                                              ; preds = %145
  %166 = load i32, i32* @Anum_pg_statistic_stacoll1, align 4
  %167 = sub nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %185, %165
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* @STATISTIC_NUM_SLOTS, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %168
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 9
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @ObjectIdGetDatum(i32 %179)
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i64, i64* %46, i64 %183
  store i64 %180, i64* %184, align 8
  br label %185

185:                                              ; preds = %172
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  br label %168

188:                                              ; preds = %168
  %189 = load i32, i32* @Anum_pg_statistic_stanumbers1, align 4
  %190 = sub nsw i32 %189, 1
  store i32 %190, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %191

191:                                              ; preds = %257, %188
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* @STATISTIC_NUM_SLOTS, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %260

195:                                              ; preds = %191
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %22, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %248

205:                                              ; preds = %195
  %206 = load i32, i32* %22, align 4
  %207 = sext i32 %206 to i64
  %208 = mul i64 %207, 8
  %209 = trunc i64 %208 to i32
  %210 = call i64 @palloc(i32 %209)
  %211 = inttoptr i64 %210 to i64*
  store i64* %211, i64** %23, align 8
  store i32 0, i32* %16, align 4
  br label %212

212:                                              ; preds = %233, %205
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %22, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %236

216:                                              ; preds = %212
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 8
  %219 = load i32**, i32*** %218, align 8
  %220 = load i32, i32* %15, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @Float4GetDatum(i32 %227)
  %229 = load i64*, i64** %23, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  store i64 %228, i64* %232, align 8
  br label %233

233:                                              ; preds = %216
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %16, align 4
  br label %212

236:                                              ; preds = %212
  %237 = load i64*, i64** %23, align 8
  %238 = load i32, i32* %22, align 4
  %239 = load i32, i32* @FLOAT4OID, align 4
  %240 = load i32, i32* @FLOAT4PASSBYVAL, align 4
  %241 = call i32* @construct_array(i64* %237, i32 %238, i32 %239, i32 4, i32 %240, i8 signext 105)
  store i32* %241, i32** %24, align 8
  %242 = load i32*, i32** %24, align 8
  %243 = call i64 @PointerGetDatum(i32* %242)
  %244 = load i32, i32* %14, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %14, align 4
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i64, i64* %46, i64 %246
  store i64 %243, i64* %247, align 8
  br label %256

248:                                              ; preds = %195
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %49, i64 %250
  store i32 1, i32* %251, align 4
  %252 = load i32, i32* %14, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %14, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i64, i64* %46, i64 %254
  store i64 0, i64* %255, align 8
  br label %256

256:                                              ; preds = %248, %236
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %15, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %15, align 4
  br label %191

260:                                              ; preds = %191
  %261 = load i32, i32* @Anum_pg_statistic_stavalues1, align 4
  %262 = sub nsw i32 %261, 1
  store i32 %262, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %263

263:                                              ; preds = %335, %260
  %264 = load i32, i32* %15, align 4
  %265 = load i32, i32* @STATISTIC_NUM_SLOTS, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %338

267:                                              ; preds = %263
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %326

276:                                              ; preds = %267
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 7
  %279 = load i64**, i64*** %278, align 8
  %280 = load i32, i32* %15, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64*, i64** %279, i64 %281
  %283 = load i64*, i64** %282, align 8
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %15, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 6
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %15, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 5
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 3
  %314 = load i8*, i8** %313, align 8
  %315 = load i32, i32* %15, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = call i32* @construct_array(i64* %283, i32 %290, i32 %297, i32 %304, i32 %311, i8 signext %318)
  store i32* %319, i32** %25, align 8
  %320 = load i32*, i32** %25, align 8
  %321 = call i64 @PointerGetDatum(i32* %320)
  %322 = load i32, i32* %14, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %14, align 4
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds i64, i64* %46, i64 %324
  store i64 %321, i64* %325, align 8
  br label %334

326:                                              ; preds = %267
  %327 = load i32, i32* %14, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %49, i64 %328
  store i32 1, i32* %329, align 4
  %330 = load i32, i32* %14, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %14, align 4
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i64, i64* %46, i64 %332
  store i64 0, i64* %333, align 8
  br label %334

334:                                              ; preds = %326, %276
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %15, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %15, align 4
  br label %263

338:                                              ; preds = %263
  %339 = load i32, i32* @STATRELATTINH, align 4
  %340 = load i32, i32* %5, align 4
  %341 = call i64 @ObjectIdGetDatum(i32 %340)
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 4
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i64 @Int16GetDatum(i32 %346)
  %348 = load i32, i32* %6, align 4
  %349 = call i64 @BoolGetDatum(i32 %348)
  %350 = call %struct.TYPE_16__* @SearchSysCache3(i32 %339, i64 %341, i64 %347, i64 %349)
  store %struct.TYPE_16__* %350, %struct.TYPE_16__** %13, align 8
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %352 = call i64 @HeapTupleIsValid(%struct.TYPE_16__* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %366

354:                                              ; preds = %338
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %356 = load i32, i32* %9, align 4
  %357 = call i32 @RelationGetDescr(i32 %356)
  %358 = call %struct.TYPE_16__* @heap_modify_tuple(%struct.TYPE_16__* %355, i32 %357, i64* %46, i32* %49, i32* %52)
  store %struct.TYPE_16__* %358, %struct.TYPE_16__** %12, align 8
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %360 = call i32 @ReleaseSysCache(%struct.TYPE_16__* %359)
  %361 = load i32, i32* %9, align 4
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %365 = call i32 @CatalogTupleUpdate(i32 %361, i32* %363, %struct.TYPE_16__* %364)
  br label %373

366:                                              ; preds = %338
  %367 = load i32, i32* %9, align 4
  %368 = call i32 @RelationGetDescr(i32 %367)
  %369 = call %struct.TYPE_16__* @heap_form_tuple(i32 %368, i64* %46, i32* %49)
  store %struct.TYPE_16__* %369, %struct.TYPE_16__** %12, align 8
  %370 = load i32, i32* %9, align 4
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %372 = call i32 @CatalogTupleInsert(i32 %370, %struct.TYPE_16__* %371)
  br label %373

373:                                              ; preds = %366, %354
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %375 = call i32 @heap_freetuple(%struct.TYPE_16__* %374)
  store i32 0, i32* %21, align 4
  br label %376

376:                                              ; preds = %373, %57
  %377 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %377)
  %378 = load i32, i32* %21, align 4
  switch i32 %378, label %388 [
    i32 0, label %379
    i32 4, label %380
  ]

379:                                              ; preds = %376
  br label %380

380:                                              ; preds = %379, %376
  %381 = load i32, i32* %10, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %10, align 4
  br label %33

383:                                              ; preds = %33
  %384 = load i32, i32* %9, align 4
  %385 = load i32, i32* @RowExclusiveLock, align 4
  %386 = call i32 @table_close(i32 %384, i32 %385)
  br label %387

387:                                              ; preds = %383, %28
  ret void

388:                                              ; preds = %376
  unreachable
}

declare dso_local i32 @table_open(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @Int16GetDatum(i32) #1

declare dso_local i64 @BoolGetDatum(i32) #1

declare dso_local i64 @Float4GetDatum(i32) #1

declare dso_local i64 @Int32GetDatum(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @construct_array(i64*, i32, i32, i32, i32, i8 signext) #1

declare dso_local i64 @PointerGetDatum(i32*) #1

declare dso_local %struct.TYPE_16__* @SearchSysCache3(i32, i64, i64, i64) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @heap_modify_tuple(%struct.TYPE_16__*, i32, i64*, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_16__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @heap_form_tuple(i32, i64*, i32*) #1

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_16__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
