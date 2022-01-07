; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_calc_hist_selectivity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_calc_hist_selectivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32* }
%struct.TYPE_31__ = type { i32 }

@STATISTIC_KIND_BOUNDS_HISTOGRAM = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bounds histogram contains an empty range\00", align 1
@STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown range operator %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_30__*, %struct.TYPE_29__*, i32*, i32)* @calc_hist_selectivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_hist_selectivity(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_32__, align 8
  %11 = alloca %struct.TYPE_32__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_31__, align 4
  %17 = alloca %struct.TYPE_31__, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @statistic_proc_security_check(%struct.TYPE_29__* %20, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store double -1.000000e+00, double* %5, align 8
  br label %254

28:                                               ; preds = %4
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @OidIsValid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @statistic_proc_security_check(%struct.TYPE_29__* %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store double -1.000000e+00, double* %5, align 8
  br label %254

44:                                               ; preds = %35, %28
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @HeapTupleIsValid(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @STATISTIC_KIND_BOUNDS_HISTOGRAM, align 4
  %55 = load i32, i32* @InvalidOid, align 4
  %56 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %57 = call i64 @get_attstatsslot(%struct.TYPE_32__* %10, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50, %44
  store double -1.000000e+00, double* %5, align 8
  br label %254

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = call i64 @palloc(i32 %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %68, %struct.TYPE_31__** %13, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = call i64 @palloc(i32 %72)
  %74 = inttoptr i64 %73 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %74, %struct.TYPE_31__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %75

75:                                               ; preds = %103, %60
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @DatumGetRangeTypeP(i32 %86)
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %88, i64 %90
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i64 %94
  %96 = call i32 @range_deserialize(%struct.TYPE_30__* %80, i32* %87, %struct.TYPE_31__* %91, %struct.TYPE_31__* %95, i32* %18)
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %79
  %100 = load i32, i32* @ERROR, align 4
  %101 = call i32 (i32, i8*, ...) @elog(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %79
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %75

106:                                              ; preds = %75
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 137
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, 139
  br i1 %111, label %112, label %137

112:                                              ; preds = %109, %106
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @HeapTupleIsValid(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM, align 4
  %123 = load i32, i32* @InvalidOid, align 4
  %124 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %125 = call i64 @get_attstatsslot(%struct.TYPE_32__* %11, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %118, %112
  %128 = call i32 @free_attstatsslot(%struct.TYPE_32__* %10)
  store double -1.000000e+00, double* %5, align 8
  br label %254

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %131, 2
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = call i32 @free_attstatsslot(%struct.TYPE_32__* %11)
  %135 = call i32 @free_attstatsslot(%struct.TYPE_32__* %10)
  store double -1.000000e+00, double* %5, align 8
  br label %254

136:                                              ; preds = %129
  br label %139

137:                                              ; preds = %109
  %138 = call i32 @memset(%struct.TYPE_32__* %11, i32 0, i32 16)
  br label %139

139:                                              ; preds = %137, %136
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @range_deserialize(%struct.TYPE_30__* %140, i32* %141, %struct.TYPE_31__* %16, %struct.TYPE_31__* %17, i32* %18)
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @Assert(i32 %146)
  %148 = load i32, i32* %9, align 4
  switch i32 %148, label %246 [
    i32 132, label %149
    i32 133, label %154
    i32 135, label %159
    i32 136, label %165
    i32 134, label %171
    i32 128, label %176
    i32 130, label %182
    i32 131, label %188
    i32 129, label %193
    i32 138, label %193
    i32 137, label %207
    i32 139, label %216
  ]

149:                                              ; preds = %139
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %150, %struct.TYPE_31__* %16, %struct.TYPE_31__* %151, i32 %152, i32 0)
  store double %153, double* %19, align 8
  br label %250

154:                                              ; preds = %139
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %155, %struct.TYPE_31__* %16, %struct.TYPE_31__* %156, i32 %157, i32 1)
  store double %158, double* %19, align 8
  br label %250

159:                                              ; preds = %139
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %162 = load i32, i32* %12, align 4
  %163 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %160, %struct.TYPE_31__* %16, %struct.TYPE_31__* %161, i32 %162, i32 0)
  %164 = fsub double 1.000000e+00, %163
  store double %164, double* %19, align 8
  br label %250

165:                                              ; preds = %139
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %166, %struct.TYPE_31__* %16, %struct.TYPE_31__* %167, i32 %168, i32 1)
  %170 = fsub double 1.000000e+00, %169
  store double %170, double* %19, align 8
  br label %250

171:                                              ; preds = %139
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %174 = load i32, i32* %12, align 4
  %175 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %172, %struct.TYPE_31__* %16, %struct.TYPE_31__* %173, i32 %174, i32 0)
  store double %175, double* %19, align 8
  br label %250

176:                                              ; preds = %139
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %179 = load i32, i32* %12, align 4
  %180 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %177, %struct.TYPE_31__* %17, %struct.TYPE_31__* %178, i32 %179, i32 1)
  %181 = fsub double 1.000000e+00, %180
  store double %181, double* %19, align 8
  br label %250

182:                                              ; preds = %139
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %183, %struct.TYPE_31__* %16, %struct.TYPE_31__* %184, i32 %185, i32 0)
  %187 = fsub double 1.000000e+00, %186
  store double %187, double* %19, align 8
  br label %250

188:                                              ; preds = %139
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %191 = load i32, i32* %12, align 4
  %192 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %189, %struct.TYPE_31__* %17, %struct.TYPE_31__* %190, i32 %191, i32 1)
  store double %192, double* %19, align 8
  br label %250

193:                                              ; preds = %139, %139
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %196 = load i32, i32* %12, align 4
  %197 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %194, %struct.TYPE_31__* %16, %struct.TYPE_31__* %195, i32 %196, i32 0)
  store double %197, double* %19, align 8
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %200 = load i32, i32* %12, align 4
  %201 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %198, %struct.TYPE_31__* %17, %struct.TYPE_31__* %199, i32 %200, i32 1)
  %202 = fsub double 1.000000e+00, %201
  %203 = load double, double* %19, align 8
  %204 = fadd double %203, %202
  store double %204, double* %19, align 8
  %205 = load double, double* %19, align 8
  %206 = fsub double 1.000000e+00, %205
  store double %206, double* %19, align 8
  br label %250

