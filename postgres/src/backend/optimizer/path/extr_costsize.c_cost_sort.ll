; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_sort.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double }

@enable_sort = common dso_local global i32 0, align 4
@disable_cost = common dso_local global double 0.000000e+00, align 8
@cpu_operator_cost = common dso_local global double 0.000000e+00, align 8
@BLCKSZ = common dso_local global double 0.000000e+00, align 8
@seq_page_cost = common dso_local global double 0.000000e+00, align 8
@random_page_cost = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cost_sort(%struct.TYPE_3__* %0, i32* %1, i32* %2, double %3, double %4, i32 %5, double %6, i32 %7, double %8) #0 {
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i64, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store double %3, double* %13, align 8
  store double %4, double* %14, align 8
  store i32 %5, i32* %15, align 4
  store double %6, double* %16, align 8
  store i32 %7, i32* %17, align 4
  store double %8, double* %18, align 8
  %30 = load double, double* %13, align 8
  store double %30, double* %19, align 8
  store double 0.000000e+00, double* %20, align 8
  %31 = load double, double* %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call double @relation_byte_size(double %31, i32 %32)
  store double %33, double* %21, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, 1024
  store i64 %36, i64* %24, align 8
  %37 = load i32, i32* @enable_sort, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %9
  %40 = load double, double* @disable_cost, align 8
  %41 = load double, double* %19, align 8
  %42 = fadd double %41, %40
  store double %42, double* %19, align 8
  br label %43

43:                                               ; preds = %39, %9
  %44 = load double, double* %14, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store double %44, double* %46, align 8
  %47 = load double, double* %14, align 8
  %48 = fcmp olt double %47, 2.000000e+00
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store double 2.000000e+00, double* %14, align 8
  br label %50

50:                                               ; preds = %49, %43
  %51 = load double, double* @cpu_operator_cost, align 8
  %52 = fmul double 2.000000e+00, %51
  %53 = load double, double* %16, align 8
  %54 = fadd double %53, %52
  store double %54, double* %16, align 8
  %55 = load double, double* %18, align 8
  %56 = fcmp ogt double %55, 0.000000e+00
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load double, double* %18, align 8
  %59 = load double, double* %14, align 8
  %60 = fcmp olt double %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load double, double* %18, align 8
  store double %62, double* %23, align 8
  %63 = load double, double* %23, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call double @relation_byte_size(double %63, i32 %64)
  store double %65, double* %22, align 8
  br label %69

66:                                               ; preds = %57, %50
  %67 = load double, double* %14, align 8
  store double %67, double* %23, align 8
  %68 = load double, double* %21, align 8
  store double %68, double* %22, align 8
  br label %69

69:                                               ; preds = %66, %61
  %70 = load double, double* %22, align 8
  %71 = load i64, i64* %24, align 8
  %72 = sitofp i64 %71 to double
  %73 = fcmp ogt double %70, %72
  br i1 %73, label %74, label %118

74:                                               ; preds = %69
  %75 = load double, double* %21, align 8
  %76 = load double, double* @BLCKSZ, align 8
  %77 = fdiv double %75, %76
  %78 = call double @llvm.ceil.f64(double %77)
  store double %78, double* %25, align 8
  %79 = load double, double* %21, align 8
  %80 = load i64, i64* %24, align 8
  %81 = sitofp i64 %80 to double
  %82 = fdiv double %79, %81
  store double %82, double* %26, align 8
  %83 = load i64, i64* %24, align 8
  %84 = call double @tuplesort_merge_order(i64 %83)
  store double %84, double* %27, align 8
  %85 = load double, double* %16, align 8
  %86 = load double, double* %14, align 8
  %87 = fmul double %85, %86
  %88 = load double, double* %14, align 8
  %89 = call double @LOG2(double %88)
  %90 = fmul double %87, %89
  %91 = load double, double* %19, align 8
  %92 = fadd double %91, %90
  store double %92, double* %19, align 8
  %93 = load double, double* %26, align 8
  %94 = load double, double* %27, align 8
  %95 = fcmp ogt double %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %74
  %97 = load double, double* %26, align 8
  %98 = call double @log(double %97) #4
  %99 = load double, double* %27, align 8
  %100 = call double @log(double %99) #4
  %101 = fdiv double %98, %100
  %102 = call double @llvm.ceil.f64(double %101)
  store double %102, double* %28, align 8
  br label %104

103:                                              ; preds = %74
  store double 1.000000e+00, double* %28, align 8
  br label %104

104:                                              ; preds = %103, %96
  %105 = load double, double* %25, align 8
  %106 = fmul double 2.000000e+00, %105
  %107 = load double, double* %28, align 8
  %108 = fmul double %106, %107
  store double %108, double* %29, align 8
  %109 = load double, double* %29, align 8
  %110 = load double, double* @seq_page_cost, align 8
  %111 = fmul double %110, 7.500000e-01
  %112 = load double, double* @random_page_cost, align 8
  %113 = fmul double %112, 2.500000e-01
  %114 = fadd double %111, %113
  %115 = fmul double %109, %114
  %116 = load double, double* %19, align 8
  %117 = fadd double %116, %115
  store double %117, double* %19, align 8
  br label %148

118:                                              ; preds = %69
  %119 = load double, double* %14, align 8
  %120 = load double, double* %23, align 8
  %121 = fmul double 2.000000e+00, %120
  %122 = fcmp ogt double %119, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load double, double* %21, align 8
  %125 = load i64, i64* %24, align 8
  %126 = sitofp i64 %125 to double
  %127 = fcmp ogt double %124, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %123, %118
  %129 = load double, double* %16, align 8
  %130 = load double, double* %14, align 8
  %131 = fmul double %129, %130
  %132 = load double, double* %23, align 8
  %133 = fmul double 2.000000e+00, %132
  %134 = call double @LOG2(double %133)
  %135 = fmul double %131, %134
  %136 = load double, double* %19, align 8
  %137 = fadd double %136, %135
  store double %137, double* %19, align 8
  br label %147

138:                                              ; preds = %123
  %139 = load double, double* %16, align 8
  %140 = load double, double* %14, align 8
  %141 = fmul double %139, %140
  %142 = load double, double* %14, align 8
  %143 = call double @LOG2(double %142)
  %144 = fmul double %141, %143
  %145 = load double, double* %19, align 8
  %146 = fadd double %145, %144
  store double %146, double* %19, align 8
  br label %147

147:                                              ; preds = %138, %128
  br label %148

148:                                              ; preds = %147, %104
  %149 = load double, double* @cpu_operator_cost, align 8
  %150 = load double, double* %14, align 8
  %151 = fmul double %149, %150
  %152 = load double, double* %20, align 8
  %153 = fadd double %152, %151
  store double %153, double* %20, align 8
  %154 = load double, double* %19, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  store double %154, double* %156, align 8
  %157 = load double, double* %19, align 8
  %158 = load double, double* %20, align 8
  %159 = fadd double %157, %158
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  store double %159, double* %161, align 8
  ret void
}

declare dso_local double @relation_byte_size(double, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

declare dso_local double @tuplesort_merge_order(i64) #1

declare dso_local double @LOG2(double) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
