; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_api.c_mysqli_escape_string_for_tx_name_in_comment.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_api.c_mysqli_escape_string_for_tx_name_in_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Transaction name truncated. Must be only [0-9A-Za-z\\-_=]+\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mysqli_escape_string_for_tx_name_in_comment(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %96

10:                                               ; preds = %1
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i8*, i8** %2, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add nsw i64 %14, 1
  %16 = add nsw i64 %15, 2
  %17 = add nsw i64 %16, 2
  %18 = add nsw i64 %17, 1
  %19 = call i8* @emalloc(i64 %18)
  store i8* %19, i8** %3, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  store i8 32, i8* %20, align 1
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  store i8 47, i8* %22, align 1
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  store i8 42, i8* %24, align 1
  br label %26

26:                                               ; preds = %10, %86
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %7, align 1
  %29 = load i8, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %89

33:                                               ; preds = %26
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 57
  br i1 %40, label %73, label %41

41:                                               ; preds = %37, %33
  %42 = load i8, i8* %7, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 97
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8, i8* %7, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 122
  br i1 %48, label %73, label %49

49:                                               ; preds = %45, %41
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sge i32 %51, 65
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8, i8* %7, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 %55, 90
  br i1 %56, label %73, label %57

57:                                               ; preds = %53, %49
  %58 = load i8, i8* %7, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 45
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = load i8, i8* %7, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 95
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i8, i8* %7, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i8, i8* %7, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 61
  br i1 %72, label %73, label %77

73:                                               ; preds = %69, %65, %61, %57, %53, %45, %37
  %74 = load i8, i8* %7, align 1
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  store i8 %74, i8* %75, align 1
  br label %86

77:                                               ; preds = %69
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @FALSE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @E_WARNING, align 4
  %83 = call i32 @php_error_docref(i32* null, i32 %82, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %84 = load i64, i64* @TRUE, align 8
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %5, align 8
  br label %26

89:                                               ; preds = %32
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %6, align 8
  store i8 42, i8* %90, align 1
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  store i8 47, i8* %92, align 1
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  store i8 0, i8* %94, align 1
  br label %96

96:                                               ; preds = %89, %1
  %97 = load i8*, i8** %3, align 8
  ret i8* %97
}

declare dso_local i8* @emalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
