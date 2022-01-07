; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_parse_bin.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_parse_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Can't convert %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64*)* @parse_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bin(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8
  store i8* null, i8** %14, align 8
  %15 = load i64*, i64** %7, align 8
  store i64 0, i64* %15, align 8
  store i32 1, i32* %4, align 4
  br label %79

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = call i8* @OPENSSL_malloc(i32 1)
  %23 = load i8**, i8*** %6, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %79

28:                                               ; preds = %21
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  store i8 0, i8* %30, align 1
  %31 = load i64*, i64** %7, align 8
  store i64 0, i64* %31, align 8
  store i32 1, i32* %4, align 4
  br label %79

32:                                               ; preds = %16
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 34
  br i1 %37, label %38, label %66

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  %41 = call i64 @strlen(i8* %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 34
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %38
  store i32 0, i32* %4, align 4
  br label %79

53:                                               ; preds = %44
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %9, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = call i8* @unescape(i8* %56, i64 %57, i64* %58)
  %60 = load i8**, i8*** %6, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = icmp eq i8* %62, null
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 1
  store i32 %65, i32* %4, align 4
  br label %79

66:                                               ; preds = %32
  %67 = load i8*, i8** %5, align 8
  %68 = call i8* @OPENSSL_hexstr2buf(i8* %67, i64* %8)
  %69 = load i8**, i8*** %6, align 8
  store i8* %68, i8** %69, align 8
  %70 = call i32 @TEST_ptr(i8* %68)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @TEST_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = call i32 (...) @TEST_openssl_errors()
  store i32 -1, i32* %4, align 4
  br label %79

76:                                               ; preds = %66
  %77 = load i64, i64* %8, align 8
  %78 = load i64*, i64** %7, align 8
  store i64 %77, i64* %78, align 8
  store i32 1, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %72, %53, %52, %28, %27, %13
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @unescape(i8*, i64, i64*) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i8*, i64*) #1

declare dso_local i32 @TEST_info(i8*, i8*) #1

declare dso_local i32 @TEST_openssl_errors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
