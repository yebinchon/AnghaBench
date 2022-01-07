; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_ossl_param_bld_push_utf8_string.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_ossl_param_bld_push_utf8_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@INT_MAX = common dso_local global i64 0, align 8
@CRYPTO_F_OSSL_PARAM_BLD_PUSH_UTF8_STRING = common dso_local global i32 0, align 4
@CRYPTO_R_STRING_TOO_LONG = common dso_local global i32 0, align 4
@OSSL_PARAM_UTF8_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_param_bld_push_utf8_string(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  br label %27

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @INT_MAX, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @CRYPTO_F_OSSL_PARAM_BLD_PUSH_UTF8_STRING, align 4
  %24 = load i32, i32* @CRYPTO_R_STRING_TOO_LONG, align 4
  %25 = call i32 @CRYPTOerr(i32 %23, i32 %24)
  store i32 0, i32* %5, align 4
  br label %41

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @OSSL_PARAM_UTF8_STRING, align 4
  %33 = call %struct.TYPE_3__* @param_push(i32* %28, i8* %29, i64 %30, i64 %31, i32 %32, i32 0)
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %10, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %35 = icmp eq %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %36, %22
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local %struct.TYPE_3__* @param_push(i32*, i8*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
