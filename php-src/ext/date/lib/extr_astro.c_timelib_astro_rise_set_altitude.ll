; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_astro.c_timelib_astro_rise_set_altitude.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_astro.c_timelib_astro_rise_set_altitude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timelib_astro_rise_set_altitude(%struct.TYPE_6__* %0, double %1, double %2, double %3, i32 %4, double* %5, double* %6, i64* %7, i64* %8, i64* %9) #0 {
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca %struct.TYPE_6__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store double %1, double* %12, align 8
  store double %2, double* %13, align 8
  store double %3, double* %14, align 8
  store i32 %4, i32* %15, align 4
  store double* %5, double** %16, align 8
  store double* %6, double** %17, align 8
  store i64* %7, i64** %18, align 8
  store i64* %8, i64** %19, align 8
  store i64* %9, i64** %20, align 8
  store i32 0, i32* %32, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %31, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 12, i32* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %44 = call i32 @timelib_update_ts(%struct.TYPE_6__* %43, i32* null)
  %45 = call %struct.TYPE_6__* (...) @timelib_time_ctor()
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %29, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %68 = call i32 @timelib_update_ts(%struct.TYPE_6__* %67, i32* null)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %30, align 8
  %72 = load i64, i64* %30, align 8
  %73 = call i32 @timelib_ts_to_j2000(i64 %72)
  %74 = add nsw i32 %73, 2
  %75 = sitofp i32 %74 to double
  %76 = load double, double* %12, align 8
  %77 = fdiv double %76, 3.600000e+02
  %78 = fsub double %75, %77
  store double %78, double* %21, align 8
  %79 = load double, double* %21, align 8
  %80 = call i64 @astro_GMST0(double %79)
  %81 = sitofp i64 %80 to double
  %82 = fadd double %81, 1.800000e+02
  %83 = load double, double* %12, align 8
  %84 = fadd double %82, %83
  %85 = fptosi double %84 to i64
  %86 = call double @astro_revolution(i64 %85)
  store double %86, double* %28, align 8
  %87 = load double, double* %21, align 8
  %88 = call i32 @astro_sun_RA_dec(double %87, double* %23, double* %24, double* %22)
  %89 = load double, double* %28, align 8
  %90 = load double, double* %23, align 8
  %91 = fsub double %89, %90
  %92 = call double @astro_rev180(double %91)
  %93 = fdiv double %92, 1.500000e+01
  %94 = fsub double 1.200000e+01, %93
  store double %94, double* %27, align 8
  %95 = load double, double* %22, align 8
  %96 = fdiv double 2.666000e-01, %95
  store double %96, double* %25, align 8
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %10
  %100 = load double, double* %25, align 8
  %101 = load double, double* %14, align 8
  %102 = fsub double %101, %100
  store double %102, double* %14, align 8
  br label %103

103:                                              ; preds = %99, %10
  %104 = load double, double* %14, align 8
  %105 = call double @sind(double %104)
  %106 = load double, double* %13, align 8
  %107 = call double @sind(double %106)
  %108 = load double, double* %24, align 8
  %109 = call double @sind(double %108)
  %110 = fmul double %107, %109
  %111 = fsub double %105, %110
  %112 = load double, double* %13, align 8
  %113 = call double @cosd(double %112)
  %114 = load double, double* %24, align 8
  %115 = call double @cosd(double %114)
  %116 = fmul double %113, %115
  %117 = fdiv double %111, %116
  store double %117, double* %33, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = sitofp i64 %120 to double
  %122 = load double, double* %27, align 8
  %123 = fmul double %122, 3.600000e+03
  %124 = fadd double %121, %123
  %125 = fptosi double %124 to i64
  %126 = load i64*, i64** %20, align 8
  store i64 %125, i64* %126, align 8
  %127 = load double, double* %33, align 8
  %128 = fcmp oge double %127, 1.000000e+00
  br i1 %128, label %129, label %140

129:                                              ; preds = %103
  store i32 -1, i32* %32, align 4
  store double 0.000000e+00, double* %26, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = sitofp i64 %132 to double
  %134 = load double, double* %27, align 8
  %135 = fmul double %134, 3.600000e+03
  %136 = fadd double %133, %135
  %137 = fptosi double %136 to i64
  %138 = load i64*, i64** %19, align 8
  store i64 %137, i64* %138, align 8
  %139 = load i64*, i64** %18, align 8
  store i64 %137, i64* %139, align 8
  br label %189

140:                                              ; preds = %103
  %141 = load double, double* %33, align 8
  %142 = fcmp ole double %141, -1.000000e+00
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  store i32 1, i32* %32, align 4
  store double 1.200000e+01, double* %26, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %146, 43200
  %148 = load i64*, i64** %18, align 8
  store i64 %147, i64* %148, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 43200
  %153 = load i64*, i64** %19, align 8
  store i64 %152, i64* %153, align 8
  br label %188

154:                                              ; preds = %140
  %155 = load double, double* %33, align 8
  %156 = call double @acosd(double %155)
  %157 = fdiv double %156, 1.500000e+01
  store double %157, double* %26, align 8
  %158 = load double, double* %27, align 8
  %159 = load double, double* %26, align 8
  %160 = fsub double %158, %159
  %161 = fmul double %160, 3.600000e+03
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = sitofp i64 %164 to double
  %166 = fadd double %161, %165
  %167 = fptosi double %166 to i64
  %168 = load i64*, i64** %18, align 8
  store i64 %167, i64* %168, align 8
  %169 = load double, double* %27, align 8
  %170 = load double, double* %26, align 8
  %171 = fadd double %169, %170
  %172 = fmul double %171, 3.600000e+03
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = sitofp i64 %175 to double
  %177 = fadd double %172, %176
  %178 = fptosi double %177 to i64
  %179 = load i64*, i64** %19, align 8
  store i64 %178, i64* %179, align 8
  %180 = load double, double* %27, align 8
  %181 = load double, double* %26, align 8
  %182 = fsub double %180, %181
  %183 = load double*, double** %16, align 8
  store double %182, double* %183, align 8
  %184 = load double, double* %27, align 8
  %185 = load double, double* %26, align 8
  %186 = fadd double %184, %185
  %187 = load double*, double** %17, align 8
  store double %186, double* %187, align 8
  br label %188

188:                                              ; preds = %154, %143
  br label %189

189:                                              ; preds = %188, %129
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %191 = call i32 @timelib_time_dtor(%struct.TYPE_6__* %190)
  %192 = load i64, i64* %31, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  store i64 %192, i64* %194, align 8
  %195 = load i32, i32* %32, align 4
  ret i32 %195
}

declare dso_local i32 @timelib_update_ts(%struct.TYPE_6__*, i32*) #1

declare dso_local %struct.TYPE_6__* @timelib_time_ctor(...) #1

declare dso_local i32 @timelib_ts_to_j2000(i64) #1

declare dso_local double @astro_revolution(i64) #1

declare dso_local i64 @astro_GMST0(double) #1

declare dso_local i32 @astro_sun_RA_dec(double, double*, double*, double*) #1

declare dso_local double @astro_rev180(double) #1

declare dso_local double @sind(double) #1

declare dso_local double @cosd(double) #1

declare dso_local double @acosd(double) #1

declare dso_local i32 @timelib_time_dtor(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
