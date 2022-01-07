; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_booltestsel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_booltestsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { double }
%struct.TYPE_10__ = type { i64, double*, i32* }

@STATISTIC_KIND_MCV = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unrecognized booltesttype: %d\00", align 1
@DEFAULT_UNK_SEL = common dso_local global double 0.000000e+00, align 8
@DEFAULT_NOT_UNK_SEL = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @booltestsel(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca double, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @examine_variable(i32* %20, i32* %21, i32 %22, %struct.TYPE_8__* %13)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @HeapTupleIsValid(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %117

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @GETSTRUCT(i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %15, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  store double %35, double* %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %39 = load i32, i32* @InvalidOid, align 4
  %40 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %41 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @get_attstatsslot(%struct.TYPE_10__* %17, i32 %37, i32 %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @DatumGetBool(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %58 = load double*, double** %57, align 8
  %59 = getelementptr inbounds double, double* %58, i64 0
  %60 = load double, double* %59, align 8
  store double %60, double* %18, align 8
  br label %69

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %63 = load double*, double** %62, align 8
  %64 = getelementptr inbounds double, double* %63, i64 0
  %65 = load double, double* %64, align 8
  %66 = fsub double 1.000000e+00, %65
  %67 = load double, double* %16, align 8
  %68 = fsub double %66, %67
  store double %68, double* %18, align 8
  br label %69

69:                                               ; preds = %61, %56
  %70 = load double, double* %18, align 8
  %71 = fsub double 1.000000e+00, %70
  %72 = load double, double* %16, align 8
  %73 = fsub double %71, %72
  store double %73, double* %19, align 8
  %74 = load i32, i32* %8, align 4
  switch i32 %74, label %90 [
    i32 128, label %75
    i32 130, label %77
    i32 129, label %80
    i32 131, label %82
    i32 133, label %85
    i32 132, label %87
  ]

75:                                               ; preds = %69
  %76 = load double, double* %16, align 8
  store double %76, double* %14, align 8
  br label %94

77:                                               ; preds = %69
  %78 = load double, double* %16, align 8
  %79 = fsub double 1.000000e+00, %78
  store double %79, double* %14, align 8
  br label %94

80:                                               ; preds = %69
  %81 = load double, double* %18, align 8
  store double %81, double* %14, align 8
  br label %94

82:                                               ; preds = %69
  %83 = load double, double* %18, align 8
  %84 = fsub double 1.000000e+00, %83
  store double %84, double* %14, align 8
  br label %94

85:                                               ; preds = %69
  %86 = load double, double* %19, align 8
  store double %86, double* %14, align 8
  br label %94

87:                                               ; preds = %69
  %88 = load double, double* %19, align 8
  %89 = fsub double 1.000000e+00, %88
  store double %89, double* %14, align 8
  br label %94

90:                                               ; preds = %69
  %91 = load i32, i32* @ERROR, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @elog(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %92)
  store double 0.000000e+00, double* %14, align 8
  br label %94

94:                                               ; preds = %90, %87, %85, %82, %80, %77, %75
  %95 = call i32 @free_attstatsslot(%struct.TYPE_10__* %17)
  br label %116

96:                                               ; preds = %45, %28
  %97 = load i32, i32* %8, align 4
  switch i32 %97, label %111 [
    i32 128, label %98
    i32 130, label %100
    i32 129, label %103
    i32 133, label %103
    i32 131, label %107
    i32 132, label %107
  ]

98:                                               ; preds = %96
  %99 = load double, double* %16, align 8
  store double %99, double* %14, align 8
  br label %115

100:                                              ; preds = %96
  %101 = load double, double* %16, align 8
  %102 = fsub double 1.000000e+00, %101
  store double %102, double* %14, align 8
  br label %115

103:                                              ; preds = %96, %96
  %104 = load double, double* %16, align 8
  %105 = fsub double 1.000000e+00, %104
  %106 = fdiv double %105, 2.000000e+00
  store double %106, double* %14, align 8
  br label %115

107:                                              ; preds = %96, %96
  %108 = load double, double* %16, align 8
  %109 = fadd double %108, 1.000000e+00
  %110 = fdiv double %109, 2.000000e+00
  store double %110, double* %14, align 8
  br label %115

111:                                              ; preds = %96
  %112 = load i32, i32* @ERROR, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @elog(i32 %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %113)
  store double 0.000000e+00, double* %14, align 8
  br label %115

115:                                              ; preds = %111, %107, %103, %100, %98
  br label %116

116:                                              ; preds = %115, %94
  br label %145

117:                                              ; preds = %6
  %118 = load i32, i32* %8, align 4
  switch i32 %118, label %140 [
    i32 128, label %119
    i32 130, label %121
    i32 129, label %123
    i32 132, label %123
    i32 133, label %131
    i32 131, label %131
  ]

119:                                              ; preds = %117
  %120 = load double, double* @DEFAULT_UNK_SEL, align 8
  store double %120, double* %14, align 8
  br label %144

121:                                              ; preds = %117
  %122 = load double, double* @DEFAULT_NOT_UNK_SEL, align 8
  store double %122, double* %14, align 8
  br label %144

123:                                              ; preds = %117, %117
  %124 = load i32*, i32** %7, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32*, i32** %12, align 8
  %129 = call i64 @clause_selectivity(i32* %124, i32* %125, i32 %126, i32 %127, i32* %128)
  %130 = sitofp i64 %129 to double
  store double %130, double* %14, align 8
  br label %144

131:                                              ; preds = %117, %117
  %132 = load i32*, i32** %7, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32*, i32** %12, align 8
  %137 = call i64 @clause_selectivity(i32* %132, i32* %133, i32 %134, i32 %135, i32* %136)
  %138 = sitofp i64 %137 to double
  %139 = fsub double 1.000000e+00, %138
  store double %139, double* %14, align 8
  br label %144

140:                                              ; preds = %117
  %141 = load i32, i32* @ERROR, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @elog(i32 %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %142)
  store double 0.000000e+00, double* %14, align 8
  br label %144

144:                                              ; preds = %140, %131, %123, %121, %119
  br label %145

145:                                              ; preds = %144, %116
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ReleaseVariableStats(i32 %147)
  %149 = load double, double* %14, align 8
  %150 = call i32 @CLAMP_PROBABILITY(double %149)
  %151 = load double, double* %14, align 8
  %152 = fptosi double %151 to i32
  ret i32 %152
}

declare dso_local i32 @examine_variable(i32*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i64 @DatumGetBool(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_10__*) #1

declare dso_local i64 @clause_selectivity(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ReleaseVariableStats(i32) #1

declare dso_local i32 @CLAMP_PROBABILITY(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
