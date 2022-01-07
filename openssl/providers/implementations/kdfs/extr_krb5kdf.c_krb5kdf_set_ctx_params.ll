; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_krb5kdf.c_krb5kdf_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_krb5kdf.c_krb5kdf_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_CONSTANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @krb5kdf_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5kdf_set_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @ossl_prov_cipher_load_from_params(i32* %16, i32* %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %25 = call i32* @OSSL_PARAM_locate_const(i32* %23, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @krb5kdf_set_membuf(i32* %29, i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %53

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @OSSL_KDF_PARAM_CONSTANT, align 4
  %40 = call i32* @OSSL_PARAM_locate_const(i32* %38, i32 %39)
  store i32* %40, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @krb5kdf_set_membuf(i32* %44, i32* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %53

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %37
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %50, %35, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @ossl_prov_cipher_load_from_params(i32*, i32*, i32*) #1

declare dso_local i32* @OSSL_PARAM_locate_const(i32*, i32) #1

declare dso_local i32 @krb5kdf_set_membuf(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
