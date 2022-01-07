; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_unescape.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_unescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Bad escape sequence in file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64*)* @unescape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unescape(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64*, i64** %7, align 8
  store i64 0, i64* %14, align 8
  %15 = call i8* @OPENSSL_zalloc(i32 1)
  store i8* %15, i8** %4, align 8
  br label %73

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = call i8* @OPENSSL_malloc(i64 %17)
  store i8* %18, i8** %9, align 8
  store i8* %18, i8** %8, align 8
  %19 = call i32 @TEST_ptr(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i8* null, i8** %4, align 8
  br label %73

22:                                               ; preds = %16
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 92
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %34, 1
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 110
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %32
  %44 = call i32 @TEST_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %70

45:                                               ; preds = %37
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  store i8 10, i8* %46, align 1
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  br label %58

52:                                               ; preds = %27
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  %55 = load i8, i8* %53, align 1
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  store i8 %55, i8* %56, align 1
  br label %58

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %23

62:                                               ; preds = %23
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %4, align 8
  br label %73

70:                                               ; preds = %43
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @OPENSSL_free(i8* %71)
  store i8* null, i8** %4, align 8
  br label %73

73:                                               ; preds = %70, %62, %21, %13
  %74 = load i8*, i8** %4, align 8
  ret i8* %74
}

declare dso_local i8* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @TEST_error(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
