; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_rate.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { double, i64 }

@.str = private unnamed_addr constant [16 x i8] c"rate = %-10.2f\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"CONF: non-digit in rate spec: %s=%s\0A\00", align 1
@CONF_ERR = common dso_local global i32 0, align 4
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_rate(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 1.000000e+01, double* %9, align 8
  %13 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %14 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %19 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %23 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %24)
  store i32 0, i32* %4, align 4
  br label %131

26:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %72, %26
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 46
  br label %43

43:                                               ; preds = %35, %27
  %44 = phi i1 [ false, %27 ], [ %42, %35 ]
  br i1 %44, label %45, label %75

45:                                               ; preds = %43
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %11, align 1
  %51 = load i8, i8* %11, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp slt i32 %52, 48
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = load i8, i8* %11, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp slt i32 57, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54, %45
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %61)
  %63 = load i32, i32* @CONF_ERR, align 4
  store i32 %63, i32* %4, align 4
  br label %131

64:                                               ; preds = %54
  %65 = load double, double* %8, align 8
  %66 = fmul double %65, 1.000000e+01
  %67 = load i8, i8* %11, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  %70 = sitofp i32 %69 to double
  %71 = fadd double %66, %70
  store double %71, double* %8, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %27

75:                                               ; preds = %43
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 46
  br i1 %82, label %83, label %126

83:                                               ; preds = %75
  %84 = load i32, i32* %10, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %112, %83
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %86
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  store i8 %98, i8* %12, align 1
  %99 = load i8, i8* %12, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp slt i32 %100, 48
  br i1 %101, label %106, label %102

102:                                              ; preds = %93
  %103 = load i8, i8* %12, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp slt i32 57, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102, %93
  %107 = load i32, i32* @stderr, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %108, i8* %109)
  %111 = load i32, i32* @CONF_ERR, align 4
  store i32 %111, i32* %4, align 4
  br label %131

112:                                              ; preds = %102
  %113 = load i8, i8* %12, align 1
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 %114, 48
  %116 = sitofp i32 %115 to double
  %117 = load double, double* %9, align 8
  %118 = fdiv double %116, %117
  %119 = load double, double* %8, align 8
  %120 = fadd double %119, %118
  store double %120, double* %8, align 8
  %121 = load double, double* %9, align 8
  %122 = fdiv double %121, 1.000000e+01
  store double %122, double* %9, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %7, align 8
  br label %86

125:                                              ; preds = %86
  br label %126

126:                                              ; preds = %125, %75
  %127 = load double, double* %8, align 8
  %128 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %129 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %128, i32 0, i32 0
  store double %127, double* %129, align 8
  %130 = load i32, i32* @CONF_OK, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %126, %106, %58, %17
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
