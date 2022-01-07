; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_format_file_size.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_format_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%.0f B\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%.3f KiB\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%.3f MiB\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%.3f GiB\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%.3f TiB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_file_size(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sitofp i32 %5 to double
  store double %6, double* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 1024
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load double, double* %4, align 8
  %11 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %10)
  store i8* %11, i8** %2, align 8
  br label %38

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 1048576
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load double, double* %4, align 8
  %17 = fdiv double %16, 1.024000e+03
  %18 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %17)
  store i8* %18, i8** %2, align 8
  br label %38

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 1073741824
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load double, double* %4, align 8
  %24 = fdiv double %23, 0x4130000000000000
  %25 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), double %24)
  store i8* %25, i8** %2, align 8
  br label %38

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %28, 1099511627776
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load double, double* %4, align 8
  %32 = fdiv double %31, 0x41D0000000000000
  %33 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), double %32)
  store i8* %33, i8** %2, align 8
  br label %38

34:                                               ; preds = %26
  %35 = load double, double* %4, align 8
  %36 = fdiv double %35, 0x4270000000000000
  %37 = call i8* @talloc_asprintf(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), double %36)
  store i8* %37, i8** %2, align 8
  br label %38

38:                                               ; preds = %34, %30, %22, %15, %9
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i8* @talloc_asprintf(i32*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
