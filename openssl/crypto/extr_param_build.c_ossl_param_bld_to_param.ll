; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_ossl_param_bld_to_param.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_ossl_param_bld_to_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32* }
%struct.TYPE_9__ = type { i32, i64, i64 }

@ALIGN_SIZE = common dso_local global i64 0, align 8
@CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM = common dso_local global i32 0, align 4
@CRYPTO_R_SECURE_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@OSSL_PARAM_ALLOCATED_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ossl_param_bld_to_param(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* null, i32** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 1, %13
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 24
  %17 = trunc i64 %16 to i32
  %18 = call i64 @bytes_to_blocks(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* @ALIGN_SIZE, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  %25 = mul i64 %19, %24
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* @ALIGN_SIZE, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %26, %29
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = load i64, i64* %10, align 8
  %35 = call i32* @OPENSSL_secure_malloc(i64 %34)
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM, align 4
  %40 = load i32, i32* @CRYPTO_R_SECURE_MALLOC_FAILURE, align 4
  %41 = call i32 @CRYPTOerr(i32 %39, i32 %40)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %74

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i64, i64* %9, align 8
  %45 = call %struct.TYPE_10__* @OPENSSL_malloc(i64 %44)
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %6, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = icmp eq %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM, align 4
  %50 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %51 = call i32 @CRYPTOerr(i32 %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @OPENSSL_secure_free(i32* %52)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %74

54:                                               ; preds = %43
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = bitcast %struct.TYPE_10__* %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 %55
  store i32* %58, i32** %4, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call %struct.TYPE_10__* @param_bld_convert(%struct.TYPE_9__* %59, %struct.TYPE_10__* %60, i32* %61, i32* %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load i32, i32* @OSSL_PARAM_ALLOCATED_END, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %2, align 8
  br label %74

74:                                               ; preds = %54, %48, %38
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %75
}

declare dso_local i64 @bytes_to_blocks(i32) #1

declare dso_local i32* @OPENSSL_secure_malloc(i64) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local %struct.TYPE_10__* @OPENSSL_malloc(i64) #1

declare dso_local i32 @OPENSSL_secure_free(i32*) #1

declare dso_local %struct.TYPE_10__* @param_bld_convert(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
