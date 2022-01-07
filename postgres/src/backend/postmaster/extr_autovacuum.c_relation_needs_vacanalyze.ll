; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_relation_needs_vacanalyze.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_relation_needs_vacanalyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@autovacuum_vac_scale = common dso_local global i64 0, align 8
@autovacuum_vac_thresh = common dso_local global i32 0, align 4
@autovacuum_anl_scale = common dso_local global i64 0, align 8
@autovacuum_anl_thresh = common dso_local global i32 0, align 4
@autovacuum_freeze_max_age = common dso_local global i32 0, align 4
@recentXid = common dso_local global i64 0, align 8
@FirstNormalTransactionId = common dso_local global i64 0, align 8
@recentMulti = common dso_local global i64 0, align 8
@FirstMultiXactId = common dso_local global i64 0, align 8
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s: vac: %.0f (threshold %.0f), anl: %.0f (threshold %.0f)\00", align 1
@StatisticRelationId = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32*, i32*, i32*)* @relation_needs_vacanalyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relation_needs_vacanalyze(i64 %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, %struct.TYPE_8__* %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @AssertArg(i32 %34)
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @OidIsValid(i64 %36)
  %38 = call i32 @AssertArg(i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = icmp ne %struct.TYPE_10__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  br label %52

50:                                               ; preds = %41, %8
  %51 = load i64, i64* @autovacuum_vac_scale, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  store i64 %53, i64* %22, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  br label %67

65:                                               ; preds = %56, %52
  %66 = load i32, i32* @autovacuum_vac_thresh, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi i32 [ %64, %61 ], [ %66, %65 ]
  store i32 %68, i32* %20, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = icmp ne %struct.TYPE_10__* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  br label %82

80:                                               ; preds = %71, %67
  %81 = load i64, i64* @autovacuum_anl_scale, align 8
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i64 [ %79, %76 ], [ %81, %80 ]
  store i64 %83, i64* %23, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  br label %97

95:                                               ; preds = %86, %82
  %96 = load i32, i32* @autovacuum_anl_thresh, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi i32 [ %94, %91 ], [ %96, %95 ]
  store i32 %98, i32* %21, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = icmp ne %struct.TYPE_10__* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @autovacuum_freeze_max_age, align 4
  %111 = call i32 @Min(i32 %109, i32 %110)
  br label %114

112:                                              ; preds = %101, %97
  %113 = load i32, i32* @autovacuum_freeze_max_age, align 4
  br label %114

114:                                              ; preds = %112, %106
  %115 = phi i32 [ %111, %106 ], [ %113, %112 ]
  store i32 %115, i32* %28, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %117 = icmp ne %struct.TYPE_10__* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @Min(i32 %126, i32 %127)
  br label %131

129:                                              ; preds = %118, %114
  %130 = load i32, i32* %13, align 4
  br label %131

131:                                              ; preds = %129, %123
  %132 = phi i32 [ %128, %123 ], [ %130, %129 ]
  store i32 %132, i32* %29, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %134 = icmp ne %struct.TYPE_10__* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  br label %140

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %135
  %141 = phi i32 [ %138, %135 ], [ 1, %139 ]
  store i32 %141, i32* %18, align 4
  %142 = load i64, i64* @recentXid, align 8
  %143 = load i32, i32* %28, align 4
  %144 = sext i32 %143 to i64
  %145 = sub nsw i64 %142, %144
  store i64 %145, i64* %30, align 8
  %146 = load i64, i64* %30, align 8
  %147 = load i64, i64* @FirstNormalTransactionId, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %140
  %150 = load i64, i64* @FirstNormalTransactionId, align 8
  %151 = load i64, i64* %30, align 8
  %152 = sub nsw i64 %151, %150
  store i64 %152, i64* %30, align 8
  br label %153

153:                                              ; preds = %149, %140
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @TransactionIdIsNormal(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i64, i64* %30, align 8
  %164 = call i64 @TransactionIdPrecedes(i32 %162, i64 %163)
  %165 = icmp ne i64 %164, 0
  br label %166

166:                                              ; preds = %159, %153
  %167 = phi i1 [ false, %153 ], [ %165, %159 ]
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %199, label %171

171:                                              ; preds = %166
  %172 = load i64, i64* @recentMulti, align 8
  %173 = load i32, i32* %29, align 4
  %174 = sext i32 %173 to i64
  %175 = sub nsw i64 %172, %174
  store i64 %175, i64* %31, align 8
  %176 = load i64, i64* %31, align 8
  %177 = load i64, i64* @FirstMultiXactId, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i64, i64* @FirstMultiXactId, align 8
  %181 = load i64, i64* %31, align 8
  %182 = sub nsw i64 %181, %180
  store i64 %182, i64* %31, align 8
  br label %183

183:                                              ; preds = %179, %171
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @MultiXactIdIsValid(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %183
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i64, i64* %31, align 8
  %194 = call i64 @MultiXactIdPrecedes(i32 %192, i64 %193)
  %195 = icmp ne i64 %194, 0
  br label %196

196:                                              ; preds = %189, %183
  %197 = phi i1 [ false, %183 ], [ %195, %189 ]
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %17, align 4
  br label %199

199:                                              ; preds = %196, %166
  %200 = load i32, i32* %17, align 4
  %201 = load i32*, i32** %16, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %17, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32*, i32** %15, align 8
  store i32 0, i32* %208, align 4
  %209 = load i32*, i32** %14, align 8
  store i32 0, i32* %209, align 4
  br label %274

210:                                              ; preds = %204, %199
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %212 = call i64 @PointerIsValid(%struct.TYPE_8__* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %264

214:                                              ; preds = %210
  %215 = call i64 (...) @AutoVacuumingActive()
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %264

217:                                              ; preds = %214
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %19, align 8
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %26, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %27, align 8
  %227 = load i32, i32* %20, align 4
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* %22, align 8
  %230 = load i64, i64* %19, align 8
  %231 = mul nsw i64 %229, %230
  %232 = add nsw i64 %228, %231
  store i64 %232, i64* %24, align 8
  %233 = load i32, i32* %21, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* %23, align 8
  %236 = load i64, i64* %19, align 8
  %237 = mul nsw i64 %235, %236
  %238 = add nsw i64 %234, %237
  store i64 %238, i64* %25, align 8
  %239 = load i32, i32* @DEBUG3, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @NameStr(i32 %242)
  %244 = load i64, i64* %26, align 8
  %245 = load i64, i64* %24, align 8
  %246 = load i64, i64* %27, align 8
  %247 = load i64, i64* %25, align 8
  %248 = call i32 @elog(i32 %239, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %243, i64 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i32, i32* %17, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %217
  %252 = load i64, i64* %26, align 8
  %253 = load i64, i64* %24, align 8
  %254 = icmp sgt i64 %252, %253
  br label %255

255:                                              ; preds = %251, %217
  %256 = phi i1 [ true, %217 ], [ %254, %251 ]
  %257 = zext i1 %256 to i32
  %258 = load i32*, i32** %14, align 8
  store i32 %257, i32* %258, align 4
  %259 = load i64, i64* %27, align 8
  %260 = load i64, i64* %25, align 8
  %261 = icmp sgt i64 %259, %260
  %262 = zext i1 %261 to i32
  %263 = load i32*, i32** %15, align 8
  store i32 %262, i32* %263, align 4
  br label %268

264:                                              ; preds = %214, %210
  %265 = load i32, i32* %17, align 4
  %266 = load i32*, i32** %14, align 8
  store i32 %265, i32* %266, align 4
  %267 = load i32*, i32** %15, align 8
  store i32 0, i32* %267, align 4
  br label %268

268:                                              ; preds = %264, %255
  %269 = load i64, i64* %9, align 8
  %270 = load i64, i64* @StatisticRelationId, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = load i32*, i32** %15, align 8
  store i32 0, i32* %273, align 4
  br label %274

274:                                              ; preds = %207, %272, %268
  ret void
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i64 @TransactionIdIsNormal(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i64) #1

declare dso_local i64 @MultiXactIdIsValid(i32) #1

declare dso_local i64 @MultiXactIdPrecedes(i32, i64) #1

declare dso_local i64 @PointerIsValid(%struct.TYPE_8__*) #1

declare dso_local i64 @AutoVacuumingActive(...) #1

declare dso_local i32 @elog(i32, i8*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @NameStr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
