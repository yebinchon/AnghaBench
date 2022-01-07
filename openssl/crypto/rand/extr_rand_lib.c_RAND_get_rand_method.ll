; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_lib.c_RAND_get_rand_method.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_rand_lib.c_RAND_get_rand_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rand_init = common dso_local global i32 0, align 4
@do_rand_init = common dso_local global i32 0, align 4
@rand_meth_lock = common dso_local global i32 0, align 4
@default_RAND_meth = common dso_local global i32* null, align 8
@funct_ref = common dso_local global i32* null, align 8
@rand_meth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RAND_get_rand_method() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %4 = load i32, i32* @do_rand_init, align 4
  %5 = call i32 @RUN_ONCE(i32* @rand_init, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %32

8:                                                ; preds = %0
  %9 = load i32, i32* @rand_meth_lock, align 4
  %10 = call i32 @CRYPTO_THREAD_write_lock(i32 %9)
  %11 = load i32*, i32** @default_RAND_meth, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = call i32* (...) @ENGINE_get_default_RAND()
  store i32* %14, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @ENGINE_get_RAND(i32* %17)
  store i32* %18, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  store i32* %21, i32** @funct_ref, align 8
  %22 = load i32*, i32** %2, align 8
  store i32* %22, i32** @default_RAND_meth, align 8
  br label %26

23:                                               ; preds = %16, %13
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @ENGINE_finish(i32* %24)
  store i32* @rand_meth, i32** @default_RAND_meth, align 8
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %8
  %28 = load i32*, i32** @default_RAND_meth, align 8
  store i32* %28, i32** %2, align 8
  %29 = load i32, i32* @rand_meth_lock, align 4
  %30 = call i32 @CRYPTO_THREAD_unlock(i32 %29)
  %31 = load i32*, i32** %2, align 8
  store i32* %31, i32** %1, align 8
  br label %32

32:                                               ; preds = %27, %7
  %33 = load i32*, i32** %1, align 8
  ret i32* %33
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32* @ENGINE_get_default_RAND(...) #1

declare dso_local i32* @ENGINE_get_RAND(i32*) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
