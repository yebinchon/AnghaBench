; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-procfile-parser.c_main.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-procfile-parser.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [75 x i8] c"netdata internal: completed in %lu cycles, %lu cycles per read, %0.2f %%.\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"method1         : completed in %lu cycles, %lu cycles per read, %0.2f %%.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  store i32 1000000, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %12 = call i64 (...) @test_netdata_internal()
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %21, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = call i64 (...) @test_netdata_internal()
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %13

24:                                               ; preds = %13
  store i64 0, i64* %9, align 8
  %25 = call i64 (...) @test_method1()
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %34, %24
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = call i64 (...) @test_method1()
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %26

37:                                               ; preds = %26
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %39, %41
  %43 = load i64, i64* %8, align 8
  %44 = uitofp i64 %43 to float
  %45 = fpext float %44 to double
  %46 = fmul double %45, 1.000000e+02
  %47 = load i64, i64* %8, align 8
  %48 = uitofp i64 %47 to float
  %49 = fpext float %48 to double
  %50 = fdiv double %46, %49
  %51 = fptrunc double %50 to float
  %52 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %42, float %51)
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %54, %56
  %58 = load i64, i64* %9, align 8
  %59 = uitofp i64 %58 to float
  %60 = fpext float %59 to double
  %61 = fmul double %60, 1.000000e+02
  %62 = load i64, i64* %8, align 8
  %63 = uitofp i64 %62 to float
  %64 = fpext float %63 to double
  %65 = fdiv double %61, %64
  %66 = fptrunc double %65 to float
  %67 = call i32 @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %57, float %66)
  ret i32 0
}

declare dso_local i64 @test_netdata_internal(...) #1

declare dso_local i64 @test_method1(...) #1

declare dso_local i32 @printf(i8*, i64, i64, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
