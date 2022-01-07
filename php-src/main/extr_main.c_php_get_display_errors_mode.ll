; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_main.c_php_get_display_errors_mode.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_main.c_php_get_display_errors_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHP_DISPLAY_ERRORS_STDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@PHP_DISPLAY_ERRORS_STDERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @php_get_display_errors_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_get_display_errors_mode(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @PHP_DISPLAY_ERRORS_STDOUT, align 4
  store i32 %10, i32* %3, align 4
  br label %79

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 2
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcasecmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @PHP_DISPLAY_ERRORS_STDOUT, align 4
  store i32 %19, i32* %6, align 4
  br label %77

20:                                               ; preds = %14, %11
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 3
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @PHP_DISPLAY_ERRORS_STDOUT, align 4
  store i32 %28, i32* %6, align 4
  br label %76

29:                                               ; preds = %23, %20
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @PHP_DISPLAY_ERRORS_STDOUT, align 4
  store i32 %37, i32* %6, align 4
  br label %75

38:                                               ; preds = %32, %29
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %39, 6
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @PHP_DISPLAY_ERRORS_STDERR, align 4
  store i32 %46, i32* %6, align 4
  br label %74

47:                                               ; preds = %41, %38
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %48, 6
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcasecmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @PHP_DISPLAY_ERRORS_STDOUT, align 4
  store i32 %55, i32* %6, align 4
  br label %73

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @ZEND_ATOL(i32 %57, i8* %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @PHP_DISPLAY_ERRORS_STDOUT, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @PHP_DISPLAY_ERRORS_STDERR, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @PHP_DISPLAY_ERRORS_STDOUT, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %66, %62, %56
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %45
  br label %75

75:                                               ; preds = %74, %36
  br label %76

76:                                               ; preds = %75, %27
  br label %77

77:                                               ; preds = %76, %18
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %9
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @ZEND_ATOL(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
