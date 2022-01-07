; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_wherePathSatisfiesOrderBy.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_wherePathSatisfiesOrderBy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32, %struct.TYPE_46__*, i32, %struct.TYPE_48__* }
%struct.TYPE_46__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i8* }
%struct.TYPE_48__ = type { %struct.TYPE_45__* }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_54__* }
%struct.TYPE_54__ = type { i32, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i64, i32, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_38__** }
%struct.TYPE_38__ = type { i32, i32, i64, i32, i32, %struct.TYPE_53__, %struct.TYPE_36__** }
%struct.TYPE_53__ = type { %struct.TYPE_52__, %struct.TYPE_44__ }
%struct.TYPE_52__ = type { i32, i32, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, i32, i32*, i32*, i8**, %struct.TYPE_51__*, %struct.TYPE_47__*, i64 }
%struct.TYPE_51__ = type { %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_47__ = type { i32, %struct.TYPE_49__* }
%struct.TYPE_49__ = type { i64 }
%struct.TYPE_44__ = type { i64 }
%struct.TYPE_36__ = type { i32, %struct.TYPE_42__* }

@SQLITE_OrderByIdxJoin = common dso_local global i32 0, align 4
@BMS = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@WO_IS = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@WHERE_ORDERBY_LIMIT = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_IS = common dso_local global i64 0, align 8
@WHERE_ONEROW = common dso_local global i32 0, align 4
@WHERE_IPK = common dso_local global i32 0, align 4
@XN_ROWID = common dso_local global i32 0, align 4
@WHERE_GROUPBY = common dso_local global i32 0, align 4
@WHERE_DISTINCTBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_39__*, %struct.TYPE_41__*, %struct.TYPE_37__*, i32, i32, %struct.TYPE_38__*, i32*)* @wherePathSatisfiesOrderBy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wherePathSatisfiesOrderBy(%struct.TYPE_39__* %0, %struct.TYPE_41__* %1, %struct.TYPE_37__* %2, i32 %3, i32 %4, %struct.TYPE_38__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_39__*, align 8
  %10 = alloca %struct.TYPE_41__*, align 8
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_38__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_38__*, align 8
  %32 = alloca %struct.TYPE_36__*, align 8
  %33 = alloca %struct.TYPE_42__*, align 8
  %34 = alloca %struct.TYPE_43__*, align 8
  %35 = alloca %struct.TYPE_40__*, align 8
  %36 = alloca %struct.TYPE_35__*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %struct.TYPE_42__*, align 8
  %46 = alloca %struct.TYPE_42__*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %9, align 8
  store %struct.TYPE_41__* %1, %struct.TYPE_41__** %10, align 8
  store %struct.TYPE_37__* %2, %struct.TYPE_37__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_38__* %5, %struct.TYPE_38__** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %31, align 8
  %49 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_46__*, %struct.TYPE_46__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_35__*, %struct.TYPE_35__** %52, align 8
  store %struct.TYPE_35__* %53, %struct.TYPE_35__** %36, align 8
  store i32 0, i32* %37, align 4
  %54 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %55 = icmp ne %struct.TYPE_41__* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %7
  %61 = load %struct.TYPE_35__*, %struct.TYPE_35__** %36, align 8
  %62 = load i32, i32* @SQLITE_OrderByIdxJoin, align 4
  %63 = call i64 @OptimizationDisabled(%struct.TYPE_35__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %912

66:                                               ; preds = %60, %7
  %67 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %25, align 4
  %70 = load i32, i32* %25, align 4
  %71 = load i32, i32* @BMS, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp eq i32 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @testcase(i32 %74)
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* @BMS, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %912

81:                                               ; preds = %66
  store i32 1, i32* %19, align 4
  %82 = load i32, i32* %25, align 4
  %83 = call i32 @MASKBIT(i32 %82)
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %38, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  %85 = load i32, i32* @WO_EQ, align 4
  %86 = load i32, i32* @WO_IS, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @WO_ISNULL, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %22, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @WHERE_ORDERBY_LIMIT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %81
  %95 = load i32, i32* @WO_IN, align 4
  %96 = load i32, i32* %22, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %22, align 4
  br label %98

98:                                               ; preds = %94, %81
  store i32 0, i32* %26, align 4
  br label %99

99:                                               ; preds = %877, %98
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* %37, align 4
  %104 = load i32, i32* %38, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %26, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp sle i32 %107, %108
  br label %110

110:                                              ; preds = %106, %102, %99
  %111 = phi i1 [ false, %102 ], [ false, %99 ], [ %109, %106 ]
  br i1 %111, label %112, label %880

112:                                              ; preds = %110
  %113 = load i32, i32* %26, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %117 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %40, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %40, align 4
  br label %121

121:                                              ; preds = %115, %112
  %122 = load i32, i32* %26, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %127, align 8
  %129 = load i32, i32* %26, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %128, i64 %130
  %132 = load %struct.TYPE_38__*, %struct.TYPE_38__** %131, align 8
  store %struct.TYPE_38__* %132, %struct.TYPE_38__** %31, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @WHERE_ORDERBY_LIMIT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %877

138:                                              ; preds = %125
  br label %141

139:                                              ; preds = %121
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  store %struct.TYPE_38__* %140, %struct.TYPE_38__** %31, align 8
  br label %141

141:                                              ; preds = %139, %138
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %143 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %141
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* %38, align 4
  store i32 %156, i32* %37, align 4
  br label %157

157:                                              ; preds = %155, %148
  br label %880

158:                                              ; preds = %141
  %159 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %160 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  br label %163

163:                                              ; preds = %158
  %164 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_48__*, %struct.TYPE_48__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_45__*, %struct.TYPE_45__** %167, align 8
  %169 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %170 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %168, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %29, align 4
  store i32 0, i32* %27, align 4
  br label %175

175:                                              ; preds = %338, %163
  %176 = load i32, i32* %27, align 4
  %177 = load i32, i32* %25, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %341

179:                                              ; preds = %175
  %180 = load i32, i32* %27, align 4
  %181 = call i32 @MASKBIT(i32 %180)
  %182 = load i32, i32* %37, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %338

186:                                              ; preds = %179
  %187 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_54__*, %struct.TYPE_54__** %188, align 8
  %190 = load i32, i32* %27, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_42__*, %struct.TYPE_42__** %193, align 8
  %195 = call %struct.TYPE_42__* @sqlite3ExprSkipCollate(%struct.TYPE_42__* %194)
  store %struct.TYPE_42__* %195, %struct.TYPE_42__** %33, align 8
  %196 = load %struct.TYPE_42__*, %struct.TYPE_42__** %33, align 8
  %197 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @TK_COLUMN, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %186
  br label %338

202:                                              ; preds = %186
  %203 = load %struct.TYPE_42__*, %struct.TYPE_42__** %33, align 8
  %204 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %29, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  br label %338

209:                                              ; preds = %202
  %210 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %210, i32 0, i32 2
  %212 = load i32, i32* %29, align 4
  %213 = load %struct.TYPE_42__*, %struct.TYPE_42__** %33, align 8
  %214 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %40, align 4
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %22, align 4
  %219 = call %struct.TYPE_36__* @sqlite3WhereFindTerm(i32* %211, i32 %212, i32 %215, i32 %217, i32 %218, i32 0)
  store %struct.TYPE_36__* %219, %struct.TYPE_36__** %32, align 8
  %220 = load %struct.TYPE_36__*, %struct.TYPE_36__** %32, align 8
  %221 = icmp eq %struct.TYPE_36__* %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %209
  br label %338

223:                                              ; preds = %209
  %224 = load %struct.TYPE_36__*, %struct.TYPE_36__** %32, align 8
  %225 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @WO_IN, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %264

229:                                              ; preds = %223
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @WHERE_ORDERBY_LIMIT, align 4
  %232 = and i32 %230, %231
  %233 = call i32 @assert(i32 %232)
  store i32 0, i32* %28, align 4
  br label %234

234:                                              ; preds = %253, %229
  %235 = load i32, i32* %28, align 4
  %236 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %237 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %234
  %241 = load %struct.TYPE_36__*, %struct.TYPE_36__** %32, align 8
  %242 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %243 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %242, i32 0, i32 6
  %244 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %243, align 8
  %245 = load i32, i32* %28, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %244, i64 %246
  %248 = load %struct.TYPE_36__*, %struct.TYPE_36__** %247, align 8
  %249 = icmp ne %struct.TYPE_36__* %241, %248
  br label %250

250:                                              ; preds = %240, %234
  %251 = phi i1 [ false, %234 ], [ %249, %240 ]
  br i1 %251, label %252, label %256

252:                                              ; preds = %250
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %28, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %28, align 4
  br label %234

256:                                              ; preds = %250
  %257 = load i32, i32* %28, align 4
  %258 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %259 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = icmp sge i32 %257, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  br label %338

263:                                              ; preds = %256
  br label %264

264:                                              ; preds = %263, %223
  %265 = load %struct.TYPE_36__*, %struct.TYPE_36__** %32, align 8
  %266 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @WO_EQ, align 4
  %269 = load i32, i32* @WO_IS, align 4
  %270 = or i32 %268, %269
  %271 = and i32 %267, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %333

273:                                              ; preds = %264
  %274 = load %struct.TYPE_42__*, %struct.TYPE_42__** %33, align 8
  %275 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = icmp sge i32 %276, 0
  br i1 %277, label %278, label %333

278:                                              ; preds = %273
  %279 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_46__*, %struct.TYPE_46__** %280, align 8
  %282 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_54__*, %struct.TYPE_54__** %283, align 8
  %285 = load i32, i32* %27, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_42__*, %struct.TYPE_42__** %288, align 8
  %290 = call %struct.TYPE_43__* @sqlite3ExprCollSeq(%struct.TYPE_46__* %281, %struct.TYPE_42__* %289)
  store %struct.TYPE_43__* %290, %struct.TYPE_43__** %34, align 8
  %291 = load %struct.TYPE_43__*, %struct.TYPE_43__** %34, align 8
  %292 = icmp ne %struct.TYPE_43__* %291, null
  br i1 %292, label %297, label %293

293:                                              ; preds = %278
  %294 = load %struct.TYPE_35__*, %struct.TYPE_35__** %36, align 8
  %295 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_43__*, %struct.TYPE_43__** %295, align 8
  store %struct.TYPE_43__* %296, %struct.TYPE_43__** %34, align 8
  br label %297

297:                                              ; preds = %293, %278
  %298 = load %struct.TYPE_43__*, %struct.TYPE_43__** %34, align 8
  %299 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  store i8* %300, i8** %41, align 8
  %301 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_46__*, %struct.TYPE_46__** %302, align 8
  %304 = load %struct.TYPE_36__*, %struct.TYPE_36__** %32, align 8
  %305 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_42__*, %struct.TYPE_42__** %305, align 8
  %307 = call %struct.TYPE_43__* @sqlite3ExprCollSeq(%struct.TYPE_46__* %303, %struct.TYPE_42__* %306)
  store %struct.TYPE_43__* %307, %struct.TYPE_43__** %34, align 8
  %308 = load %struct.TYPE_43__*, %struct.TYPE_43__** %34, align 8
  %309 = icmp ne %struct.TYPE_43__* %308, null
  br i1 %309, label %314, label %310

310:                                              ; preds = %297
  %311 = load %struct.TYPE_35__*, %struct.TYPE_35__** %36, align 8
  %312 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_43__*, %struct.TYPE_43__** %312, align 8
  store %struct.TYPE_43__* %313, %struct.TYPE_43__** %34, align 8
  br label %314

314:                                              ; preds = %310, %297
  %315 = load %struct.TYPE_43__*, %struct.TYPE_43__** %34, align 8
  %316 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %315, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  store i8* %317, i8** %42, align 8
  %318 = load i8*, i8** %41, align 8
  %319 = load i8*, i8** %42, align 8
  %320 = call i64 @sqlite3StrICmp(i8* %318, i8* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %314
  br label %338

323:                                              ; preds = %314
  %324 = load %struct.TYPE_36__*, %struct.TYPE_36__** %32, align 8
  %325 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %324, i32 0, i32 1
  %326 = load %struct.TYPE_42__*, %struct.TYPE_42__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @TK_IS, align 8
  %330 = icmp eq i64 %328, %329
  %331 = zext i1 %330 to i32
  %332 = call i32 @testcase(i32 %331)
  br label %333

333:                                              ; preds = %323, %273, %264
  %334 = load i32, i32* %27, align 4
  %335 = call i32 @MASKBIT(i32 %334)
  %336 = load i32, i32* %37, align 4
  %337 = or i32 %336, %335
  store i32 %337, i32* %37, align 4
  br label %338

338:                                              ; preds = %333, %322, %262, %222, %208, %201, %185
  %339 = load i32, i32* %27, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %27, align 4
  br label %175

341:                                              ; preds = %175
  %342 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %343 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @WHERE_ONEROW, align 4
  %346 = and i32 %344, %345
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %820

348:                                              ; preds = %341
  %349 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %350 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @WHERE_IPK, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %348
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %35, align 8
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  br label %415

356:                                              ; preds = %348
  %357 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %358 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %359, i32 0, i32 2
  %361 = load %struct.TYPE_40__*, %struct.TYPE_40__** %360, align 8
  store %struct.TYPE_40__* %361, %struct.TYPE_40__** %35, align 8
  %362 = icmp eq %struct.TYPE_40__* %361, null
  br i1 %362, label %368, label %363

363:                                              ; preds = %356
  %364 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %365 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %364, i32 0, i32 7
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %363, %356
  store i32 0, i32* %8, align 4
  br label %912

369:                                              ; preds = %363
  %370 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %371 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  store i32 %372, i32* %23, align 4
  %373 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %374 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  store i32 %375, i32* %24, align 4
  %376 = load i32, i32* %24, align 4
  %377 = load i32, i32* %23, align 4
  %378 = add nsw i32 %377, 1
  %379 = icmp eq i32 %376, %378
  br i1 %379, label %387, label %380

380:                                              ; preds = %369
  %381 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %382 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %381, i32 0, i32 6
  %383 = load %struct.TYPE_47__*, %struct.TYPE_47__** %382, align 8
  %384 = call i32 @HasRowid(%struct.TYPE_47__* %383)
  %385 = icmp ne i32 %384, 0
  %386 = xor i1 %385, true
  br label %387

387:                                              ; preds = %380, %369
  %388 = phi i1 [ true, %369 ], [ %386, %380 ]
  %389 = zext i1 %388 to i32
  %390 = call i32 @assert(i32 %389)
  %391 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %392 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %391, i32 0, i32 2
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %24, align 4
  %395 = sub nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %393, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @XN_ROWID, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %408, label %401

401:                                              ; preds = %387
  %402 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %403 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %402, i32 0, i32 6
  %404 = load %struct.TYPE_47__*, %struct.TYPE_47__** %403, align 8
  %405 = call i32 @HasRowid(%struct.TYPE_47__* %404)
  %406 = icmp ne i32 %405, 0
  %407 = xor i1 %406, true
  br label %408

408:                                              ; preds = %401, %387
  %409 = phi i1 [ true, %387 ], [ %407, %401 ]
  %410 = zext i1 %409 to i32
  %411 = call i32 @assert(i32 %410)
  %412 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %413 = call i32 @IsUniqueIndex(%struct.TYPE_40__* %412)
  store i32 %413, i32* %19, align 4
  br label %414

414:                                              ; preds = %408
  br label %415

415:                                              ; preds = %414, %355
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %28, align 4
  br label %416

416:                                              ; preds = %808, %415
  %417 = load i32, i32* %28, align 4
  %418 = load i32, i32* %24, align 4
  %419 = icmp slt i32 %417, %418
  br i1 %419, label %420, label %811

420:                                              ; preds = %416
  store i32 1, i32* %43, align 4
  %421 = load i32, i32* %28, align 4
  %422 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %423 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = icmp sge i32 %421, %426
  br i1 %427, label %445, label %428

428:                                              ; preds = %420
  %429 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %430 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %429, i32 0, i32 6
  %431 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %430, align 8
  %432 = load i32, i32* %28, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %431, i64 %433
  %435 = load %struct.TYPE_36__*, %struct.TYPE_36__** %434, align 8
  %436 = icmp eq %struct.TYPE_36__* %435, null
  %437 = zext i1 %436 to i32
  %438 = load i32, i32* %28, align 4
  %439 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %440 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 4
  %442 = icmp slt i32 %438, %441
  %443 = zext i1 %442 to i32
  %444 = icmp eq i32 %437, %443
  br label %445

445:                                              ; preds = %428, %420
  %446 = phi i1 [ true, %420 ], [ %444, %428 ]
  %447 = zext i1 %446 to i32
  %448 = call i32 @assert(i32 %447)
  %449 = load i32, i32* %28, align 4
  %450 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %451 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = icmp slt i32 %449, %454
  br i1 %455, label %456, label %543

456:                                              ; preds = %445
  %457 = load i32, i32* %28, align 4
  %458 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %459 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 4
  %461 = icmp sge i32 %457, %460
  br i1 %461, label %462, label %543

462:                                              ; preds = %456
  %463 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %464 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %463, i32 0, i32 6
  %465 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %464, align 8
  %466 = load i32, i32* %28, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %465, i64 %467
  %469 = load %struct.TYPE_36__*, %struct.TYPE_36__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  store i32 %471, i32* %44, align 4
  %472 = load i32, i32* %44, align 4
  %473 = load i32, i32* %22, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %485

476:                                              ; preds = %462
  %477 = load i32, i32* %44, align 4
  %478 = load i32, i32* @WO_ISNULL, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %484

481:                                              ; preds = %476
  %482 = load i32, i32* %19, align 4
  %483 = call i32 @testcase(i32 %482)
  store i32 0, i32* %19, align 4
  br label %484

484:                                              ; preds = %481, %476
  br label %808

485:                                              ; preds = %462
  %486 = load i32, i32* %44, align 4
  %487 = load i32, i32* @WO_IN, align 4
  %488 = and i32 %486, %487
  %489 = call i64 @ALWAYS(i32 %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %541

491:                                              ; preds = %485
  %492 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %493 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %492, i32 0, i32 6
  %494 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %493, align 8
  %495 = load i32, i32* %28, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %494, i64 %496
  %498 = load %struct.TYPE_36__*, %struct.TYPE_36__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %498, i32 0, i32 1
  %500 = load %struct.TYPE_42__*, %struct.TYPE_42__** %499, align 8
  store %struct.TYPE_42__* %500, %struct.TYPE_42__** %45, align 8
  %501 = load i32, i32* %28, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %27, align 4
  br label %503

503:                                              ; preds = %537, %491
  %504 = load i32, i32* %27, align 4
  %505 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %506 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %505, i32 0, i32 5
  %507 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = icmp slt i32 %504, %509
  br i1 %510, label %511, label %540

511:                                              ; preds = %503
  %512 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %513 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %512, i32 0, i32 6
  %514 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %513, align 8
  %515 = load i32, i32* %27, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %514, i64 %516
  %518 = load %struct.TYPE_36__*, %struct.TYPE_36__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %518, i32 0, i32 1
  %520 = load %struct.TYPE_42__*, %struct.TYPE_42__** %519, align 8
  %521 = load %struct.TYPE_42__*, %struct.TYPE_42__** %45, align 8
  %522 = icmp eq %struct.TYPE_42__* %520, %521
  br i1 %522, label %523, label %536

523:                                              ; preds = %511
  %524 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %525 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %524, i32 0, i32 6
  %526 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %525, align 8
  %527 = load i32, i32* %27, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %526, i64 %528
  %530 = load %struct.TYPE_36__*, %struct.TYPE_36__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = load i32, i32* @WO_IN, align 4
  %534 = and i32 %532, %533
  %535 = call i32 @assert(i32 %534)
  store i32 0, i32* %43, align 4
  br label %540

536:                                              ; preds = %511
  br label %537

537:                                              ; preds = %536
  %538 = load i32, i32* %27, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %27, align 4
  br label %503

540:                                              ; preds = %523, %503
  br label %541

541:                                              ; preds = %540, %485
  br label %542

542:                                              ; preds = %541
  br label %543

543:                                              ; preds = %542, %456, %445
  %544 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %545 = icmp ne %struct.TYPE_40__* %544, null
  br i1 %545, label %546, label %570

546:                                              ; preds = %543
  %547 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %548 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %547, i32 0, i32 2
  %549 = load i32*, i32** %548, align 8
  %550 = load i32, i32* %28, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %552, align 4
  store i32 %553, i32* %30, align 4
  %554 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %555 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %554, i32 0, i32 3
  %556 = load i32*, i32** %555, align 8
  %557 = load i32, i32* %28, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  %560 = load i32, i32* %559, align 4
  store i32 %560, i32* %18, align 4
  %561 = load i32, i32* %30, align 4
  %562 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %563 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %562, i32 0, i32 6
  %564 = load %struct.TYPE_47__*, %struct.TYPE_47__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = icmp eq i32 %561, %566
  br i1 %567, label %568, label %569

568:                                              ; preds = %546
  store i32 -1, i32* %30, align 4
  br label %569

569:                                              ; preds = %568, %546
  br label %572

570:                                              ; preds = %543
  %571 = load i32, i32* @XN_ROWID, align 4
  store i32 %571, i32* %30, align 4
  store i32 0, i32* %18, align 4
  br label %572

572:                                              ; preds = %570, %569
  %573 = load i32, i32* %19, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %599

575:                                              ; preds = %572
  %576 = load i32, i32* %30, align 4
  %577 = icmp sge i32 %576, 0
  br i1 %577, label %578, label %599

578:                                              ; preds = %575
  %579 = load i32, i32* %28, align 4
  %580 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %581 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %580, i32 0, i32 5
  %582 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = icmp sge i32 %579, %584
  br i1 %585, label %586, label %599

586:                                              ; preds = %578
  %587 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %588 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %587, i32 0, i32 6
  %589 = load %struct.TYPE_47__*, %struct.TYPE_47__** %588, align 8
  %590 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %589, i32 0, i32 1
  %591 = load %struct.TYPE_49__*, %struct.TYPE_49__** %590, align 8
  %592 = load i32, i32* %30, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %591, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %594, i32 0, i32 0
  %596 = load i64, i64* %595, align 8
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %598, label %599

598:                                              ; preds = %586
  store i32 0, i32* %19, align 4
  br label %599

599:                                              ; preds = %598, %586, %578, %575, %572
  store i32 0, i32* %21, align 4
  store i32 0, i32* %27, align 4
  br label %600

600:                                              ; preds = %727, %599
  %601 = load i32, i32* %43, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %607

603:                                              ; preds = %600
  %604 = load i32, i32* %27, align 4
  %605 = load i32, i32* %25, align 4
  %606 = icmp slt i32 %604, %605
  br label %607

607:                                              ; preds = %603, %600
  %608 = phi i1 [ false, %600 ], [ %606, %603 ]
  br i1 %608, label %609, label %730

609:                                              ; preds = %607
  %610 = load i32, i32* %27, align 4
  %611 = call i32 @MASKBIT(i32 %610)
  %612 = load i32, i32* %37, align 4
  %613 = and i32 %611, %612
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %616

615:                                              ; preds = %609
  br label %727

616:                                              ; preds = %609
  %617 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %618 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %617, i32 0, i32 1
  %619 = load %struct.TYPE_54__*, %struct.TYPE_54__** %618, align 8
  %620 = load i32, i32* %27, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %619, i64 %621
  %623 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %622, i32 0, i32 1
  %624 = load %struct.TYPE_42__*, %struct.TYPE_42__** %623, align 8
  %625 = call %struct.TYPE_42__* @sqlite3ExprSkipCollate(%struct.TYPE_42__* %624)
  store %struct.TYPE_42__* %625, %struct.TYPE_42__** %33, align 8
  %626 = load i32, i32* %12, align 4
  %627 = load i32, i32* @WHERE_GROUPBY, align 4
  %628 = and i32 %626, %627
  %629 = call i32 @testcase(i32 %628)
  %630 = load i32, i32* %12, align 4
  %631 = load i32, i32* @WHERE_DISTINCTBY, align 4
  %632 = and i32 %630, %631
  %633 = call i32 @testcase(i32 %632)
  %634 = load i32, i32* %12, align 4
  %635 = load i32, i32* @WHERE_GROUPBY, align 4
  %636 = load i32, i32* @WHERE_DISTINCTBY, align 4
  %637 = or i32 %635, %636
  %638 = and i32 %634, %637
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %641

640:                                              ; preds = %616
  store i32 0, i32* %43, align 4
  br label %641

641:                                              ; preds = %640, %616
  %642 = load i32, i32* %30, align 4
  %643 = icmp sge i32 %642, -1
  br i1 %643, label %644, label %666

644:                                              ; preds = %641
  %645 = load %struct.TYPE_42__*, %struct.TYPE_42__** %33, align 8
  %646 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %645, i32 0, i32 0
  %647 = load i64, i64* %646, align 8
  %648 = load i64, i64* @TK_COLUMN, align 8
  %649 = icmp ne i64 %647, %648
  br i1 %649, label %650, label %651

650:                                              ; preds = %644
  br label %727

651:                                              ; preds = %644
  %652 = load %struct.TYPE_42__*, %struct.TYPE_42__** %33, align 8
  %653 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 8
  %655 = load i32, i32* %29, align 4
  %656 = icmp ne i32 %654, %655
  br i1 %656, label %657, label %658

657:                                              ; preds = %651
  br label %727

658:                                              ; preds = %651
  %659 = load %struct.TYPE_42__*, %struct.TYPE_42__** %33, align 8
  %660 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %659, i32 0, i32 2
  %661 = load i32, i32* %660, align 4
  %662 = load i32, i32* %30, align 4
  %663 = icmp ne i32 %661, %662
  br i1 %663, label %664, label %665

664:                                              ; preds = %658
  br label %727

665:                                              ; preds = %658
  br label %683

666:                                              ; preds = %641
  %667 = load %struct.TYPE_42__*, %struct.TYPE_42__** %33, align 8
  %668 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %669 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %668, i32 0, i32 5
  %670 = load %struct.TYPE_51__*, %struct.TYPE_51__** %669, align 8
  %671 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %670, i32 0, i32 0
  %672 = load %struct.TYPE_50__*, %struct.TYPE_50__** %671, align 8
  %673 = load i32, i32* %28, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %672, i64 %674
  %676 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %675, i32 0, i32 0
  %677 = load i32, i32* %676, align 4
  %678 = load i32, i32* %29, align 4
  %679 = call i64 @sqlite3ExprCompare(%struct.TYPE_42__* %667, i32 %677, i32 %678)
  %680 = icmp ne i64 %679, 0
  br i1 %680, label %681, label %682

681:                                              ; preds = %666
  br label %727

682:                                              ; preds = %666
  br label %683

683:                                              ; preds = %682, %665
  %684 = load i32, i32* %30, align 4
  %685 = icmp sge i32 %684, 0
  br i1 %685, label %686, label %720

686:                                              ; preds = %683
  %687 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %688 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %687, i32 0, i32 1
  %689 = load %struct.TYPE_46__*, %struct.TYPE_46__** %688, align 8
  %690 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %691 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %690, i32 0, i32 1
  %692 = load %struct.TYPE_54__*, %struct.TYPE_54__** %691, align 8
  %693 = load i32, i32* %27, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %692, i64 %694
  %696 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %695, i32 0, i32 1
  %697 = load %struct.TYPE_42__*, %struct.TYPE_42__** %696, align 8
  %698 = call %struct.TYPE_43__* @sqlite3ExprCollSeq(%struct.TYPE_46__* %689, %struct.TYPE_42__* %697)
  store %struct.TYPE_43__* %698, %struct.TYPE_43__** %34, align 8
  %699 = load %struct.TYPE_43__*, %struct.TYPE_43__** %34, align 8
  %700 = icmp ne %struct.TYPE_43__* %699, null
  br i1 %700, label %705, label %701

701:                                              ; preds = %686
  %702 = load %struct.TYPE_35__*, %struct.TYPE_35__** %36, align 8
  %703 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %702, i32 0, i32 0
  %704 = load %struct.TYPE_43__*, %struct.TYPE_43__** %703, align 8
  store %struct.TYPE_43__* %704, %struct.TYPE_43__** %34, align 8
  br label %705

705:                                              ; preds = %701, %686
  %706 = load %struct.TYPE_43__*, %struct.TYPE_43__** %34, align 8
  %707 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %706, i32 0, i32 0
  %708 = load i8*, i8** %707, align 8
  %709 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %710 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %709, i32 0, i32 4
  %711 = load i8**, i8*** %710, align 8
  %712 = load i32, i32* %28, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i8*, i8** %711, i64 %713
  %715 = load i8*, i8** %714, align 8
  %716 = call i64 @sqlite3StrICmp(i8* %708, i8* %715)
  %717 = icmp ne i64 %716, 0
  br i1 %717, label %718, label %719

718:                                              ; preds = %705
  br label %727

719:                                              ; preds = %705
  br label %720

720:                                              ; preds = %719, %683
  %721 = load i32, i32* %28, align 4
  %722 = add nsw i32 %721, 1
  %723 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %724 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %723, i32 0, i32 5
  %725 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %724, i32 0, i32 0
  %726 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %725, i32 0, i32 0
  store i32 %722, i32* %726, align 8
  store i32 1, i32* %21, align 4
  br label %730

727:                                              ; preds = %718, %681, %664, %657, %650, %615
  %728 = load i32, i32* %27, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %27, align 4
  br label %600

730:                                              ; preds = %720, %607
  %731 = load i32, i32* %21, align 4
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %777

733:                                              ; preds = %730
  %734 = load i32, i32* %12, align 4
  %735 = load i32, i32* @WHERE_GROUPBY, align 4
  %736 = and i32 %734, %735
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %777

738:                                              ; preds = %733
  %739 = load i32, i32* %16, align 4
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %756

741:                                              ; preds = %738
  %742 = load i32, i32* %17, align 4
  %743 = load i32, i32* %18, align 4
  %744 = xor i32 %742, %743
  %745 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %746 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %745, i32 0, i32 1
  %747 = load %struct.TYPE_54__*, %struct.TYPE_54__** %746, align 8
  %748 = load i32, i32* %27, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %747, i64 %749
  %751 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %750, i32 0, i32 0
  %752 = load i32, i32* %751, align 8
  %753 = icmp ne i32 %744, %752
  br i1 %753, label %754, label %755

754:                                              ; preds = %741
  store i32 0, i32* %21, align 4
  br label %755

755:                                              ; preds = %754, %741
  br label %776

756:                                              ; preds = %738
  %757 = load i32, i32* %18, align 4
  %758 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %759 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %758, i32 0, i32 1
  %760 = load %struct.TYPE_54__*, %struct.TYPE_54__** %759, align 8
  %761 = load i32, i32* %27, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %760, i64 %762
  %764 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %763, i32 0, i32 0
  %765 = load i32, i32* %764, align 8
  %766 = xor i32 %757, %765
  store i32 %766, i32* %17, align 4
  %767 = load i32, i32* %17, align 4
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %769, label %775

769:                                              ; preds = %756
  %770 = load i32, i32* %26, align 4
  %771 = call i32 @MASKBIT(i32 %770)
  %772 = load i32*, i32** %15, align 8
  %773 = load i32, i32* %772, align 4
  %774 = or i32 %773, %771
  store i32 %774, i32* %772, align 4
  br label %775

775:                                              ; preds = %769, %756
  store i32 1, i32* %16, align 4
  br label %776

776:                                              ; preds = %775, %755
  br label %777

777:                                              ; preds = %776, %733, %730
  %778 = load i32, i32* %21, align 4
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %780, label %794

780:                                              ; preds = %777
  %781 = load i32, i32* %30, align 4
  %782 = load i32, i32* @XN_ROWID, align 4
  %783 = icmp eq i32 %781, %782
  br i1 %783, label %784, label %789

784:                                              ; preds = %780
  %785 = load i32, i32* %20, align 4
  %786 = icmp eq i32 %785, 0
  %787 = zext i1 %786 to i32
  %788 = call i32 @testcase(i32 %787)
  store i32 1, i32* %20, align 4
  br label %789

789:                                              ; preds = %784, %780
  %790 = load i32, i32* %27, align 4
  %791 = call i32 @MASKBIT(i32 %790)
  %792 = load i32, i32* %37, align 4
  %793 = or i32 %792, %791
  store i32 %793, i32* %37, align 4
  br label %807

794:                                              ; preds = %777
  %795 = load i32, i32* %28, align 4
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %801, label %797

797:                                              ; preds = %794
  %798 = load i32, i32* %28, align 4
  %799 = load i32, i32* %23, align 4
  %800 = icmp slt i32 %798, %799
  br i1 %800, label %801, label %806

801:                                              ; preds = %797, %794
  %802 = load i32, i32* %19, align 4
  %803 = icmp ne i32 %802, 0
  %804 = zext i1 %803 to i32
  %805 = call i32 @testcase(i32 %804)
  store i32 0, i32* %19, align 4
  br label %806

806:                                              ; preds = %801, %797
  br label %811

807:                                              ; preds = %789
  br label %808

808:                                              ; preds = %807, %484
  %809 = load i32, i32* %28, align 4
  %810 = add nsw i32 %809, 1
  store i32 %810, i32* %28, align 4
  br label %416

811:                                              ; preds = %806, %416
  %812 = load i32, i32* %20, align 4
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %814, label %819

814:                                              ; preds = %811
  %815 = load i32, i32* %19, align 4
  %816 = icmp eq i32 %815, 0
  %817 = zext i1 %816 to i32
  %818 = call i32 @testcase(i32 %817)
  store i32 1, i32* %19, align 4
  br label %819

819:                                              ; preds = %814, %811
  br label %820

820:                                              ; preds = %819, %341
  %821 = load i32, i32* %19, align 4
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %823, label %876

823:                                              ; preds = %820
  %824 = load %struct.TYPE_38__*, %struct.TYPE_38__** %31, align 8
  %825 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %824, i32 0, i32 0
  %826 = load i32, i32* %825, align 8
  %827 = load i32, i32* %39, align 4
  %828 = or i32 %827, %826
  store i32 %828, i32* %39, align 4
  store i32 0, i32* %27, align 4
  br label %829

829:                                              ; preds = %872, %823
  %830 = load i32, i32* %27, align 4
  %831 = load i32, i32* %25, align 4
  %832 = icmp slt i32 %830, %831
  br i1 %832, label %833, label %875

833:                                              ; preds = %829
  %834 = load i32, i32* %27, align 4
  %835 = call i32 @MASKBIT(i32 %834)
  %836 = load i32, i32* %37, align 4
  %837 = and i32 %835, %836
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %839, label %840

839:                                              ; preds = %833
  br label %872

840:                                              ; preds = %833
  %841 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  %842 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %841, i32 0, i32 1
  %843 = load %struct.TYPE_54__*, %struct.TYPE_54__** %842, align 8
  %844 = load i32, i32* %27, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %843, i64 %845
  %847 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %846, i32 0, i32 1
  %848 = load %struct.TYPE_42__*, %struct.TYPE_42__** %847, align 8
  store %struct.TYPE_42__* %848, %struct.TYPE_42__** %46, align 8
  %849 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %850 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %849, i32 0, i32 0
  %851 = load %struct.TYPE_42__*, %struct.TYPE_42__** %46, align 8
  %852 = call i32 @sqlite3WhereExprUsage(i32* %850, %struct.TYPE_42__* %851)
  store i32 %852, i32* %47, align 4
  %853 = load i32, i32* %47, align 4
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %860

855:                                              ; preds = %840
  %856 = load %struct.TYPE_42__*, %struct.TYPE_42__** %46, align 8
  %857 = call i32 @sqlite3ExprIsConstant(%struct.TYPE_42__* %856)
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %860, label %859

859:                                              ; preds = %855
  br label %872

860:                                              ; preds = %855, %840
  %861 = load i32, i32* %47, align 4
  %862 = load i32, i32* %39, align 4
  %863 = xor i32 %862, -1
  %864 = and i32 %861, %863
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %866, label %871

866:                                              ; preds = %860
  %867 = load i32, i32* %27, align 4
  %868 = call i32 @MASKBIT(i32 %867)
  %869 = load i32, i32* %37, align 4
  %870 = or i32 %869, %868
  store i32 %870, i32* %37, align 4
  br label %871

871:                                              ; preds = %866, %860
  br label %872

872:                                              ; preds = %871, %859, %839
  %873 = load i32, i32* %27, align 4
  %874 = add nsw i32 %873, 1
  store i32 %874, i32* %27, align 4
  br label %829

875:                                              ; preds = %829
  br label %876

876:                                              ; preds = %875, %820
  br label %877

877:                                              ; preds = %876, %137
  %878 = load i32, i32* %26, align 4
  %879 = add nsw i32 %878, 1
  store i32 %879, i32* %26, align 4
  br label %99

880:                                              ; preds = %157, %110
  %881 = load i32, i32* %37, align 4
  %882 = load i32, i32* %38, align 4
  %883 = icmp eq i32 %881, %882
  br i1 %883, label %884, label %886

884:                                              ; preds = %880
  %885 = load i32, i32* %25, align 4
  store i32 %885, i32* %8, align 4
  br label %912

886:                                              ; preds = %880
  %887 = load i32, i32* %19, align 4
  %888 = icmp ne i32 %887, 0
  br i1 %888, label %911, label %889

889:                                              ; preds = %886
  %890 = load i32, i32* %25, align 4
  %891 = sub nsw i32 %890, 1
  store i32 %891, i32* %27, align 4
  br label %892

892:                                              ; preds = %907, %889
  %893 = load i32, i32* %27, align 4
  %894 = icmp sgt i32 %893, 0
  br i1 %894, label %895, label %910

895:                                              ; preds = %892
  %896 = load i32, i32* %27, align 4
  %897 = call i32 @MASKBIT(i32 %896)
  %898 = sub nsw i32 %897, 1
  store i32 %898, i32* %48, align 4
  %899 = load i32, i32* %37, align 4
  %900 = load i32, i32* %48, align 4
  %901 = and i32 %899, %900
  %902 = load i32, i32* %48, align 4
  %903 = icmp eq i32 %901, %902
  br i1 %903, label %904, label %906

904:                                              ; preds = %895
  %905 = load i32, i32* %27, align 4
  store i32 %905, i32* %8, align 4
  br label %912

906:                                              ; preds = %895
  br label %907

907:                                              ; preds = %906
  %908 = load i32, i32* %27, align 4
  %909 = add nsw i32 %908, -1
  store i32 %909, i32* %27, align 4
  br label %892

910:                                              ; preds = %892
  store i32 0, i32* %8, align 4
  br label %912

911:                                              ; preds = %886
  store i32 -1, i32* %8, align 4
  br label %912

912:                                              ; preds = %911, %910, %904, %884, %368, %80, %65
  %913 = load i32, i32* %8, align 4
  ret i32 %913
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @OptimizationDisabled(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @MASKBIT(i32) #1

declare dso_local %struct.TYPE_42__* @sqlite3ExprSkipCollate(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_36__* @sqlite3WhereFindTerm(i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_43__* @sqlite3ExprCollSeq(%struct.TYPE_46__*, %struct.TYPE_42__*) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

declare dso_local i32 @HasRowid(%struct.TYPE_47__*) #1

declare dso_local i32 @IsUniqueIndex(%struct.TYPE_40__*) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64 @sqlite3ExprCompare(%struct.TYPE_42__*, i32, i32) #1

declare dso_local i32 @sqlite3WhereExprUsage(i32*, %struct.TYPE_42__*) #1

declare dso_local i32 @sqlite3ExprIsConstant(%struct.TYPE_42__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
