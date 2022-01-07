; ModuleID = '/home/carl/AnghaBench/openssl/crypto/async/extr_async.c_async_ctx_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/async/extr_async.c_async_ctx_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32 }

@async_delete_thread_state = common dso_local global i32 0, align 4
@ASYNC_F_ASYNC_CTX_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ctxkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @async_ctx_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @async_ctx_new() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load i32, i32* @async_delete_thread_state, align 4
  %4 = call i32 @ossl_init_thread_start(i32* null, i32* null, i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %32

7:                                                ; preds = %0
  %8 = call %struct.TYPE_6__* @OPENSSL_malloc(i32 24)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @ASYNC_F_ASYNC_CTX_NEW, align 4
  %13 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %14 = call i32 @ASYNCerr(i32 %12, i32 %13)
  br label %29

15:                                               ; preds = %7
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = call i32 @async_fibre_init_dispatcher(i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = call i32 @CRYPTO_THREAD_set_local(i32* @ctxkey, %struct.TYPE_6__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %29

27:                                               ; preds = %15
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %1, align 8
  br label %32

29:                                               ; preds = %26, %11
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = call i32 @OPENSSL_free(%struct.TYPE_6__* %30)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %32

32:                                               ; preds = %29, %27, %6
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %33
}

declare dso_local i32 @ossl_init_thread_start(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ASYNCerr(i32, i32) #1

declare dso_local i32 @async_fibre_init_dispatcher(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
