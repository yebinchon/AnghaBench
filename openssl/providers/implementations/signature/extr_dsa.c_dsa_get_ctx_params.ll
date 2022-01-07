; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/signature/extr_dsa.c_dsa_get_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/signature/extr_dsa.c_dsa_get_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32 }

@OSSL_SIGNATURE_PARAM_DIGEST_SIZE = common dso_local global i32 0, align 4
@OSSL_SIGNATURE_PARAM_DIGEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsa_get_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_get_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %57

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @OSSL_SIGNATURE_PARAM_DIGEST_SIZE, align 4
  %19 = call i32* @OSSL_PARAM_locate(i32* %17, i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OSSL_PARAM_set_size_t(i32* %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %57

30:                                               ; preds = %22, %16
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @OSSL_SIGNATURE_PARAM_DIGEST, align 4
  %33 = call i32* @OSSL_PARAM_locate(i32* %31, i32 %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  br label %51

46:                                               ; preds = %36
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @EVP_MD_name(i32* %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i32 [ %45, %42 ], [ %50, %46 ]
  %53 = call i32 @OSSL_PARAM_set_utf8_string(i32* %37, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %51, %30
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %29, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32* @OSSL_PARAM_locate(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_size_t(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_set_utf8_string(i32*, i32) #1

declare dso_local i32 @EVP_MD_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
