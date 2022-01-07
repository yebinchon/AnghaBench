; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_threadstest.c_thread_local_thread_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_threadstest.c_thread_local_thread_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_local_key = common dso_local global i32 0, align 4
@destructor_run_count = common dso_local global i32 0, align 4
@thread_local_thread_cb_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @thread_local_thread_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_local_thread_cb() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @CRYPTO_THREAD_get_local(i32* @thread_local_key)
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @TEST_ptr_null(i8* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = call i32 @CRYPTO_THREAD_set_local(i32* @thread_local_key, i32* @destructor_run_count)
  %8 = call i32 @TEST_true(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %0
  br label %18

11:                                               ; preds = %6
  %12 = call i8* @CRYPTO_THREAD_get_local(i32* @thread_local_key)
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @TEST_ptr_eq(i8* %13, i32* @destructor_run_count)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %18

17:                                               ; preds = %11
  store i32 1, i32* @thread_local_thread_cb_ok, align 4
  br label %18

18:                                               ; preds = %17, %16, %10
  ret void
}

declare dso_local i8* @CRYPTO_THREAD_get_local(i32*) #1

declare dso_local i32 @TEST_ptr_null(i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, i32*) #1

declare dso_local i32 @TEST_ptr_eq(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
