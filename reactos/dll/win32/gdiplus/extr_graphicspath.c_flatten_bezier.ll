; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphicspath.c_flatten_bezier.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphicspath.c_flatten_bezier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { double, double }

@TRUE = common dso_local global i8* null, align 8
@PathPointTypeLine = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, double, double, double, double, %struct.TYPE_7__*, double)* @flatten_bezier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @flatten_bezier(%struct.TYPE_7__* %0, double %1, double %2, double %3, double %4, %struct.TYPE_7__* %5, double %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca double, align 8
  %16 = alloca [5 x %struct.TYPE_8__], align 16
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca %struct.TYPE_8__, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %14, align 8
  store double %6, double* %15, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = load double, double* %10, align 8
  %25 = fadd double %23, %24
  %26 = fdiv double %25, 2.000000e+00
  %27 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store double %26, double* %28, align 16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = load double, double* %11, align 8
  %34 = fadd double %32, %33
  %35 = fdiv double %34, 2.000000e+00
  %36 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store double %35, double* %37, align 8
  %38 = load double, double* %10, align 8
  %39 = load double, double* %12, align 8
  %40 = fadd double %38, %39
  %41 = fdiv double %40, 2.000000e+00
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store double %41, double* %42, align 8
  %43 = load double, double* %11, align 8
  %44 = load double, double* %13, align 8
  %45 = fadd double %43, %44
  %46 = fdiv double %45, 2.000000e+00
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store double %46, double* %47, align 8
  %48 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load double, double* %49, align 16
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = fadd double %50, %52
  %54 = fdiv double %53, 2.000000e+00
  %55 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store double %54, double* %56, align 16
  %57 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load double, double* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = fadd double %59, %61
  %63 = fdiv double %62, 2.000000e+00
  %64 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store double %63, double* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = load double, double* %12, align 8
  %71 = fadd double %69, %70
  %72 = fdiv double %71, 2.000000e+00
  %73 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store double %72, double* %74, align 16
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load double, double* %77, align 8
  %79 = load double, double* %13, align 8
  %80 = fadd double %78, %79
  %81 = fdiv double %80, 2.000000e+00
  %82 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store double %81, double* %83, align 8
  %84 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load double, double* %85, align 16
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %88 = load double, double* %87, align 8
  %89 = fadd double %86, %88
  %90 = fdiv double %89, 2.000000e+00
  %91 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 3
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store double %90, double* %92, align 16
  %93 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load double, double* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %97 = load double, double* %96, align 8
  %98 = fadd double %95, %97
  %99 = fdiv double %98, 2.000000e+00
  %100 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 3
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store double %99, double* %101, align 8
  %102 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load double, double* %103, align 16
  %105 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 3
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load double, double* %106, align 16
  %108 = fadd double %104, %107
  %109 = fdiv double %108, 2.000000e+00
  %110 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store double %109, double* %111, align 16
  %112 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load double, double* %113, align 8
  %115 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load double, double* %116, align 8
  %118 = fadd double %114, %117
  %119 = fdiv double %118, 2.000000e+00
  %120 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store double %119, double* %121, align 8
  %122 = load double, double* %10, align 8
  %123 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load double, double* %124, align 16
  %126 = fcmp oeq double %122, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %7
  %128 = load double, double* %11, align 8
  %129 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load double, double* %130, align 8
  %132 = fcmp oeq double %128, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %127
  %134 = load double, double* %12, align 8
  %135 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load double, double* %136, align 16
  %138 = fcmp oeq double %134, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load double, double* %13, align 8
  %141 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load double, double* %142, align 8
  %144 = fcmp oeq double %140, %143
  br i1 %144, label %169, label %145

145:                                              ; preds = %139, %133, %127, %7
  %146 = load double, double* %10, align 8
  %147 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 3
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load double, double* %148, align 16
  %150 = fcmp oeq double %146, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %145
  %152 = load double, double* %11, align 8
  %153 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 3
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load double, double* %154, align 8
  %156 = fcmp oeq double %152, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = load double, double* %12, align 8
  %159 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 4
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load double, double* %160, align 16
  %162 = fcmp oeq double %158, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %157
  %164 = load double, double* %13, align 8
  %165 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 4
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load double, double* %166, align 8
  %168 = fcmp oeq double %164, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163, %139
  %170 = load i8*, i8** @TRUE, align 8
  store i8* %170, i8** %8, align 8
  br label %285

171:                                              ; preds = %163, %157, %151, %145
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = bitcast %struct.TYPE_8__* %17 to i8*
  %175 = bitcast %struct.TYPE_8__* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 16, i1 false)
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = bitcast %struct.TYPE_8__* %18 to i8*
  %179 = bitcast %struct.TYPE_8__* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 %179, i64 16, i1 false)
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %181 = load double, double* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %183 = load double, double* %182, align 8
  %184 = fsub double %181, %183
  %185 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 2
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load double, double* %186, align 16
  %188 = fmul double %184, %187
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %190 = load double, double* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %192 = load double, double* %191, align 8
  %193 = fsub double %190, %192
  %194 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 2
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load double, double* %195, align 8
  %197 = fmul double %193, %196
  %198 = fadd double %188, %197
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %200 = load double, double* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %202 = load double, double* %201, align 8
  %203 = fmul double %200, %202
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %205 = load double, double* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %207 = load double, double* %206, align 8
  %208 = fmul double %205, %207
  %209 = fsub double %203, %208
  %210 = fadd double %198, %209
  %211 = fptosi double %210 to i32
  %212 = call double @fabs(i32 %211)
  %213 = load double, double* %15, align 8
  %214 = fmul double 5.000000e-01, %213
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %216 = load double, double* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %218 = load double, double* %217, align 8
  %219 = fsub double %216, %218
  %220 = fptosi double %219 to i32
  %221 = call i64 @powf(i32 %220, double 2.000000e+00)
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %223 = load double, double* %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %225 = load double, double* %224, align 8
  %226 = fsub double %223, %225
  %227 = fptosi double %226 to i32
  %228 = call i64 @powf(i32 %227, double 2.000000e+00)
  %229 = add nsw i64 %221, %228
  %230 = call double @sqrtf(i64 %229)
  %231 = fmul double %214, %230
  %232 = fcmp ole double %212, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %171
  %234 = load i8*, i8** @TRUE, align 8
  store i8* %234, i8** %8, align 8
  br label %285

