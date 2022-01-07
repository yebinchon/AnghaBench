; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_initthread.c_init_get_thread_local.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_initthread.c_init_get_thread_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (i32*, i32, i32)* @init_get_thread_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @init_get_thread_local(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32** @CRYPTO_THREAD_get_local(i32* %9)
  store i32** %10, i32*** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = load i32**, i32*** %8, align 8
  %15 = icmp eq i32** %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = call i32** @OPENSSL_zalloc(i32 8)
  store i32** %17, i32*** %8, align 8
  %18 = icmp eq i32** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32** null, i32*** %4, align 8
  br label %48

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32**, i32*** %8, align 8
  %23 = call i32 @CRYPTO_THREAD_set_local(i32* %21, i32** %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32**, i32*** %8, align 8
  %27 = call i32 @OPENSSL_free(i32** %26)
  store i32** null, i32*** %4, align 8
  br label %48

28:                                               ; preds = %20
  %29 = load i32**, i32*** %8, align 8
  %30 = call i32 @init_thread_push_handlers(i32** %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @CRYPTO_THREAD_set_local(i32* %33, i32** null)
  %35 = load i32**, i32*** %8, align 8
  %36 = call i32 @OPENSSL_free(i32** %35)
  store i32** null, i32*** %4, align 8
  br label %48

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %13
  br label %46

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @CRYPTO_THREAD_set_local(i32* %43, i32** null)
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i32**, i32*** %8, align 8
  store i32** %47, i32*** %4, align 8
  br label %48

48:                                               ; preds = %46, %32, %25, %19
  %49 = load i32**, i32*** %4, align 8
  ret i32** %49
}

declare dso_local i32** @CRYPTO_THREAD_get_local(i32*) #1

declare dso_local i32** @OPENSSL_zalloc(i32) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, i32**) #1

declare dso_local i32 @OPENSSL_free(i32**) #1

declare dso_local i32 @init_thread_push_handlers(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
