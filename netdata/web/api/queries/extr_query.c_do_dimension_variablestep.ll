; ModuleID = '/home/carl/AnghaBench/netdata/web/api/queries/extr_query.c_do_dimension_variablestep.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/queries/extr_query.c_do_dimension_variablestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, double, double, i64, double*, i32, i64, %struct.TYPE_18__*, i64, i64, %struct.TYPE_17__, i32*, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i8*, double (%struct.TYPE_19__*, i32*)*, i64, i64, i32 (%struct.TYPE_19__*, double)* }
%struct.TYPE_20__ = type { i8*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 (%struct.rrddim_query_handle*)*, i32 (%struct.rrddim_query_handle*, i64*)*, i32 (%struct.rrddim_query_handle*)*, i32 (%struct.TYPE_20__*, %struct.rrddim_query_handle*, i64, i64)* }
%struct.rrddim_query_handle = type { i32 }

@RRDR_VALUE_NOTHING = common dso_local global i32 0, align 4
@SN_EMPTY_SLOT = common dso_local global i32 0, align 4
@NAN = common dso_local global double 0.000000e+00, align 8
@RRDR_VALUE_RESET = common dso_local global i32 0, align 4
@RRDR_DIMENSION_NONZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i64, %struct.TYPE_20__*, i64, i64, i64)* @do_dimension_variablestep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_dimension_variablestep(%struct.TYPE_19__* %0, i64 %1, %struct.TYPE_20__* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.rrddim_query_handle, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %31 = load i64, i64* %11, align 8
  store i64 %31, i64* %13, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 -1, i64* %20, align 8
  %35 = load i32, i32* @RRDR_VALUE_NOTHING, align 4
  store i32 %35, i32* %21, align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  store double %38, double* %23, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = load double, double* %40, align 8
  store double %41, double* %24, align 8
  store i64 0, i64* %25, align 8
  %42 = load i64, i64* %13, align 8
  store i64 %42, i64* %26, align 8
  %43 = load i32, i32* @SN_EMPTY_SLOT, align 4
  store i32 %43, i32* %28, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = load i32 (%struct.TYPE_20__*, %struct.rrddim_query_handle*, i64, i64)*, i32 (%struct.TYPE_20__*, %struct.rrddim_query_handle*, i64, i64)** %48, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32 %49(%struct.TYPE_20__* %50, %struct.rrddim_query_handle* %22, i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %273, %6
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %277

58:                                               ; preds = %54
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp sgt i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %277

66:                                               ; preds = %58
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp slt i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %273

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %154, %74
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %26, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i32 (%struct.rrddim_query_handle*)*, i32 (%struct.rrddim_query_handle*)** %84, align 8
  %86 = call i32 %85(%struct.rrddim_query_handle* %22)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* %28, align 4
  %90 = call i32 @does_storage_number_exist(i32 %89)
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %88, %79
  %93 = phi i1 [ true, %79 ], [ %91, %88 ]
  br label %94

94:                                               ; preds = %92, %75
  %95 = phi i1 [ false, %75 ], [ %93, %92 ]
  br i1 %95, label %96, label %166

96:                                               ; preds = %94
  %97 = load double, double* @NAN, align 8
  store double %97, double* %29, align 8
  %98 = load i32, i32* %28, align 4
  %99 = call i32 @does_storage_number_exist(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %28, align 4
  store i32 %102, i32* %27, align 4
  br label %111

103:                                              ; preds = %96
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32 (%struct.rrddim_query_handle*, i64*)*, i32 (%struct.rrddim_query_handle*, i64*)** %108, align 8
  %110 = call i32 %109(%struct.rrddim_query_handle* %22, i64* %26)
  store i32 %110, i32* %27, align 4
  br label %111

111:                                              ; preds = %103, %101
  %112 = load i32, i32* @SN_EMPTY_SLOT, align 4
  store i32 %112, i32* %28, align 4
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %26, align 8
  %115 = icmp sge i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i64 @likely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %111
  %120 = load i32, i32* %27, align 4
  %121 = call i32 @does_storage_number_exist(i32 %120)
  %122 = call i64 @likely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %119
  %125 = load i32, i32* %27, align 4
  %126 = call double @unpack_storage_number(i32 %125)
  store double %126, double* %29, align 8
  %127 = load double, double* %29, align 8
  %128 = fcmp une double %127, 0.000000e+00
  %129 = zext i1 %128 to i32
  %130 = call i64 @likely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i64, i64* %19, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %19, align 8
  br label %135

135:                                              ; preds = %132, %124
  %136 = load i32, i32* %27, align 4
  %137 = call i32 @did_storage_number_reset(i32 %136)
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @RRDR_VALUE_RESET, align 4
  %142 = load i32, i32* %21, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %21, align 4
  br label %144

144:                                              ; preds = %140, %135
  br label %145

145:                                              ; preds = %144, %119
  br label %154

146:                                              ; preds = %111
  %147 = load i32, i32* %27, align 4
  %148 = call i32 @does_storage_number_exist(i32 %147)
  %149 = call i64 @likely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32, i32* %27, align 4
  store i32 %152, i32* %28, align 4
  br label %153

153:                                              ; preds = %151, %146
  br label %154

154:                                              ; preds = %153, %145
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 10
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 4
  %158 = load i32 (%struct.TYPE_19__*, double)*, i32 (%struct.TYPE_19__*, double)** %157, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %160 = load double, double* %29, align 8
  %161 = call i32 %158(%struct.TYPE_19__* %159, double %160)
  %162 = load i64, i64* %18, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %18, align 8
  %164 = load i64, i64* %25, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %25, align 8
  br label %75

166:                                              ; preds = %94
  %167 = load i64, i64* %18, align 8
  %168 = icmp eq i64 0, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 10
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 4
  %173 = load i32 (%struct.TYPE_19__*, double)*, i32 (%struct.TYPE_19__*, double)** %172, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %175 = load double, double* @NAN, align 8
  %176 = call i32 %173(%struct.TYPE_19__* %174, double %175)
  br label %177

177:                                              ; preds = %169, %166
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %179 = load i64, i64* %13, align 8
  %180 = load i64, i64* %20, align 8
  %181 = call i64 @rrdr_line_init(%struct.TYPE_19__* %178, i64 %179, i64 %180)
  store i64 %181, i64* %20, align 8
  %182 = load i64, i64* %16, align 8
  %183 = icmp ne i64 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %177
  %189 = load i64, i64* %13, align 8
  store i64 %189, i64* %16, align 8
  br label %190

190:                                              ; preds = %188, %177
  %191 = load i64, i64* %13, align 8
  store i64 %191, i64* %15, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 12
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* %20, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = mul nsw i64 %195, %198
  %200 = load i64, i64* %10, align 8
  %201 = add nsw i64 %199, %200
  %202 = getelementptr inbounds i32, i32* %194, i64 %201
  store i32* %202, i32** %30, align 8
  %203 = load i64, i64* %19, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i64 @likely(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %190
  %208 = load i32, i32* @RRDR_DIMENSION_NONZERO, align 4
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 11
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* %10, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %208
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %207, %190
  %217 = load i32, i32* %21, align 4
  %218 = load i32*, i32** %30, align 8
  store i32 %217, i32* %218, align 4
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 10
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load double (%struct.TYPE_19__*, i32*)*, double (%struct.TYPE_19__*, i32*)** %221, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %224 = load i32*, i32** %30, align 8
  %225 = call double %222(%struct.TYPE_19__* %223, i32* %224)
  store double %225, double* %29, align 8
  %226 = load double, double* %29, align 8
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 4
  %229 = load double*, double** %228, align 8
  %230 = load i64, i64* %20, align 8
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = mul nsw i64 %230, %233
  %235 = load i64, i64* %10, align 8
  %236 = add nsw i64 %234, %235
  %237 = getelementptr inbounds double, double* %229, i64 %236
  store double %226, double* %237, align 8
  %238 = load i64, i64* %17, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %216
  %241 = load i64, i64* %10, align 8
  %242 = icmp ne i64 %241, 0
  br label %243

243:                                              ; preds = %240, %216
  %244 = phi i1 [ true, %216 ], [ %242, %240 ]
  %245 = zext i1 %244 to i32
  %246 = call i64 @likely(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %267

248:                                              ; preds = %243
  %249 = load double, double* %29, align 8
  %250 = load double, double* %23, align 8
  %251 = fcmp olt double %249, %250
  %252 = zext i1 %251 to i32
  %253 = call i64 @unlikely(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %248
  %256 = load double, double* %29, align 8
  store double %256, double* %23, align 8
  br label %257

257:                                              ; preds = %255, %248
  %258 = load double, double* %29, align 8
  %259 = load double, double* %24, align 8
  %260 = fcmp ogt double %258, %259
  %261 = zext i1 %260 to i32
  %262 = call i64 @unlikely(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %257
  %265 = load double, double* %29, align 8
  store double %265, double* %24, align 8
  br label %266

266:                                              ; preds = %264, %257
  br label %269

267:                                              ; preds = %243
  %268 = load double, double* %29, align 8
  store double %268, double* %24, align 8
  store double %268, double* %23, align 8
  br label %269

269:                                              ; preds = %267, %266
  %270 = load i64, i64* %17, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %272 = load i32, i32* @RRDR_VALUE_NOTHING, align 4
  store i32 %272, i32* %21, align 4
  store i64 0, i64* %19, align 8
  br label %273

273:                                              ; preds = %269, %73
  %274 = load i64, i64* %14, align 8
  %275 = load i64, i64* %13, align 8
  %276 = add nsw i64 %275, %274
  store i64 %276, i64* %13, align 8
  br label %54

277:                                              ; preds = %65, %54
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i32 (%struct.rrddim_query_handle*)*, i32 (%struct.rrddim_query_handle*)** %282, align 8
  %284 = call i32 %283(%struct.rrddim_query_handle* %22)
  %285 = load i64, i64* %25, align 8
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 10
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = add i64 %289, %285
  store i64 %290, i64* %288, align 8
  %291 = load i64, i64* %17, align 8
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 10
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %295, %291
  store i64 %296, i64* %294, align 8
  %297 = load double, double* %23, align 8
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 1
  store double %297, double* %299, align 8
  %300 = load double, double* %24, align 8
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 2
  store double %300, double* %302, align 8
  %303 = load i64, i64* %15, align 8
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 9
  store i64 %303, i64* %305, align 8
  %306 = load i64, i64* %16, align 8
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 8
  %310 = sub nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = load i64, i64* %14, align 8
  %313 = mul nsw i64 %311, %312
  %314 = sub nsw i64 %306, %313
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 8
  store i64 %314, i64* %316, align 8
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %318 = load i64, i64* %20, align 8
  %319 = call i32 @rrdr_done(%struct.TYPE_19__* %317, i64 %318)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @does_storage_number_exist(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local double @unpack_storage_number(i32) #1

declare dso_local i32 @did_storage_number_reset(i32) #1

declare dso_local i64 @rrdr_line_init(%struct.TYPE_19__*, i64, i64) #1

declare dso_local i32 @rrdr_done(%struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
