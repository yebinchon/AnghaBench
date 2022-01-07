; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_add_choice.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_add_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.m_opt_choice_alternatives*, i32* }
%struct.m_opt_choice_alternatives = type { i32, i64 }

@m_option_type_choice = common dso_local global i32 0, align 4
@M_OPT_MIN = common dso_local global i32 0, align 4
@M_OPT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, double, i32)* @add_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_choice(%struct.TYPE_4__* %0, i8* %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.m_opt_choice_alternatives*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, @m_option_type_choice
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load double, double* %7, align 8
  %24 = fcmp ogt double %23, 0.000000e+00
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 -1
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load double, double* %7, align 8
  %31 = call double @llvm.fabs.f64(double %30)
  %32 = fcmp olt double %31, 5.000000e-01
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %134

34:                                               ; preds = %4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @M_OPT_MIN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %93

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @M_OPT_MAX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = sitofp i32 %49 to double
  %51 = load double, double* %7, align 8
  %52 = fadd double %50, %51
  %53 = fptosi double %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp sle i32 %60, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  store i32 1, i32* %10, align 4
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %12, align 4
  br label %92

79:                                               ; preds = %71, %65, %59, %48
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @check_choice(i32 %80, i32 %81, i32* %10, i32* %12, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @check_choice(i32 %86, i32 %87, i32* %10, i32* %12, i32 %90)
  br label %92

92:                                               ; preds = %79, %77
  br label %93

93:                                               ; preds = %92, %41, %34
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %95, align 8
  store %struct.m_opt_choice_alternatives* %96, %struct.m_opt_choice_alternatives** %14, align 8
  br label %97

97:                                               ; preds = %109, %93
  %98 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %14, align 8
  %99 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %14, align 8
  %106 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @check_choice(i32 %103, i32 %104, i32* %10, i32* %12, i32 %107)
  br label %109

109:                                              ; preds = %102
  %110 = load %struct.m_opt_choice_alternatives*, %struct.m_opt_choice_alternatives** %14, align 8
  %111 = getelementptr inbounds %struct.m_opt_choice_alternatives, %struct.m_opt_choice_alternatives* %110, i32 1
  store %struct.m_opt_choice_alternatives* %111, %struct.m_opt_choice_alternatives** %14, align 8
  br label %97

112:                                              ; preds = %97
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = call i32 @choice_get_min_max(%struct.TYPE_4__* %116, i32* %15, i32* %16)
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, -1
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %8, align 4
  %122 = xor i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* %15, align 4
  br label %128

126:                                              ; preds = %115
  %127 = load i32, i32* %16, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %128, %112
  %131 = load i32, i32* %12, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = bitcast i8* %132 to i32*
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %33
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @check_choice(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @choice_get_min_max(%struct.TYPE_4__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
