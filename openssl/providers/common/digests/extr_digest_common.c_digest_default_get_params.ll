; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/digests/extr_digest_common.c_digest_default_get_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/digests/extr_digest_common.c_digest_default_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_DIGEST_PARAM_BLOCK_SIZE = common dso_local global i32 0, align 4
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_FAILED_TO_SET_PARAMETER = common dso_local global i32 0, align 4
@OSSL_DIGEST_PARAM_SIZE = common dso_local global i32 0, align 4
@OSSL_DIGEST_PARAM_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digest_default_get_params(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @OSSL_DIGEST_PARAM_BLOCK_SIZE, align 4
  %13 = call i32* @OSSL_PARAM_locate(i32* %11, i32 %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i32*, i32** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @OSSL_PARAM_set_size_t(i32* %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ERR_LIB_PROV, align 4
  %23 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %24 = call i32 @ERR_raise(i32 %22, i32 %23)
  store i32 0, i32* %5, align 4
  br label %56

25:                                               ; preds = %16, %4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @OSSL_DIGEST_PARAM_SIZE, align 4
  %28 = call i32* @OSSL_PARAM_locate(i32* %26, i32 %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @OSSL_PARAM_set_size_t(i32* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ERR_LIB_PROV, align 4
  %38 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %39 = call i32 @ERR_raise(i32 %37, i32 %38)
  store i32 0, i32* %5, align 4
  br label %56

40:                                               ; preds = %31, %25
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @OSSL_DIGEST_PARAM_FLAGS, align 4
  %43 = call i32* @OSSL_PARAM_locate(i32* %41, i32 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @OSSL_PARAM_set_ulong(i32* %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ERR_LIB_PROV, align 4
  %53 = load i32, i32* @PROV_R_FAILED_TO_SET_PARAMETER, align 4
  %54 = call i32 @ERR_raise(i32 %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %56

55:                                               ; preds = %46, %40
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %51, %36, %21
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32* @OSSL_PARAM_locate(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(i32*, i64) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_set_ulong(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
