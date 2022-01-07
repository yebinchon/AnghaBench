; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_absFunc.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_absFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @absFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @absFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @UNUSED_PARAMETER(i32 %13)
  %15 = load i32**, i32*** %6, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @sqlite3_value_type(i32* %17)
  switch i32 %18, label %43 [
    i32 129, label %19
    i32 128, label %40
  ]

19:                                               ; preds = %3
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @sqlite3_value_int64(i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @sqlite3_result_error(i32* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %57

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %19
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @sqlite3_result_int64(i32* %37, i32 %38)
  br label %57

40:                                               ; preds = %3
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @sqlite3_result_null(i32* %41)
  br label %57

43:                                               ; preds = %3
  %44 = load i32**, i32*** %6, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = call double @sqlite3_value_double(i32* %46)
  store double %47, double* %8, align 8
  %48 = load double, double* %8, align 8
  %49 = fcmp olt double %48, 0.000000e+00
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load double, double* %8, align 8
  %52 = fneg double %51
  store double %52, double* %8, align 8
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i32*, i32** %4, align 8
  %55 = load double, double* %8, align 8
  %56 = call i32 @sqlite3_result_double(i32* %54, double %55)
  br label %57

57:                                               ; preds = %30, %53, %40, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_result_null(i32*) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i32 @sqlite3_result_double(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
