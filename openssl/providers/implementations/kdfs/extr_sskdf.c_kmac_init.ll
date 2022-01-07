; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sskdf.c_kmac_init.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sskdf.c_kmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_MAC_PARAM_CUSTOM = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_SIZE = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64, i64, i8**)* @kmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmac_init(i32* %0, i8* %1, i64 %2, i64 %3, i64 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca [2 x i32], align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8** %5, i8*** %13, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %80

18:                                               ; preds = %6
  %19 = load i32, i32* @OSSL_MAC_PARAM_CUSTOM, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @OSSL_PARAM_construct_octet_string(i32 %19, i8* %20, i64 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = call i32 (...) @OSSL_PARAM_construct_end()
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %28 = call i64 @EVP_MAC_CTX_set_params(i32* %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %80

31:                                               ; preds = %18
  %32 = load i64, i64* %11, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %11, align 8
  br label %57

36:                                               ; preds = %31
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %11, align 8
  %42 = icmp eq i64 %41, 20
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %44, 28
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %11, align 8
  %48 = icmp eq i64 %47, 32
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %11, align 8
  %51 = icmp eq i64 %50, 48
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %53, 64
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %80

56:                                               ; preds = %52, %49, %46, %43, %40, %36
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* @OSSL_MAC_PARAM_SIZE, align 4
  %59 = call i32 @OSSL_PARAM_construct_size_t(i32 %58, i64* %11)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %63 = call i64 @EVP_MAC_CTX_set_params(i32* %61, i32* %62)
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %80

66:                                               ; preds = %57
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @EVP_MAX_MD_SIZE, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i64, i64* %11, align 8
  %72 = call i8* @OPENSSL_zalloc(i64 %71)
  %73 = load i8**, i8*** %13, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i8**, i8*** %13, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %80

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %66
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %77, %65, %55, %30, %17
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i64 @EVP_MAC_CTX_set_params(i32*, i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_size_t(i32, i64*) #1

declare dso_local i8* @OPENSSL_zalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
