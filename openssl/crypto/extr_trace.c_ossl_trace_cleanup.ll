; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_trace.c_ossl_trace_cleanup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_trace.c_ossl_trace_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_TRACE_CATEGORY_NUM = common dso_local global i32 0, align 4
@OSSL_TRACE_CATEGORY_TRACE = common dso_local global i32 0, align 4
@trace_attach_cb = common dso_local global i32 0, align 4
@trace_detach_cb = common dso_local global i32 0, align 4
@trace_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ossl_trace_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32* null, i32** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @OSSL_TRACE_CATEGORY_NUM, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @OSSL_TRACE_CATEGORY_TRACE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %19

14:                                               ; preds = %9
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @trace_attach_cb, align 4
  %17 = load i32, i32* @trace_detach_cb, align 4
  %18 = call i32 @set_trace_data(i32 %15, i32 0, i32** %2, i8** %3, i8** %4, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* @OSSL_TRACE_CATEGORY_TRACE, align 4
  %24 = load i32, i32* @trace_attach_cb, align 4
  %25 = load i32, i32* @trace_detach_cb, align 4
  %26 = call i32 @set_trace_data(i32 %23, i32 0, i32** %2, i8** %3, i8** %4, i32 %24, i32 %25)
  %27 = load i32, i32* @trace_lock, align 4
  %28 = call i32 @CRYPTO_THREAD_lock_free(i32 %27)
  ret void
}

declare dso_local i32 @set_trace_data(i32, i32, i32**, i8**, i8**, i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
