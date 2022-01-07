; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/dscr/extr_dscr_explicit_test.c_dscr_explicit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/dscr/extr_dscr_explicit_test.c_dscr_explicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COUNT = common dso_local global i64 0, align 8
@DSCR_MAX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Kernel DSCR should be %ld but is %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"User DSCR should be %ld but is %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dscr_explicit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  store i64 0, i64* %3, align 8
  %7 = call i32 (...) @getpid()
  %8 = call i32 @srand(i32 %7)
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @set_dscr(i64 %9)
  store i64 0, i64* %2, align 8
  br label %11

11:                                               ; preds = %66, %0
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @COUNT, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %69

15:                                               ; preds = %11
  %16 = call i32 (...) @rand()
  %17 = call double @uniform_deviate(i32 %16)
  store double %17, double* %6, align 8
  %18 = load double, double* %6, align 8
  %19 = fcmp olt double %18, 1.000000e-03
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @DSCR_MAX, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @set_dscr(i64 %28)
  br label %30

30:                                               ; preds = %27, %15
  %31 = call i64 (...) @get_dscr()
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @stderr, align 4
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  store i32 1, i32* %1, align 4
  br label %70

40:                                               ; preds = %30
  %41 = call i32 (...) @rand()
  %42 = call double @uniform_deviate(i32 %41)
  store double %42, double* %6, align 8
  %43 = load double, double* %6, align 8
  %44 = fcmp olt double %43, 1.000000e-03
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @DSCR_MAX, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @set_dscr_usr(i64 %53)
  br label %55

55:                                               ; preds = %52, %40
  %56 = call i64 (...) @get_dscr_usr()
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %3, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @stderr, align 4
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %63)
  store i32 1, i32* %1, align 4
  br label %70

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %2, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %2, align 8
  br label %11

69:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %69, %60, %35
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @set_dscr(i64) #1

declare dso_local double @uniform_deviate(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i64 @get_dscr(...) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @set_dscr_usr(i64) #1

declare dso_local i64 @get_dscr_usr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
