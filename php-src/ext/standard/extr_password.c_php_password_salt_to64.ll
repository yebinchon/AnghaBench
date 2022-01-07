; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_salt_to64.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_salt_to64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i8*)* @php_password_salt_to64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_password_salt_to64(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @FAILURE, align 4
  store i32 %16, i32* %5, align 4
  br label %76

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32* @php_base64_encode(i8* %18, i64 %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i64 @ZSTR_LEN(i32* %21)
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @zend_string_release_ex(i32* %26, i32 0)
  %28 = load i32, i32* @FAILURE, align 4
  store i32 %28, i32* %5, align 4
  br label %76

29:                                               ; preds = %17
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %69, %29
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = call i8* @ZSTR_VAL(i32* %35)
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 46, i8* %45, align 1
  br label %68

46:                                               ; preds = %34
  %47 = load i32*, i32** %11, align 8
  %48 = call i8* @ZSTR_VAL(i32* %47)
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 61
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @zend_string_free(i32* %55)
  %57 = load i32, i32* @FAILURE, align 4
  store i32 %57, i32* %5, align 4
  br label %76

58:                                               ; preds = %46
  %59 = load i32*, i32** %11, align 8
  %60 = call i8* @ZSTR_VAL(i32* %59)
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 %63, i8* %66, align 1
  br label %67

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %42
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %30

72:                                               ; preds = %30
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @zend_string_free(i32* %73)
  %75 = load i32, i32* @SUCCESS, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %54, %25, %15
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32* @php_base64_encode(i8*, i64) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