207:                                              ; preds = %139
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %210 = load i32, i32* %12, align 4
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call double @calc_hist_selectivity_contains(%struct.TYPE_30__* %208, %struct.TYPE_31__* %16, %struct.TYPE_31__* %17, %struct.TYPE_31__* %209, i32 %210, i32* %212, i32 %214)
  store double %215, double* %19, align 8
  br label %250

216:                                              ; preds = %139
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %216
  %221 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %223 = load i32, i32* %12, align 4
  %224 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %221, %struct.TYPE_31__* %17, %struct.TYPE_31__* %222, i32 %223, i32 1)
  store double %224, double* %19, align 8
  br label %245

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %225
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %232 = load i32, i32* %12, align 4
  %233 = call double @calc_hist_selectivity_scalar(%struct.TYPE_30__* %230, %struct.TYPE_31__* %16, %struct.TYPE_31__* %231, i32 %232, i32 0)
  %234 = fsub double 1.000000e+00, %233
  store double %234, double* %19, align 8
  br label %244

235:                                              ; preds = %225
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %238 = load i32, i32* %12, align 4
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call double @calc_hist_selectivity_contained(%struct.TYPE_30__* %236, %struct.TYPE_31__* %16, %struct.TYPE_31__* %17, %struct.TYPE_31__* %237, i32 %238, i32* %240, i32 %242)
  store double %243, double* %19, align 8
  br label %244

244:                                              ; preds = %235, %229
  br label %245

245:                                              ; preds = %244, %220
  br label %250

246:                                              ; preds = %139
  %247 = load i32, i32* @ERROR, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 (i32, i8*, ...) @elog(i32 %247, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %248)
  store double -1.000000e+00, double* %19, align 8
  br label %250

250:                                              ; preds = %246, %245, %207, %193, %188, %182, %176, %171, %165, %159, %154, %149
  %251 = call i32 @free_attstatsslot(%struct.TYPE_32__* %11)
  %252 = call i32 @free_attstatsslot(%struct.TYPE_32__* %10)
  %253 = load double, double* %19, align 8
  store double %253, double* %5, align 8
  br label %254

254:                                              ; preds = %250, %133, %127, %59, %43, %27
  %255 = load double, double* %5, align 8
  ret double %255
}

declare dso_local i32 @statistic_proc_security_check(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_32__*, i32, i32, i32, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @range_deserialize(%struct.TYPE_30__*, i32*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32*) #1

declare dso_local i32* @DatumGetRangeTypeP(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_32__*) #1

declare dso_local i32 @memset(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local double @calc_hist_selectivity_scalar(%struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local double @calc_hist_selectivity_contains(%struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32, i32*, i32) #1

declare dso_local double @calc_hist_selectivity_contained(%struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
