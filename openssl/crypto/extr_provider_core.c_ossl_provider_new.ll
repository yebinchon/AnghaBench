; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_ossl_provider_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_ossl_provider_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.provider_store_st*, i32* }
%struct.provider_store_st = type { i32, i32 }

@ERR_LIB_CRYPTO = common dso_local global i32 0, align 4
@CRYPTO_R_PROVIDER_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@CRYPTO_F_OSSL_PROVIDER_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ossl_provider_new(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.provider_store_st*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.provider_store_st* null, %struct.provider_store_st** %10, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.provider_store_st* @get_provider_store(i32* %12)
  store %struct.provider_store_st* %13, %struct.provider_store_st** %10, align 8
  %14 = icmp eq %struct.provider_store_st* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %82

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_8__* @ossl_provider_find(i32* %17, i8* %18, i32 %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %11, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %24 = call i32 @ossl_provider_free(%struct.TYPE_8__* %23)
  %25 = load i32, i32* @ERR_LIB_CRYPTO, align 4
  %26 = load i32, i32* @CRYPTO_R_PROVIDER_ALREADY_EXISTS, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @ERR_raise_data(i32 %25, i32 %26, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %27)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %82

29:                                               ; preds = %16
  %30 = load i8*, i8** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call %struct.TYPE_8__* @provider_new(i8* %30, i32* %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %11, align 8
  %33 = icmp eq %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %82

35:                                               ; preds = %29
  %36 = load %struct.provider_store_st*, %struct.provider_store_st** %10, align 8
  %37 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CRYPTO_THREAD_write_lock(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = call i32 @ossl_provider_up_ref(%struct.TYPE_8__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = call i32 @ossl_provider_free(%struct.TYPE_8__* %44)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  br label %69

46:                                               ; preds = %35
  %47 = load %struct.provider_store_st*, %struct.provider_store_st** %10, align 8
  %48 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = call i64 @sk_OSSL_PROVIDER_push(i32 %49, %struct.TYPE_8__* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %55 = call i32 @ossl_provider_free(%struct.TYPE_8__* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = call i32 @ossl_provider_free(%struct.TYPE_8__* %56)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  br label %68

58:                                               ; preds = %46
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.provider_store_st*, %struct.provider_store_st** %10, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store %struct.provider_store_st* %62, %struct.provider_store_st** %64, align 8
  %65 = call i32 (...) @ERR_get_next_error_library()
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %58, %53
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.provider_store_st*, %struct.provider_store_st** %10, align 8
  %71 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CRYPTO_THREAD_unlock(i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = icmp eq %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @CRYPTO_F_OSSL_PROVIDER_NEW, align 4
  %78 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %79 = call i32 @CRYPTOerr(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %5, align 8
  br label %82

82:                                               ; preds = %80, %34, %22, %15
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %83
}

declare dso_local %struct.provider_store_st* @get_provider_store(i32*) #1

declare dso_local %struct.TYPE_8__* @ossl_provider_find(i32*, i8*, i32) #1

declare dso_local i32 @ossl_provider_free(%struct.TYPE_8__*) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @provider_new(i8*, i32*) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @ossl_provider_up_ref(%struct.TYPE_8__*) #1

declare dso_local i64 @sk_OSSL_PROVIDER_push(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ERR_get_next_error_library(...) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