235:                                              ; preds = %171
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %237 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 2
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load double, double* %238, align 16
  %240 = fptosi double %239 to i32
  %241 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 2
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = load double, double* %242, align 8
  %244 = fptosi double %243 to i32
  %245 = load i32, i32* @PathPointTypeLine, align 4
  %246 = call %struct.TYPE_7__* @add_path_list_node(%struct.TYPE_7__* %236, i32 %240, i32 %244, i32 %245)
  store %struct.TYPE_7__* %246, %struct.TYPE_7__** %19, align 8
  %247 = icmp ne %struct.TYPE_7__* %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %235
  %249 = load i8*, i8** @FALSE, align 8
  store i8* %249, i8** %8, align 8
  br label %285

250:                                              ; preds = %235
  br label %251

251:                                              ; preds = %250
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %253 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = load double, double* %254, align 16
  %256 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 0
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load double, double* %257, align 8
  %259 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 1
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load double, double* %260, align 16
  %262 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 1
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 1
  %264 = load double, double* %263, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %266 = load double, double* %15, align 8
  %267 = call i8* @flatten_bezier(%struct.TYPE_7__* %252, double %255, double %258, double %261, double %264, %struct.TYPE_7__* %265, double %266)
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %269 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 3
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load double, double* %270, align 16
  %272 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 3
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  %274 = load double, double* %273, align 8
  %275 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 4
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load double, double* %276, align 16
  %278 = getelementptr inbounds [5 x %struct.TYPE_8__], [5 x %struct.TYPE_8__]* %16, i64 0, i64 4
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 1
  %280 = load double, double* %279, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %282 = load double, double* %15, align 8
  %283 = call i8* @flatten_bezier(%struct.TYPE_7__* %268, double %271, double %274, double %277, double %280, %struct.TYPE_7__* %281, double %282)
  %284 = load i8*, i8** @TRUE, align 8
  store i8* %284, i8** %8, align 8
  br label %285

285:                                              ; preds = %251, %248, %233, %169
  %286 = load i8*, i8** %8, align 8
  ret i8* %286
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local double @fabs(i32) #2

declare dso_local double @sqrtf(i64) #2

declare dso_local i64 @powf(i32, double) #2

declare dso_local %struct.TYPE_7__* @add_path_list_node(%struct.TYPE_7__*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
