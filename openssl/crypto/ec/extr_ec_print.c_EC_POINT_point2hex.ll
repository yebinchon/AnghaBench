; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_print.c_EC_POINT_point2hex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_print.c_EC_POINT_point2hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEX_DIGITS = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @EC_POINT_point2hex(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %12, align 8
  store i8* null, i8** %14, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @EC_POINT_point2buf(i32* %17, i32* %18, i32 %19, i8** %14, i32* %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %73

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = mul i64 %26, 2
  %28 = add i64 %27, 2
  %29 = call i8* @OPENSSL_malloc(i64 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i8*, i8** %14, align 8
  %34 = call i32 @OPENSSL_free(i8* %33)
  store i8* null, i8** %5, align 8
  br label %73

35:                                               ; preds = %25
  %36 = load i8*, i8** %10, align 8
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %14, align 8
  store i8* %37, i8** %15, align 8
  %38 = load i64, i64* %12, align 8
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %65, %35
  %40 = load i64, i64* %13, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = load i8*, i8** %15, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %15, align 8
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, i32* %16, align 4
  %47 = load i8**, i8*** @HEX_DIGITS, align 8
  %48 = load i32, i32* %16, align 4
  %49 = ashr i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %52 to i8
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %11, align 8
  store i8 %53, i8* %54, align 1
  %56 = load i8**, i8*** @HEX_DIGITS, align 8
  %57 = load i32, i32* %16, align 4
  %58 = and i32 %57, 15
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = ptrtoint i8* %61 to i8
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %11, align 8
  store i8 %62, i8* %63, align 1
  br label %65

65:                                               ; preds = %42
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %13, align 8
  br label %39

68:                                               ; preds = %39
  %69 = load i8*, i8** %11, align 8
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @OPENSSL_free(i8* %70)
  %72 = load i8*, i8** %10, align 8
  store i8* %72, i8** %5, align 8
  br label %73

73:                                               ; preds = %68, %32, %24
  %74 = load i8*, i8** %5, align 8
  ret i8* %74
}

declare dso_local i64 @EC_POINT_point2buf(i32*, i32*, i32, i8**, i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
