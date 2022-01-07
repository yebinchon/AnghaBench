; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_compute_trivial_stats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_compute_trivial_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, double, double, double, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32 (%struct.TYPE_7__*, i32, i32*)*, i32, double)* @compute_trivial_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_trivial_stats(%struct.TYPE_7__* %0, i32 (%struct.TYPE_7__*, i32, i32*)* %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32 (%struct.TYPE_7__*, i32, i32*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 (%struct.TYPE_7__*, i32, i32*)* %1, i32 (%struct.TYPE_7__*, i32, i32*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store double 0.000000e+00, double* %12, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br label %30

30:                                               ; preds = %23, %4
  %31 = phi i1 [ false, %4 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br label %46

46:                                               ; preds = %39, %30
  %47 = phi i1 [ false, %30 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %89, %46
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %49
  %54 = call i32 (...) @vacuum_delay_point()
  %55 = load i32 (%struct.TYPE_7__*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32, i32*)** %6, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 %55(%struct.TYPE_7__* %56, i32 %57, i32* %16)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %89

64:                                               ; preds = %53
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @DatumGetPointer(i32 %70)
  %72 = call i64 @VARSIZE_ANY(i32 %71)
  %73 = sitofp i64 %72 to double
  %74 = load double, double* %12, align 8
  %75 = fadd double %74, %73
  store double %75, double* %12, align 8
  br label %88

76:                                               ; preds = %64
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @DatumGetCString(i32 %80)
  %82 = call i64 @strlen(i32 %81)
  %83 = add nsw i64 %82, 1
  %84 = sitofp i64 %83 to double
  %85 = load double, double* %12, align 8
  %86 = fadd double %85, %84
  store double %86, double* %12, align 8
  br label %87

87:                                               ; preds = %79, %76
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %61
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %49

92:                                               ; preds = %49
  %93 = load i32, i32* %11, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sitofp i32 %98 to double
  %100 = load i32, i32* %7, align 4
  %101 = sitofp i32 %100 to double
  %102 = fdiv double %99, %101
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store double %102, double* %104, align 8
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %95
  %108 = load double, double* %12, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %108, %110
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  store double %111, double* %113, align 8
  br label %123

114:                                              ; preds = %95
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sitofp i32 %119 to double
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  store double %120, double* %122, align 8
  br label %123

123:                                              ; preds = %114, %107
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  store double 0.000000e+00, double* %125, align 8
  br label %152

126:                                              ; preds = %92
  %127 = load i32, i32* %10, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %126
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store double 1.000000e+00, double* %133, align 8
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  store double 0.000000e+00, double* %138, align 8
  br label %148

139:                                              ; preds = %129
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sitofp i32 %144 to double
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  store double %145, double* %147, align 8
  br label %148

148:                                              ; preds = %139, %136
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  store double 0.000000e+00, double* %150, align 8
  br label %151

151:                                              ; preds = %148, %126
  br label %152

152:                                              ; preds = %151, %123
  ret void
}

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i64 @VARSIZE_ANY(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @DatumGetCString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
