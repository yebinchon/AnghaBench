; ModuleID = '/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_err_cleanup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_err_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_err_thread_local = common dso_local global i64 0, align 8
@err_thread_local = common dso_local global i32 0, align 4
@err_string_lock = common dso_local global i32* null, align 8
@int_error_hash = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @err_cleanup() #0 {
  %1 = load i64, i64* @set_err_thread_local, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @CRYPTO_THREAD_cleanup_local(i32* @err_thread_local)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32*, i32** @err_string_lock, align 8
  %7 = call i32 @CRYPTO_THREAD_lock_free(i32* %6)
  store i32* null, i32** @err_string_lock, align 8
  %8 = load i32*, i32** @int_error_hash, align 8
  %9 = call i32 @lh_ERR_STRING_DATA_free(i32* %8)
  store i32* null, i32** @int_error_hash, align 8
  ret void
}

declare dso_local i32 @CRYPTO_THREAD_cleanup_local(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

declare dso_local i32 @lh_ERR_STRING_DATA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
