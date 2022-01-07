; ModuleID = '/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_ERR_get_next_error_library.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_ERR_get_next_error_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@err_string_init = common dso_local global i32 0, align 4
@do_err_strings_init = common dso_local global i32 0, align 4
@err_string_lock = common dso_local global i32 0, align 4
@int_err_library_number = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ERR_get_next_error_library() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @do_err_strings_init, align 4
  %4 = call i32 @RUN_ONCE(i32* @err_string_init, i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %15

7:                                                ; preds = %0
  %8 = load i32, i32* @err_string_lock, align 4
  %9 = call i32 @CRYPTO_THREAD_write_lock(i32 %8)
  %10 = load i32, i32* @int_err_library_number, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @int_err_library_number, align 4
  store i32 %10, i32* %2, align 4
  %12 = load i32, i32* @err_string_lock, align 4
  %13 = call i32 @CRYPTO_THREAD_unlock(i32 %12)
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %7, %6
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
