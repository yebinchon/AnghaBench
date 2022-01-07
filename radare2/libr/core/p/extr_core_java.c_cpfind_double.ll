; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_cpfind_double.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_cpfind_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_BIN_JAVA_CP_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*)* @cpfind_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cpfind_double(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %7, align 8
  %18 = call double @strtod(i8* %17, i32* null)
  br label %20

19:                                               ; preds = %11, %3
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi double [ %18, %16 ], [ 0.000000e+00, %19 ]
  store double %21, double* %8, align 8
  %22 = load double, double* %8, align 8
  %23 = fcmp oeq double %22, 0.000000e+00
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 48
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 48
  br i1 %44, label %47, label %45

45:                                               ; preds = %39, %33, %27, %24
  %46 = call i32* (...) @r_list_new()
  store i32* %46, i32** %4, align 8
  br label %52

47:                                               ; preds = %39, %20
  %48 = load i32*, i32** %6, align 8
  %49 = bitcast double* %8 to i32*
  %50 = load i32, i32* @R_BIN_JAVA_CP_DOUBLE, align 4
  %51 = call i32* @r_bin_java_find_cp_const_by_val(i32* %48, i32* %49, i32 8, i32 %50)
  store i32* %51, i32** %4, align 8
  br label %52

52:                                               ; preds = %47, %45
  %53 = load i32*, i32** %4, align 8
  ret i32* %53
}

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local i32* @r_list_new(...) #1

declare dso_local i32* @r_bin_java_find_cp_const_by_val(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
