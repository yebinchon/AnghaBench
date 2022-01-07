; ModuleID = '/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_verdana11_width.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_verdana11_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verdana11_widths = common dso_local global double* null, align 8
@VERDANA_KERNING = common dso_local global i64 0, align 8
@VERDANA_PADDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, float)* @verdana11_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @verdana11_width(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  store double 0.000000e+00, double* %5, align 8
  br label %7

7:                                                ; preds = %70, %2
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @IS_UTF8_STARTBYTE(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %32, %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @IS_UTF8_BYTE(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @IS_UTF8_STARTBYTE(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i1 [ false, %19 ], [ %29, %24 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %3, align 8
  br label %19

35:                                               ; preds = %30
  %36 = load float, float* %4, align 4
  %37 = fpext float %36 to double
  %38 = load double, double* %5, align 8
  %39 = fadd double %38, %37
  store double %39, double* %5, align 8
  br label %70

40:                                               ; preds = %11
  %41 = load i8*, i8** %3, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %40
  %51 = load double*, double** @verdana11_widths, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds double, double* %51, i64 %54
  %56 = load double, double* %55, align 8
  store double %56, double* %6, align 8
  %57 = load double, double* %6, align 8
  %58 = fcmp une double %57, 0.000000e+00
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load double, double* %6, align 8
  %61 = load i64, i64* @VERDANA_KERNING, align 8
  %62 = sitofp i64 %61 to double
  %63 = fadd double %60, %62
  %64 = load double, double* %5, align 8
  %65 = fadd double %64, %63
  store double %65, double* %5, align 8
  br label %66

66:                                               ; preds = %59, %50
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %67, %35
  br label %7

71:                                               ; preds = %7
  %72 = load i64, i64* @VERDANA_KERNING, align 8
  %73 = sitofp i64 %72 to double
  %74 = load double, double* %5, align 8
  %75 = fsub double %74, %73
  store double %75, double* %5, align 8
  %76 = load i64, i64* @VERDANA_PADDING, align 8
  %77 = sitofp i64 %76 to double
  %78 = load double, double* %5, align 8
  %79 = fadd double %78, %77
  store double %79, double* %5, align 8
  %80 = load double, double* %5, align 8
  ret double %80
}

declare dso_local i64 @IS_UTF8_STARTBYTE(i8 signext) #1

declare dso_local i64 @IS_UTF8_BYTE(i8 signext) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
