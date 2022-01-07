; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_init.c_OPENSSL_cleanup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_init.c_OPENSSL_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 (...)* }

@base_inited = common dso_local global i64 0, align 8
@stopped = common dso_local global i32 0, align 4
@stop_handlers = common dso_local global %struct.TYPE_4__* null, align 8
@init_lock = common dso_local global i32* null, align 8
@zlib_inited = common dso_local global i64 0, align 8
@INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"OPENSSL_cleanup: comp_zlib_cleanup_int()\0A\00", align 1
@async_inited = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"OPENSSL_cleanup: async_deinit()\0A\00", align 1
@load_crypto_strings_inited = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"OPENSSL_cleanup: err_free_strings_int()\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"OPENSSL_cleanup: rand_cleanup_int()\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"OPENSSL_cleanup: conf_modules_free_int()\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"OPENSSL_cleanup: engine_cleanup_int()\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"OPENSSL_cleanup: ossl_store_cleanup_int()\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"OPENSSL_cleanup: openssl_ctx_default_deinit()\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"OPENSSL_cleanup: bio_cleanup()\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"OPENSSL_cleanup: evp_cleanup_int()\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"OPENSSL_cleanup: obj_cleanup_int()\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"OPENSSL_cleanup: err_int()\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"OPENSSL_cleanup: CRYPTO_secure_malloc_done()\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"OPENSSL_cleanup: OSSL_CMP_log_close()\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"OPENSSL_cleanup: ossl_trace_cleanup()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OPENSSL_cleanup() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = load i64, i64* @base_inited, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %88

6:                                                ; preds = %0
  %7 = load i32, i32* @stopped, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %88

10:                                               ; preds = %6
  store i32 1, i32* @stopped, align 4
  %11 = call i32 (...) @OPENSSL_thread_stop()
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stop_handlers, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %1, align 8
  br label %13

13:                                               ; preds = %16, %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32 (...)*, i32 (...)** %18, align 8
  %20 = call i32 (...) %19()
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %2, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %1, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = call i32 @OPENSSL_free(%struct.TYPE_4__* %25)
  br label %13

27:                                               ; preds = %13
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @stop_handlers, align 8
  %28 = load i32*, i32** @init_lock, align 8
  %29 = call i32 @CRYPTO_THREAD_lock_free(i32* %28)
  store i32* null, i32** @init_lock, align 8
  %30 = load i64, i64* @zlib_inited, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @INIT, align 4
  %34 = call i32 @OSSL_TRACE(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 (...) @comp_zlib_cleanup_int()
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i64, i64* @async_inited, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @INIT, align 4
  %41 = call i32 @OSSL_TRACE(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 (...) @async_deinit()
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i64, i64* @load_crypto_strings_inited, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @INIT, align 4
  %48 = call i32 @OSSL_TRACE(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 (...) @err_free_strings_int()
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* @INIT, align 4
  %52 = call i32 @OSSL_TRACE(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 (...) @rand_cleanup_int()
  %54 = load i32, i32* @INIT, align 4
  %55 = call i32 @OSSL_TRACE(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 (...) @conf_modules_free_int()
  %57 = load i32, i32* @INIT, align 4
  %58 = call i32 @OSSL_TRACE(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %59 = call i32 (...) @engine_cleanup_int()
  %60 = load i32, i32* @INIT, align 4
  %61 = call i32 @OSSL_TRACE(i32 %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %62 = call i32 (...) @ossl_store_cleanup_int()
  %63 = load i32, i32* @INIT, align 4
  %64 = call i32 @OSSL_TRACE(i32 %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %65 = call i32 (...) @openssl_ctx_default_deinit()
  %66 = call i32 (...) @ossl_cleanup_thread()
  %67 = load i32, i32* @INIT, align 4
  %68 = call i32 @OSSL_TRACE(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %69 = call i32 (...) @bio_cleanup()
  %70 = load i32, i32* @INIT, align 4
  %71 = call i32 @OSSL_TRACE(i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %72 = call i32 (...) @evp_cleanup_int()
  %73 = load i32, i32* @INIT, align 4
  %74 = call i32 @OSSL_TRACE(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %75 = call i32 (...) @obj_cleanup_int()
  %76 = load i32, i32* @INIT, align 4
  %77 = call i32 @OSSL_TRACE(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %78 = call i32 (...) @err_cleanup()
  %79 = load i32, i32* @INIT, align 4
  %80 = call i32 @OSSL_TRACE(i32 %79, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %81 = call i32 (...) @CRYPTO_secure_malloc_done()
  %82 = load i32, i32* @INIT, align 4
  %83 = call i32 @OSSL_TRACE(i32 %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %84 = call i32 (...) @OSSL_CMP_log_close()
  %85 = load i32, i32* @INIT, align 4
  %86 = call i32 @OSSL_TRACE(i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %87 = call i32 (...) @ossl_trace_cleanup()
  store i64 0, i64* @base_inited, align 8
  br label %88

88:                                               ; preds = %50, %9, %5
  ret void
}

declare dso_local i32 @OPENSSL_thread_stop(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_4__*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

declare dso_local i32 @OSSL_TRACE(i32, i8*) #1

declare dso_local i32 @comp_zlib_cleanup_int(...) #1

declare dso_local i32 @async_deinit(...) #1

declare dso_local i32 @err_free_strings_int(...) #1

declare dso_local i32 @rand_cleanup_int(...) #1

declare dso_local i32 @conf_modules_free_int(...) #1

declare dso_local i32 @engine_cleanup_int(...) #1

declare dso_local i32 @ossl_store_cleanup_int(...) #1

declare dso_local i32 @openssl_ctx_default_deinit(...) #1

declare dso_local i32 @ossl_cleanup_thread(...) #1

declare dso_local i32 @bio_cleanup(...) #1

declare dso_local i32 @evp_cleanup_int(...) #1

declare dso_local i32 @obj_cleanup_int(...) #1

declare dso_local i32 @err_cleanup(...) #1

declare dso_local i32 @CRYPTO_secure_malloc_done(...) #1

declare dso_local i32 @OSSL_CMP_log_close(...) #1

declare dso_local i32 @ossl_trace_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
