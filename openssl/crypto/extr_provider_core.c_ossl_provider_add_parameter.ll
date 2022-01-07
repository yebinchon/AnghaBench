; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_ossl_provider_add_parameter.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_ossl_provider_add_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }

@CRYPTO_F_OSSL_PROVIDER_ADD_PARAMETER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_provider_add_parameter(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %9 = call %struct.TYPE_8__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %8, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = call i32* (...) @sk_INFOPAIR_new_null()
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = icmp ne i32* %17, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %16, %11
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @OPENSSL_strdup(i8* %22)
  %24 = bitcast i8* %23 to %struct.TYPE_8__*
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %26, align 8
  %27 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @OPENSSL_strdup(i8* %29)
  %31 = bitcast i8* %30 to %struct.TYPE_8__*
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %33, align 8
  %34 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = call i64 @sk_INFOPAIR_push(i32* %38, %struct.TYPE_8__* %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %61

43:                                               ; preds = %35, %28, %21, %16, %3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @OPENSSL_free(%struct.TYPE_8__* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i32 @OPENSSL_free(%struct.TYPE_8__* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = call i32 @OPENSSL_free(%struct.TYPE_8__* %55)
  br label %57

57:                                               ; preds = %46, %43
  %58 = load i32, i32* @CRYPTO_F_OSSL_PROVIDER_ADD_PARAMETER, align 4
  %59 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %60 = call i32 @CRYPTOerr(i32 %58, i32 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %42
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_8__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @sk_INFOPAIR_new_null(...) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i64 @sk_INFOPAIR_push(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_8__*) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
