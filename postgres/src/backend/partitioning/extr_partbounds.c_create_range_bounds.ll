; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partbounds.c_create_range_bounds.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partbounds.c_create_range_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i64**, i32*, i32**, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_12__ = type { i64*, i32, i64, i32* }

@PARTITION_STRATEGY_RANGE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"invalid strategy in partition bound spec\00", align 1
@qsort_partition_rbound_cmp = common dso_local global i32 0, align 4
@PARTITION_RANGE_DATUM_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__**, i32, %struct.TYPE_13__*, i32**)* @create_range_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @create_range_bounds(%struct.TYPE_14__** %0, i32 %1, %struct.TYPE_13__* %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_14__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  %11 = alloca %struct.TYPE_12__**, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i32** %3, i32*** %8, align 8
  store %struct.TYPE_12__** null, %struct.TYPE_12__*** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = call i64 @palloc0(i32 48)
  %28 = inttoptr i64 %27 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %9, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @palloc0(i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_12__**
  store %struct.TYPE_12__** %44, %struct.TYPE_12__*** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %95, %4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %98

49:                                               ; preds = %45
  %50 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %5, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %50, i64 %52
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %18, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PARTITION_STRATEGY_RANGE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @ERROR, align 4
  %62 = call i32 @elog(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %49
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %16, align 4
  br label %95

70:                                               ; preds = %63
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.TYPE_12__* @make_one_partition_rbound(%struct.TYPE_13__* %71, i32 %72, i32 %75, i32 1)
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %19, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.TYPE_12__* @make_one_partition_rbound(%struct.TYPE_13__* %77, i32 %78, i32 %81, i32 0)
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %20, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %84 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %84, i64 %87
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %90 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %90, i64 %93
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %94, align 8
  br label %95

95:                                               ; preds = %70, %68
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %45

98:                                               ; preds = %45
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %6, align 4
  %101 = mul nsw i32 %100, 2
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %114, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %108, 1
  %110 = mul nsw i32 %109, 2
  %111 = icmp eq i32 %107, %110
  br label %112

112:                                              ; preds = %106, %103
  %113 = phi i1 [ false, %103 ], [ %111, %106 ]
  br label %114

114:                                              ; preds = %112, %98
  %115 = phi i1 [ true, %98 ], [ %113, %112 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @Assert(i32 %116)
  %118 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @qsort_partition_rbound_cmp, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = bitcast %struct.TYPE_13__* %121 to i8*
  %123 = call i32 @qsort_arg(%struct.TYPE_12__** %118, i32 %119, i32 8, i32 %120, i8* %122)
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = call i64 @palloc(i32 %127)
  %129 = inttoptr i64 %128 to %struct.TYPE_12__**
  store %struct.TYPE_12__** %129, %struct.TYPE_12__*** %10, align 8
  store i32 0, i32* %14, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %230, %114
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %233

134:                                              ; preds = %130
  %135 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %135, i64 %137
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  store %struct.TYPE_12__* %139, %struct.TYPE_12__** %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %140

140:                                              ; preds = %211, %134
  %141 = load i32, i32* %23, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %214

146:                                              ; preds = %140
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %148 = icmp eq %struct.TYPE_12__* %147, null
  br i1 %148, label %165, label %149

149:                                              ; preds = %146
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %23, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %156, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %149, %146
  store i32 1, i32* %22, align 4
  br label %214

166:                                              ; preds = %149
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %23, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @PARTITION_RANGE_DATUM_VALUE, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %166
  br label %214

177:                                              ; preds = %166
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %23, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %23, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %23, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %23, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @FunctionCall2Coll(i32* %183, i32 %190, i32 %197, i32 %204)
  store i32 %205, i32* %24, align 4
  %206 = load i32, i32* %24, align 4
  %207 = call i64 @DatumGetInt32(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %177
  store i32 1, i32* %22, align 4
  br label %214

210:                                              ; preds = %177
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %23, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %23, align 4
  br label %140

214:                                              ; preds = %209, %176, %165, %140
  %215 = load i32, i32* %22, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %214
  %218 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %218, i64 %220
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %14, align 4
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %223, i64 %226
  store %struct.TYPE_12__* %222, %struct.TYPE_12__** %227, align 8
  br label %228

228:                                              ; preds = %217, %214
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %229, %struct.TYPE_12__** %12, align 8
  br label %230

230:                                              ; preds = %228
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %130

233:                                              ; preds = %130
  %234 = load i32, i32* %14, align 4
  store i32 %234, i32* %15, align 4
  %235 = load i32, i32* %15, align 4
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* %15, align 4
  %239 = sext i32 %238 to i64
  %240 = mul i64 %239, 8
  %241 = trunc i64 %240 to i32
  %242 = call i64 @palloc0(i32 %241)
  %243 = inttoptr i64 %242 to i32**
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 5
  store i32** %243, i32*** %245, align 8
  %246 = load i32, i32* %15, align 4
  %247 = sext i32 %246 to i64
  %248 = mul i64 %247, 8
  %249 = trunc i64 %248 to i32
  %250 = call i64 @palloc(i32 %249)
  %251 = inttoptr i64 %250 to i64**
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 3
  store i64** %251, i64*** %253, align 8
  %254 = load i32, i32* %15, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = mul i64 %256, 4
  %258 = trunc i64 %257 to i32
  %259 = call i64 @palloc(i32 %258)
  %260 = inttoptr i64 %259 to i32*
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 4
  store i32* %260, i32** %262, align 8
  store i32 0, i32* %13, align 4
  br label %263

263:                                              ; preds = %431, %233
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* %15, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %434

267:                                              ; preds = %263
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = mul i64 %271, 4
  %273 = trunc i64 %272 to i32
  %274 = call i64 @palloc(i32 %273)
  %275 = inttoptr i64 %274 to i32*
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 5
  %278 = load i32**, i32*** %277, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32*, i32** %278, i64 %280
  store i32* %275, i32** %281, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = mul i64 %285, 8
  %287 = trunc i64 %286 to i32
  %288 = call i64 @palloc(i32 %287)
  %289 = inttoptr i64 %288 to i64*
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 3
  %292 = load i64**, i64*** %291, align 8
  %293 = load i32, i32* %13, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64*, i64** %292, i64 %294
  store i64* %289, i64** %295, align 8
  store i32 0, i32* %25, align 4
  br label %296

296:                                              ; preds = %375, %267
  %297 = load i32, i32* %25, align 4
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp slt i32 %297, %300
  br i1 %301, label %302, label %378

302:                                              ; preds = %296
  %303 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %303, i64 %305
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 0
  %309 = load i64*, i64** %308, align 8
  %310 = load i32, i32* %25, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @PARTITION_RANGE_DATUM_VALUE, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %353

316:                                              ; preds = %302
  %317 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %318 = load i32, i32* %13, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %317, i64 %319
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 3
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %25, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %25, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %25, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @datumCopy(i32 %327, i32 %334, i32 %341)
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 5
  %345 = load i32**, i32*** %344, align 8
  %346 = load i32, i32* %13, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32*, i32** %345, i64 %347
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %25, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  store i32 %342, i32* %352, align 4
  br label %353

353:                                              ; preds = %316, %302
  %354 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %355 = load i32, i32* %13, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %354, i64 %356
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 0
  %360 = load i64*, i64** %359, align 8
  %361 = load i32, i32* %25, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %360, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 3
  %367 = load i64**, i64*** %366, align 8
  %368 = load i32, i32* %13, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64*, i64** %367, i64 %369
  %371 = load i64*, i64** %370, align 8
  %372 = load i32, i32* %25, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i64, i64* %371, i64 %373
  store i64 %364, i64* %374, align 8
  br label %375

375:                                              ; preds = %353
  %376 = load i32, i32* %25, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %25, align 4
  br label %296

378:                                              ; preds = %296
  %379 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %380 = load i32, i32* %13, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %379, i64 %381
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %394

387:                                              ; preds = %378
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 4
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %13, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  store i32 -1, i32* %393, align 4
  br label %430

394:                                              ; preds = %378
  %395 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %396 = load i32, i32* %13, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %395, i64 %397
  %399 = load %struct.TYPE_12__*, %struct.TYPE_12__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  store i32 %401, i32* %26, align 4
  %402 = load i32**, i32*** %8, align 8
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %26, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = icmp eq i32 %407, -1
  br i1 %408, label %409, label %417

409:                                              ; preds = %394
  %410 = load i32, i32* %17, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %17, align 4
  %412 = load i32**, i32*** %8, align 8
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %26, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  store i32 %410, i32* %416, align 4
  br label %417

417:                                              ; preds = %409, %394
  %418 = load i32**, i32*** %8, align 8
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %26, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %425 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %424, i32 0, i32 4
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %13, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  store i32 %423, i32* %429, align 4
  br label %430

430:                                              ; preds = %417, %387
  br label %431

431:                                              ; preds = %430
  %432 = load i32, i32* %13, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %13, align 4
  br label %263

434:                                              ; preds = %263
  %435 = load i32, i32* %16, align 4
  %436 = icmp ne i32 %435, -1
  br i1 %436, label %437, label %467

437:                                              ; preds = %434
  %438 = load i32, i32* %16, align 4
  %439 = icmp sge i32 %438, 0
  br i1 %439, label %440, label %448

440:                                              ; preds = %437
  %441 = load i32**, i32*** %8, align 8
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %16, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = icmp eq i32 %446, -1
  br label %448

448:                                              ; preds = %440, %437
  %449 = phi i1 [ false, %437 ], [ %447, %440 ]
  %450 = zext i1 %449 to i32
  %451 = call i32 @Assert(i32 %450)
  %452 = load i32, i32* %17, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %17, align 4
  %454 = load i32**, i32*** %8, align 8
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* %16, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  store i32 %452, i32* %458, align 4
  %459 = load i32**, i32*** %8, align 8
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %16, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 1
  store i32 %464, i32* %466, align 4
  br label %467

467:                                              ; preds = %448, %434
  %468 = load i32, i32* %13, align 4
  %469 = load i32, i32* %15, align 4
  %470 = icmp eq i32 %468, %469
  %471 = zext i1 %470 to i32
  %472 = call i32 @Assert(i32 %471)
  %473 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %473, i32 0, i32 4
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %13, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  store i32 -1, i32* %478, align 4
  %479 = load i32, i32* %17, align 4
  %480 = load i32, i32* %6, align 4
  %481 = icmp eq i32 %479, %480
  %482 = zext i1 %481 to i32
  %483 = call i32 @Assert(i32 %482)
  %484 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  ret %struct.TYPE_15__* %484
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @make_one_partition_rbound(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @qsort_arg(%struct.TYPE_12__**, i32, i32, i32, i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
