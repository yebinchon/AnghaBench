; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_convert_one_string_to_scalar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_convert_one_string_to_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, i32, i32)* @convert_one_string_to_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @convert_one_string_to_scalar(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store double 0.000000e+00, double* %4, align 8
  br label %66

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 12
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 12, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  %27 = sitofp i32 %26 to double
  store double %27, double* %11, align 8
  store double 0.000000e+00, double* %9, align 8
  %28 = load double, double* %11, align 8
  store double %28, double* %10, align 8
  br label %29

29:                                               ; preds = %52, %22
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %52

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sitofp i32 %55 to double
  %57 = load double, double* %10, align 8
  %58 = fdiv double %56, %57
  %59 = load double, double* %9, align 8
  %60 = fadd double %59, %58
  store double %60, double* %9, align 8
  %61 = load double, double* %11, align 8
  %62 = load double, double* %10, align 8
  %63 = fmul double %62, %61
  store double %63, double* %10, align 8
  br label %29

64:                                               ; preds = %29
  %65 = load double, double* %9, align 8
  store double %65, double* %4, align 8
  br label %66

66:                                               ; preds = %64, %17
  %67 = load double, double* %4, align 8
  ret double %67
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
