; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_math.c_Math_atan2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_math.c_Math_atan2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NAN = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Math_atan2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Math_atan2(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %11, align 4
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %29

20:                                               ; preds = %6
  %21 = load i32*, i32** %13, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @NAN, align 4
  %25 = call i32 @jsval_number(i32 %24)
  %26 = load i32*, i32** %13, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %7, align 4
  br label %62

29:                                               ; preds = %6
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @to_number(i32* %30, i32 %33, double* %15)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %7, align 4
  br label %62

40:                                               ; preds = %29
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @to_number(i32* %41, i32 %44, double* %14)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %7, align 4
  br label %62

51:                                               ; preds = %40
  %52 = load i32*, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load double, double* %15, align 8
  %56 = load double, double* %14, align 8
  %57 = call i32 @atan2(double %55, double %56)
  %58 = call i32 @jsval_number(i32 %57)
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* @S_OK, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %49, %38, %27
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @atan2(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
