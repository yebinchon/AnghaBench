; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_cpfind_float.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_cpfind_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_BIN_JAVA_CP_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*)* @cpfind_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cpfind_float(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca float, align 4
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
  %18 = call double @atof(i8* %17)
  br label %20

19:                                               ; preds = %11, %3
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi double [ %18, %16 ], [ 0.000000e+00, %19 ]
  %22 = fptrunc double %21 to float
  store float %22, float* %8, align 4
  %23 = load float, float* %8, align 4
  %24 = fpext float %23 to double
  %25 = fcmp oeq double %24, 0.000000e+00
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 48
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 48
  br i1 %46, label %49, label %47

47:                                               ; preds = %41, %35, %29, %26
  %48 = call i32* (...) @r_list_new()
  store i32* %48, i32** %4, align 8
  br label %54

49:                                               ; preds = %41, %20
  %50 = load i32*, i32** %6, align 8
  %51 = bitcast float* %8 to i32*
  %52 = load i32, i32* @R_BIN_JAVA_CP_FLOAT, align 4
  %53 = call i32* @r_bin_java_find_cp_const_by_val(i32* %50, i32* %51, i32 4, i32 %52)
  store i32* %53, i32** %4, align 8
  br label %54

54:                                               ; preds = %49, %47
  %55 = load i32*, i32** %4, align 8
  ret i32* %55
}

declare dso_local double @atof(i8*) #1

declare dso_local i32* @r_list_new(...) #1

declare dso_local i32* @r_bin_java_find_cp_const_by_val(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
