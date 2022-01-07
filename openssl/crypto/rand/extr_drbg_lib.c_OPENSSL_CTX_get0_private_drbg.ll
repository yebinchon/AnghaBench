; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_OPENSSL_CTX_get0_private_drbg.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_OPENSSL_CTX_get0_private_drbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@drbg_delete_thread_state = common dso_local global i32 0, align 4
@RAND_DRBG_TYPE_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OPENSSL_CTX_get0_private_drbg(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_3__* @drbg_get_global(i32* %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32* @CRYPTO_THREAD_get_local(i32* %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @openssl_ctx_get_concrete(i32* %18)
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @drbg_delete_thread_state, align 4
  %22 = call i32 @ossl_init_thread_start(i32* null, i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %38

25:                                               ; preds = %17
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RAND_DRBG_TYPE_PRIVATE, align 4
  %31 = call i32* @drbg_setup(i32* %26, i32 %29, i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @CRYPTO_THREAD_set_local(i32* %33, i32* %34)
  br label %36

36:                                               ; preds = %25, %11
  %37 = load i32*, i32** %5, align 8
  store i32* %37, i32** %2, align 8
  br label %38

38:                                               ; preds = %36, %24, %10
  %39 = load i32*, i32** %2, align 8
  ret i32* %39
}

declare dso_local %struct.TYPE_3__* @drbg_get_global(i32*) #1

declare dso_local i32* @CRYPTO_THREAD_get_local(i32*) #1

declare dso_local i32* @openssl_ctx_get_concrete(i32*) #1

declare dso_local i32 @ossl_init_thread_start(i32*, i32*, i32) #1

declare dso_local i32* @drbg_setup(i32*, i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
