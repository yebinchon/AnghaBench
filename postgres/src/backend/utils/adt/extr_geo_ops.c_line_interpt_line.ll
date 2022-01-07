; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_line_interpt_line.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_geo_ops.c_line_interpt_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*)* @line_interpt_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_interpt_line(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = call i32 @FPzero(double %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %79, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = call double @float8_div(double %24, double %27)
  %29 = call i32 @float8_mul(double %21, double %28)
  %30 = call i64 @FPeq(double %18, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %168

33:                                               ; preds = %15
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load double, double* %38, align 8
  %40 = call i32 @float8_mul(double %36, double %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = call i32 @float8_mul(double %43, double %46)
  %48 = call double @float8_mi(i32 %40, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = call i32 @float8_mul(double %51, double %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = call i32 @float8_mul(double %58, double %61)
  %63 = call double @float8_mi(i32 %55, i32 %62)
  %64 = call double @float8_div(double %48, double %63)
  store double %64, double* %8, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load double, double* %66, align 8
  %68 = load double, double* %8, align 8
  %69 = call i32 @float8_mul(double %67, double %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load double, double* %71, align 8
  %73 = call double @float8_pl(i32 %69, double %72)
  %74 = fneg double %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load double, double* %76, align 8
  %78 = call double @float8_div(double %74, double %77)
  store double %78, double* %9, align 8
  br label %151

79:                                               ; preds = %3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load double, double* %81, align 8
  %83 = call i32 @FPzero(double %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %149, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load double, double* %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load double, double* %90, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load double, double* %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load double, double* %96, align 8
  %98 = call double @float8_div(double %94, double %97)
  %99 = call i32 @float8_mul(double %91, double %98)
  %100 = call i64 @FPeq(double %88, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %85
  store i32 0, i32* %4, align 4
  br label %168

103:                                              ; preds = %85
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load double, double* %108, align 8
  %110 = call i32 @float8_mul(double %106, double %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load double, double* %115, align 8
  %117 = call i32 @float8_mul(double %113, double %116)
  %118 = call double @float8_mi(i32 %110, i32 %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load double, double* %120, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load double, double* %123, align 8
  %125 = call i32 @float8_mul(double %121, double %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load double, double* %127, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load double, double* %130, align 8
  %132 = call i32 @float8_mul(double %128, double %131)
  %133 = call double @float8_mi(i32 %125, i32 %132)
  %134 = call double @float8_div(double %118, double %133)
  store double %134, double* %8, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load double, double* %136, align 8
  %138 = load double, double* %8, align 8
  %139 = call i32 @float8_mul(double %137, double %138)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load double, double* %141, align 8
  %143 = call double @float8_pl(i32 %139, double %142)
  %144 = fneg double %143
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load double, double* %146, align 8
  %148 = call double @float8_div(double %144, double %147)
  store double %148, double* %9, align 8
  br label %150

149:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  br label %168

150:                                              ; preds = %103
  br label %151

151:                                              ; preds = %150, %33
  %152 = load double, double* %8, align 8
  %153 = fcmp oeq double %152, 0.000000e+00
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store double 0.000000e+00, double* %8, align 8
  br label %155

155:                                              ; preds = %154, %151
  %156 = load double, double* %9, align 8
  %157 = fcmp oeq double %156, 0.000000e+00
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store double 0.000000e+00, double* %9, align 8
  br label %159

159:                                              ; preds = %158, %155
  %160 = load i32*, i32** %5, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i32*, i32** %5, align 8
  %164 = load double, double* %8, align 8
  %165 = load double, double* %9, align 8
  %166 = call i32 @point_construct(i32* %163, double %164, double %165)
  br label %167

167:                                              ; preds = %162, %159
  store i32 1, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %149, %102, %32
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @FPzero(double) #1

declare dso_local i64 @FPeq(double, i32) #1

declare dso_local i32 @float8_mul(double, double) #1

declare dso_local double @float8_div(double, double) #1

declare dso_local double @float8_mi(i32, i32) #1

declare dso_local double @float8_pl(i32, double) #1

declare dso_local i32 @point_construct(i32*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
