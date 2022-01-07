; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_agg_retrieve_direct.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeAgg.c_agg_retrieve_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i64, i32, i32*, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_27__**, %struct.TYPE_24__, i32*, i32, %struct.TYPE_27__* }
%struct.TYPE_26__ = type { i64, i32*, i32*, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32*, i32* }

@AGG_MIXED = common dso_local global i64 0, align 8
@AGG_PLAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_28__*)* @agg_retrieve_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @agg_retrieve_direct(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  store %struct.TYPE_29__* %22, %struct.TYPE_29__** %4, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @Max(i64 %34, i32 1)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  store %struct.TYPE_27__* %40, %struct.TYPE_27__** %5, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 14
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %42, align 8
  store %struct.TYPE_27__* %43, %struct.TYPE_27__** %6, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 12
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %8, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 11
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %10, align 8
  br label %54

54:                                               ; preds = %463, %322, %1
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %464

60:                                               ; preds = %54
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %62 = call i32 @ReScanExprContext(%struct.TYPE_27__* %61)
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %80

78:                                               ; preds = %67, %60
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %78, %73
  store i32 0, i32* %17, align 4
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 10
  %88 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %88, i64 %90
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %91, align 8
  %93 = call i32 @ReScanExprContext(%struct.TYPE_27__* %92)
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %17, align 4
  br label %81

97:                                               ; preds = %81
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %172

102:                                              ; preds = %97
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sub nsw i32 %106, 1
  %108 = icmp sge i32 %105, %107
  br i1 %108, label %109, label %172

109:                                              ; preds = %102
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = icmp slt i32 %112, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %109
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @initialize_phase(%struct.TYPE_28__* %119, i32 %123)
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 2
  store i32 0, i32* %126, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 1
  store i32 -1, i32* %128, align 4
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @Max(i64 %133, i32 1)
  store i32 %134, i32* %13, align 4
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %138, align 8
  store %struct.TYPE_29__* %139, %struct.TYPE_29__** %4, align 8
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %16, align 4
  br label %171

141:                                              ; preds = %109
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @AGG_MIXED, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %141
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %149 = call i32 @initialize_phase(%struct.TYPE_28__* %148, i32 0)
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 6
  store i32 1, i32* %151, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 9
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 9
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = call i32 @ResetTupleHashIterator(i32 %157, i32* %162)
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %165 = call i32 @select_current_set(%struct.TYPE_28__* %164, i32 0, i32 1)
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %167 = call i32* @agg_retrieve_hash_table(%struct.TYPE_28__* %166)
  store i32* %167, i32** %2, align 8
  br label %465

168:                                              ; preds = %141
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  br label %464

171:                                              ; preds = %118
  br label %172

172:                                              ; preds = %171, %102, %97
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %172
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %13, align 4
  %182 = sub nsw i32 %181, 1
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %177
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 8
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %189, i64 %194
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %15, align 4
  br label %198

197:                                              ; preds = %177, %172
  store i32 0, i32* %15, align 4
  br label %198

198:                                              ; preds = %197, %184
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 1
  store i32* %201, i32** %203, align 8
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %243, label %208

208:                                              ; preds = %198
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @AGG_PLAIN, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %266

214:                                              ; preds = %208
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, -1
  br i1 %218, label %219, label %266

219:                                              ; preds = %214
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %13, align 4
  %224 = sub nsw i32 %223, 1
  %225 = icmp slt i32 %222, %224
  br i1 %225, label %226, label %266

226:                                              ; preds = %219
  %227 = load i32, i32* %15, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %266

229:                                              ; preds = %226
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 8
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %241 = call i32 @ExecQualAndReset(i32 %239, %struct.TYPE_27__* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %266, label %243

243:                                              ; preds = %229, %198
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %13, align 4
  %252 = icmp slt i32 %250, %251
  %253 = zext i1 %252 to i32
  %254 = call i32 @Assert(i32 %253)
  %255 = load i32, i32* %15, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %243
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br label %262

262:                                              ; preds = %257, %243
  %263 = phi i1 [ true, %243 ], [ %261, %257 ]
  %264 = zext i1 %263 to i32
  %265 = call i32 @Assert(i32 %264)
  br label %430

266:                                              ; preds = %229, %226, %219, %214, %208
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i32 0, i32 1
  store i32 0, i32* %268, align 4
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 7
  %271 = load i32*, i32** %270, align 8
  %272 = icmp eq i32* %271, null
  br i1 %272, label %273, label %336

273:                                              ; preds = %266
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %275 = call i32* @fetch_input_tuple(%struct.TYPE_28__* %274)
  store i32* %275, i32** %9, align 8
  %276 = load i32*, i32** %9, align 8
  %277 = call i64 @TupIsNull(i32* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %273
  %280 = load i32*, i32** %9, align 8
  %281 = call i8* @ExecCopySlotHeapTuple(i32* %280)
  %282 = bitcast i8* %281 to i32*
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %283, i32 0, i32 7
  store i32* %282, i32** %284, align 8
  br label %335

285:                                              ; preds = %273
  %286 = load i32, i32* %12, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %324

288:                                              ; preds = %285
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 2
  store i32 1, i32* %290, align 8
  br label %291

291:                                              ; preds = %315, %288
  %292 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 8
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %296, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %316

304:                                              ; preds = %291
  %305 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %306, align 4
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %13, align 4
  %313 = icmp sge i32 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %304
  br label %316

315:                                              ; preds = %304
  br label %291

316:                                              ; preds = %314, %291
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %13, align 4
  %321 = icmp sge i32 %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  br label %54

323:                                              ; preds = %316
  br label %334

324:                                              ; preds = %285
  %325 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i32 0, i32 0
  store i32 1, i32* %326, align 8
  %327 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @AGG_PLAIN, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %324
  store i32* null, i32** %2, align 8
  br label %465

333:                                              ; preds = %324
  br label %334

334:                                              ; preds = %333, %323
  br label %335

335:                                              ; preds = %334, %279
  br label %336

336:                                              ; preds = %335, %266
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %338 = load i32*, i32** %8, align 8
  %339 = load i32, i32* %16, align 4
  %340 = call i32 @initialize_aggregates(%struct.TYPE_28__* %337, i32* %338, i32 %339)
  %341 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %341, i32 0, i32 7
  %343 = load i32*, i32** %342, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %426

345:                                              ; preds = %336
  %346 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %346, i32 0, i32 7
  %348 = load i32*, i32** %347, align 8
  %349 = load i32*, i32** %10, align 8
  %350 = call i32 @ExecForceStoreHeapTuple(i32* %348, i32* %349, i32 1)
  %351 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %351, i32 0, i32 7
  store i32* null, i32** %352, align 8
  %353 = load i32*, i32** %10, align 8
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %354, i32 0, i32 0
  store i32* %353, i32** %355, align 8
  br label %356

356:                                              ; preds = %424, %345
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i32 0, i32 5
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @AGG_MIXED, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %370

362:                                              ; preds = %356
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = icmp eq i32 %365, 1
  br i1 %366, label %367, label %370

367:                                              ; preds = %362
  %368 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %369 = call i32 @lookup_hash_entries(%struct.TYPE_28__* %368)
  br label %370

370:                                              ; preds = %367, %362, %356
  %371 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %372 = call i32 @advance_aggregates(%struct.TYPE_28__* %371)
  %373 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %374 = call i32 @ResetExprContext(%struct.TYPE_27__* %373)
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %376 = call i32* @fetch_input_tuple(%struct.TYPE_28__* %375)
  store i32* %376, i32** %9, align 8
  %377 = load i32*, i32** %9, align 8
  %378 = call i64 @TupIsNull(i32* %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %389

380:                                              ; preds = %370
  %381 = load i32, i32* %12, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %384, i32 0, i32 2
  store i32 1, i32* %385, align 8
  br label %425

386:                                              ; preds = %380
  %387 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %387, i32 0, i32 0
  store i32 1, i32* %388, align 8
  br label %425

389:                                              ; preds = %370
  %390 = load i32*, i32** %9, align 8
  %391 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %391, i32 0, i32 0
  store i32* %390, i32** %392, align 8
  %393 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @AGG_PLAIN, align 8
  %397 = icmp ne i64 %395, %396
  br i1 %397, label %398, label %424

398:                                              ; preds = %389
  %399 = load i32*, i32** %10, align 8
  %400 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %400, i32 0, i32 1
  store i32* %399, i32** %401, align 8
  %402 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %402, i32 0, i32 8
  %404 = load %struct.TYPE_26__*, %struct.TYPE_26__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %404, i32 0, i32 2
  %406 = load i32*, i32** %405, align 8
  %407 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = sub nsw i32 %409, 1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %406, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %415 = call i32 @ExecQual(i32 %413, %struct.TYPE_27__* %414)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %423, label %417

417:                                              ; preds = %398
  %418 = load i32*, i32** %9, align 8
  %419 = call i8* @ExecCopySlotHeapTuple(i32* %418)
  %420 = bitcast i8* %419 to i32*
  %421 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %421, i32 0, i32 7
  store i32* %420, i32** %422, align 8
  br label %425

423:                                              ; preds = %398
  br label %424

424:                                              ; preds = %423, %389
  br label %356

425:                                              ; preds = %417, %386, %383
  br label %426

426:                                              ; preds = %425, %336
  %427 = load i32*, i32** %10, align 8
  %428 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %428, i32 0, i32 0
  store i32* %427, i32** %429, align 8
  br label %430

430:                                              ; preds = %426, %262
  %431 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = icmp sge i32 %433, 0
  %435 = zext i1 %434 to i32
  %436 = call i32 @Assert(i32 %435)
  %437 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  store i32 %439, i32* %14, align 4
  %440 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %441 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %441, i32 0, i32 0
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %14, align 4
  %445 = call i32 @prepare_projection_slot(%struct.TYPE_28__* %440, i32* %443, i32 %444)
  %446 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %447 = load i32, i32* %14, align 4
  %448 = call i32 @select_current_set(%struct.TYPE_28__* %446, i32 %447, i32 0)
  %449 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %450 = load i32, i32* %7, align 4
  %451 = load i32*, i32** %8, align 8
  %452 = load i32, i32* %14, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @finalize_aggregates(%struct.TYPE_28__* %449, i32 %450, i32 %455)
  %457 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %458 = call i32* @project_aggregates(%struct.TYPE_28__* %457)
  store i32* %458, i32** %11, align 8
  %459 = load i32*, i32** %11, align 8
  %460 = icmp ne i32* %459, null
  br i1 %460, label %461, label %463

461:                                              ; preds = %430
  %462 = load i32*, i32** %11, align 8
  store i32* %462, i32** %2, align 8
  br label %465

463:                                              ; preds = %430
  br label %54

464:                                              ; preds = %168, %54
  store i32* null, i32** %2, align 8
  br label %465

465:                                              ; preds = %464, %461, %332, %147
  %466 = load i32*, i32** %2, align 8
  ret i32* %466
}

declare dso_local i32 @Max(i64, i32) #1

declare dso_local i32 @ReScanExprContext(%struct.TYPE_27__*) #1

declare dso_local i32 @initialize_phase(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ResetTupleHashIterator(i32, i32*) #1

declare dso_local i32 @select_current_set(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32* @agg_retrieve_hash_table(%struct.TYPE_28__*) #1

declare dso_local i32 @ExecQualAndReset(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @fetch_input_tuple(%struct.TYPE_28__*) #1

declare dso_local i64 @TupIsNull(i32*) #1

declare dso_local i8* @ExecCopySlotHeapTuple(i32*) #1

declare dso_local i32 @initialize_aggregates(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i32*, i32*, i32) #1

declare dso_local i32 @lookup_hash_entries(%struct.TYPE_28__*) #1

declare dso_local i32 @advance_aggregates(%struct.TYPE_28__*) #1

declare dso_local i32 @ResetExprContext(%struct.TYPE_27__*) #1

declare dso_local i32 @ExecQual(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @prepare_projection_slot(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @finalize_aggregates(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32* @project_aggregates(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
