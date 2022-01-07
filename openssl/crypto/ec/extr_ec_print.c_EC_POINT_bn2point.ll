; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_print.c_EC_POINT_bn2point.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_print.c_EC_POINT_bn2point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EC_F_EC_POINT_BN2POINT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EC_POINT_bn2point(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @BN_num_bytes(i32* %13)
  store i64 %14, i64* %10, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i64 1, i64* %10, align 8
  br label %17

17:                                               ; preds = %16, %4
  %18 = load i64, i64* %10, align 8
  %19 = call i8* @OPENSSL_malloc(i64 %18)
  store i8* %19, i8** %11, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @EC_F_EC_POINT_BN2POINT, align 4
  %23 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %24 = call i32 @ECerr(i32 %22, i32 %23)
  store i32* null, i32** %5, align 8
  br label %69

25:                                               ; preds = %17
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @BN_bn2binpad(i32* %26, i8* %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @OPENSSL_free(i8* %32)
  store i32* null, i32** %5, align 8
  br label %69

34:                                               ; preds = %25
  %35 = load i32*, i32** %8, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @EC_POINT_new(i32* %38)
  store i32* %39, i32** %12, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @OPENSSL_free(i8* %42)
  store i32* null, i32** %5, align 8
  br label %69

44:                                               ; preds = %37
  br label %47

45:                                               ; preds = %34
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %12, align 8
  br label %47

47:                                               ; preds = %45, %44
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @EC_POINT_oct2point(i32* %48, i32* %49, i8* %50, i64 %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = load i32*, i32** %12, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @EC_POINT_clear_free(i32* %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @OPENSSL_free(i8* %63)
  store i32* null, i32** %5, align 8
  br label %69

65:                                               ; preds = %47
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @OPENSSL_free(i8* %66)
  %68 = load i32*, i32** %12, align 8
  store i32* %68, i32** %5, align 8
  br label %69

69:                                               ; preds = %65, %62, %41, %31, %21
  %70 = load i32*, i32** %5, align 8
  ret i32* %70
}

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_bn2binpad(i32*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_oct2point(i32*, i32*, i8*, i64, i32*) #1

declare dso_local i32 @EC_POINT_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
