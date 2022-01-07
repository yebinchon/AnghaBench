; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_prepare_dc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_prepare_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i64, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { double, double }

@MAX_DASHLEN = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i64 0, align 8
@UnitWorld = common dso_local global i64 0, align 8
@WineCoordinateSpaceGdiDevice = common dso_local global i32 0, align 4
@CoordinateSpaceDevice = common dso_local global i32 0, align 4
@DashStyleCustom = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"dashes are: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\0A and the pen style is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @prepare_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prepare_dc(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [2 x %struct.TYPE_9__], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %14 = load i32, i32* @MAX_DASHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @SaveDC(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @EndPath(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UnitPixel, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  br label %160

35:                                               ; preds = %2
  %36 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store double 0.000000e+00, double* %37, align 16
  %38 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store double 0.000000e+00, double* %39, align 8
  %40 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store double 1.000000e+00, double* %41, align 16
  %42 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store double 1.000000e+00, double* %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %47 = call i32 @GdipTransformMatrixPoints(i32* %45, %struct.TYPE_9__* %46, i32 2)
  %48 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load double, double* %49, align 16
  %51 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load double, double* %52, align 16
  %54 = fsub double %50, %53
  %55 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load double, double* %56, align 16
  %58 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 16
  %61 = fsub double %57, %60
  %62 = fmul double %54, %61
  %63 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = fsub double %65, %68
  %70 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load double, double* %74, align 8
  %76 = fsub double %72, %75
  %77 = fmul double %69, %76
  %78 = fadd double %62, %77
  %79 = call i32 @sqrt(double %78)
  %80 = call i32 @sqrt(double 2.000000e+00)
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %7, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @UnitWorld, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %35
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  br label %98

94:                                               ; preds = %35
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i64 [ %93, %90 ], [ %97, %94 ]
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @units_to_pixels(i32 %84, i64 %99, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store double 0.000000e+00, double* %112, align 16
  %113 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  store double 0.000000e+00, double* %114, align 8
  %115 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store double 1.000000e+00, double* %116, align 16
  %117 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store double 1.000000e+00, double* %118, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = load i32, i32* @WineCoordinateSpaceGdiDevice, align 4
  %121 = load i32, i32* @CoordinateSpaceDevice, align 4
  %122 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %123 = call i32 @gdip_transform_points(%struct.TYPE_11__* %119, i32 %120, i32 %121, %struct.TYPE_9__* %122, i32 2)
  %124 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load double, double* %125, align 16
  %127 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load double, double* %128, align 16
  %130 = fsub double %126, %129
  %131 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load double, double* %132, align 16
  %134 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load double, double* %135, align 16
  %137 = fsub double %133, %136
  %138 = fmul double %130, %137
  %139 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load double, double* %140, align 8
  %142 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load double, double* %143, align 8
  %145 = fsub double %141, %144
  %146 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load double, double* %147, align 8
  %149 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load double, double* %150, align 8
  %152 = fsub double %148, %151
  %153 = fmul double %145, %152
  %154 = fadd double %138, %153
  %155 = call i32 @sqrt(double %154)
  %156 = call i32 @sqrt(double 2.000000e+00)
  %157 = sdiv i32 %155, %156
  %158 = load i32, i32* %7, align 4
  %159 = mul nsw i32 %158, %157
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %98, %31
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @DashStyleCustom, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %213

166:                                              ; preds = %160
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @MAX_DASHLEN, align 4
  %171 = call i64 @min(i32 %169, i32 %170)
  store i64 %171, i64* %10, align 8
  %172 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %173

173:                                              ; preds = %193, %166
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %10, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %173
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %178, %184
  %186 = call i32 @gdip_round(i32 %185)
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds i32, i32* %17, i64 %187
  store i32 %186, i32* %188, align 4
  %189 = load i64, i64* %9, align 8
  %190 = getelementptr inbounds i32, i32* %17, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %177
  %194 = load i64, i64* %9, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %9, align 8
  br label %173

196:                                              ; preds = %173
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @create_gdi_logbrush(i32 %203, i32* %5)
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @gdip_round(i32 %208)
  %210 = load i64, i64* %10, align 8
  %211 = call i32 @ExtCreatePen(i32 %207, i32 %209, i32* %5, i64 %210, i32* %17)
  store i32 %211, i32* %6, align 4
  %212 = call i32 @free_gdi_logbrush(i32* %5)
  br label %225

213:                                              ; preds = %160
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @create_gdi_logbrush(i32 %216, i32* %5)
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @gdip_round(i32 %221)
  %223 = call i32 @ExtCreatePen(i32 %220, i32 %222, i32* %5, i64 0, i32* null)
  store i32 %223, i32* %6, align 4
  %224 = call i32 @free_gdi_logbrush(i32* %5)
  br label %225

225:                                              ; preds = %213, %196
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @SelectObject(i32 %228, i32 %229)
  %231 = load i64, i64* %8, align 8
  %232 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %232)
  ret i64 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SaveDC(i32) #2

declare dso_local i32 @EndPath(i32) #2

declare dso_local i32 @GdipTransformMatrixPoints(i32*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @sqrt(double) #2

declare dso_local i32 @units_to_pixels(i32, i64, i32) #2

declare dso_local i32 @gdip_transform_points(%struct.TYPE_11__*, i32, i32, %struct.TYPE_9__*, i32) #2

declare dso_local i64 @min(i32, i32) #2

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @gdip_round(i32) #2

declare dso_local i32 @create_gdi_logbrush(i32, i32*) #2

declare dso_local i32 @ExtCreatePen(i32, i32, i32*, i64, i32*) #2

declare dso_local i32 @free_gdi_logbrush(i32*) #2

declare dso_local i32 @SelectObject(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
