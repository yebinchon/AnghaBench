; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/extr_provider_util.c_ossl_prov_cipher_load_from_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/extr_provider_util.c_ossl_prov_cipher_load_from_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@OSSL_ALG_PARAM_CIPHER = common dso_local global i32 0, align 4
@OSSL_PARAM_UTF8_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_prov_cipher_load_from_params(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = call i32 @load_common(%struct.TYPE_9__* %10, i8** %9, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = load i32, i32* @OSSL_ALG_PARAM_CIPHER, align 4
  %19 = call %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__* %17, i32 %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = icmp eq %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %62

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OSSL_PARAM_UTF8_STRING, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %62

30:                                               ; preds = %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @EVP_CIPHER_free(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32* @EVP_CIPHER_fetch(i32* %35, i32 %38, i8* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32* %40, i32** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %30
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @EVP_get_cipherbyname(i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  br label %56

56:                                               ; preds = %49, %30
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %29, %22, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @load_common(%struct.TYPE_9__*, i8**, i32*) #1

declare dso_local %struct.TYPE_9__* @OSSL_PARAM_locate_const(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @EVP_CIPHER_free(i32*) #1

declare dso_local i32* @EVP_CIPHER_fetch(i32*, i32, i8*) #1

declare dso_local i32* @EVP_get_cipherbyname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
