; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_get_position.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @get_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_position(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @OidIsValid(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %75, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %75, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store double 5.000000e-01, double* %5, align 8
  br label %125

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store double 5.000000e-01, double* %5, align 8
  br label %125

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @FunctionCall2Coll(%struct.TYPE_10__* %39, i32 %42, i32 %45, i32 %48)
  %50 = call double @DatumGetFloat8(i32 %49)
  store double %50, double* %12, align 8
  %51 = load double, double* %12, align 8
  %52 = fcmp ole double %51, 0.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store double 5.000000e-01, double* %5, align 8
  br label %125

54:                                               ; preds = %37
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @FunctionCall2Coll(%struct.TYPE_10__* %56, i32 %59, i32 %62, i32 %65)
  %67 = call double @DatumGetFloat8(i32 %66)
  %68 = load double, double* %12, align 8
  %69 = fdiv double %67, %68
  store double %69, double* %11, align 8
  %70 = load double, double* %11, align 8
  %71 = call double @Max(double %70, double 0.000000e+00)
  store double %71, double* %11, align 8
  %72 = load double, double* %11, align 8
  %73 = call double @Min(double %72, double 1.000000e+00)
  store double %73, double* %11, align 8
  %74 = load double, double* %11, align 8
  store double %74, double* %5, align 8
  br label %125

75:                                               ; preds = %22, %4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i1 [ false, %85 ], [ %94, %90 ]
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, double 0.000000e+00, double 1.000000e+00
  store double %98, double* %5, align 8
  br label %125

99:                                               ; preds = %80, %75
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %104
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %114, %109
  %121 = phi i1 [ false, %109 ], [ %119, %114 ]
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, double 1.000000e+00, double 0.000000e+00
  store double %123, double* %5, align 8
  br label %125

124:                                              ; preds = %104, %99
  store double 5.000000e-01, double* %5, align 8
  br label %125

125:                                              ; preds = %124, %120, %95, %54, %53, %36, %32
  %126 = load double, double* %5, align 8
  ret double %126
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local double @DatumGetFloat8(i32) #1

declare dso_local i32 @FunctionCall2Coll(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local double @Max(double, double) #1

declare dso_local double @Min(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
