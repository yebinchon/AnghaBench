; ModuleID = '/home/carl/AnghaBench/openssl/crypto/async/extr_async.c_ASYNC_init_thread.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/async/extr_async.c_ASYNC_init_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32* }
%struct.TYPE_11__ = type { i32*, i32 }

@ASYNC_F_ASYNC_INIT_THREAD = common dso_local global i32 0, align 4
@ASYNC_R_INVALID_POOL_SIZE = common dso_local global i32 0, align 4
@OPENSSL_INIT_ASYNC = common dso_local global i32 0, align 4
@async_delete_thread_state = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@poolkey = common dso_local global i32 0, align 4
@ASYNC_R_FAILED_TO_SET_POOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASYNC_init_thread(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @ASYNC_F_ASYNC_INIT_THREAD, align 4
  %14 = load i32, i32* @ASYNC_R_INVALID_POOL_SIZE, align 4
  %15 = call i32 @ASYNCerr(i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %100

16:                                               ; preds = %2
  %17 = load i32, i32* @OPENSSL_INIT_ASYNC, align 4
  %18 = call i32 @OPENSSL_init_crypto(i32 %17, i32* null)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %100

21:                                               ; preds = %16
  %22 = load i32, i32* @async_delete_thread_state, align 4
  %23 = call i32 @ossl_init_thread_start(i32* null, i32* null, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %100

26:                                               ; preds = %21
  %27 = call %struct.TYPE_10__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %6, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @ASYNC_F_ASYNC_INIT_THREAD, align 4
  %32 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %33 = call i32 @ASYNCerr(i32 %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %100

34:                                               ; preds = %26
  %35 = load i64, i64* %5, align 8
  %36 = call i32* @sk_ASYNC_JOB_new_reserve(i32* null, i64 %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i32, i32* @ASYNC_F_ASYNC_INIT_THREAD, align 4
  %45 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %46 = call i32 @ASYNCerr(i32 %44, i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = call i32 @OPENSSL_free(%struct.TYPE_10__* %47)
  store i32 0, i32* %3, align 4
  br label %100

49:                                               ; preds = %34
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %69, %49
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %5, align 8
  %56 = icmp ne i64 %54, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = call %struct.TYPE_11__* (...) @async_job_new()
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %8, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = icmp eq %struct.TYPE_11__* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = call i32 @async_fibre_makecontext(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61, %57
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = call i32 @async_job_free(%struct.TYPE_11__* %67)
  br label %79

69:                                               ; preds = %61
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = call i32 @sk_ASYNC_JOB_push(i32* %74, %struct.TYPE_11__* %75)
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %53

79:                                               ; preds = %66, %53
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = call i32 @CRYPTO_THREAD_set_local(i32* @poolkey, %struct.TYPE_10__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @ASYNC_F_ASYNC_INIT_THREAD, align 4
  %88 = load i32, i32* @ASYNC_R_FAILED_TO_SET_POOL, align 4
  %89 = call i32 @ASYNCerr(i32 %87, i32 %88)
  br label %91

90:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %100

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = call i32 @async_empty_pool(%struct.TYPE_10__* %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @sk_ASYNC_JOB_free(i32* %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = call i32 @OPENSSL_free(%struct.TYPE_10__* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %91, %90, %43, %30, %25, %20, %12
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @ASYNCerr(i32, i32) #1

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i32 @ossl_init_thread_start(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @sk_ASYNC_JOB_new_reserve(i32*, i64) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @async_job_new(...) #1

declare dso_local i32 @async_fibre_makecontext(i32*) #1

declare dso_local i32 @async_job_free(%struct.TYPE_11__*) #1

declare dso_local i32 @sk_ASYNC_JOB_push(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @async_empty_pool(%struct.TYPE_10__*) #1

declare dso_local i32 @sk_ASYNC_JOB_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
