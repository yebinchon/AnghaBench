; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_sess.c_SSL_SESSION_new.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_sess.c_SSL_SESSION_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i32*, i32 }

@OPENSSL_INIT_LOAD_SSL_STRINGS = common dso_local global i32 0, align 4
@SSL_F_SSL_SESSION_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CRYPTO_EX_INDEX_SSL_SESSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @SSL_SESSION_new() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load i32, i32* @OPENSSL_INIT_LOAD_SSL_STRINGS, align 4
  %4 = call i32 @OPENSSL_init_ssl(i32 %3, i32* null)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %54

7:                                                ; preds = %0
  %8 = call %struct.TYPE_6__* @OPENSSL_zalloc(i32 40)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @SSL_F_SSL_SESSION_NEW, align 4
  %13 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %14 = call i32 @SSLerr(i32 %12, i32 %13)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %54

15:                                               ; preds = %7
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32 304, i32* %21, align 8
  %22 = call i64 @time(i32* null)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %15
  %33 = load i32, i32* @SSL_F_SSL_SESSION_NEW, align 4
  %34 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %35 = call i32 @SSLerr(i32 %33, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = call i32 @OPENSSL_free(%struct.TYPE_6__* %36)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %54

38:                                               ; preds = %15
  %39 = load i32, i32* @CRYPTO_EX_INDEX_SSL_SESSION, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  %43 = call i32 @CRYPTO_new_ex_data(i32 %39, %struct.TYPE_6__* %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @CRYPTO_THREAD_lock_free(i32* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = call i32 @OPENSSL_free(%struct.TYPE_6__* %50)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %54

52:                                               ; preds = %38
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %1, align 8
  br label %54

54:                                               ; preds = %52, %45, %32, %11, %6
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %55
}

declare dso_local i32 @OPENSSL_init_ssl(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_6__*) #1

declare dso_local i32 @CRYPTO_new_ex_data(i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
