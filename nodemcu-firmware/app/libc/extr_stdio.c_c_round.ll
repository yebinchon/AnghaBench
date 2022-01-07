; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_c_round.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_c_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double, i32*, i8*, i8*, i8, i8*)* @c_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @c_round(double %0, i32* %1, i8* %2, i8* %3, i8 signext %4, i8* %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  store double %0, double* %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8 %4, i8* %11, align 1
  store i8* %5, i8** %12, align 8
  %14 = load double, double* %7, align 8
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = load double, double* %7, align 8
  %18 = fmul double %17, 1.000000e+01
  %19 = call i32 @modf(double %18, double* %13)
  br label %23

20:                                               ; preds = %6
  %21 = load i8, i8* %11, align 1
  %22 = call double @to_digit(i8 signext %21)
  store double %22, double* %13, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load double, double* %13, align 8
  %25 = fcmp ogt double %24, 4.000000e+00
  br i1 %25, label %26, label %66

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %62, %26
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** %10, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = add i8 %37, 1
  store i8 %38, i8* %36, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 57
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %65

42:                                               ; preds = %35
  %43 = load i8*, i8** %10, align 8
  store i8 48, i8* %43, align 1
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  store i8 49, i8* %51, align 1
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %60

55:                                               ; preds = %47
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %10, align 8
  store i8 49, i8* %57, align 1
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %55, %50
  br label %65

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %64, i8** %10, align 8
  br label %27

65:                                               ; preds = %60, %41
  br label %98

66:                                               ; preds = %23
  %67 = load i8*, i8** %12, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 45
  br i1 %70, label %71, label %97

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %93, %71
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 46
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 -1
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i8*, i8** %10, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 48
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %96

86:                                               ; preds = %80
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i8*, i8** %12, align 8
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %90, %86
  br label %93

93:                                               ; preds = %92
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 -1
  store i8* %95, i8** %10, align 8
  br label %72

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %66
  br label %98

98:                                               ; preds = %97, %65
  %99 = load i8*, i8** %9, align 8
  ret i8* %99
}

declare dso_local i32 @modf(double, double*) #1

declare dso_local double @to_digit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
