; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_list.c_ENGINE_remove.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_list.c_ENGINE_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENGINE_F_ENGINE_REMOVE = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@global_engine_lock = common dso_local global i32 0, align 4
@ENGINE_R_INTERNAL_LIST_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ENGINE_remove(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @ENGINE_F_ENGINE_REMOVE, align 4
  %9 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %10 = call i32 @ENGINEerr(i32 %8, i32 %9)
  store i32 0, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i32, i32* @global_engine_lock, align 4
  %13 = call i32 @CRYPTO_THREAD_write_lock(i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @engine_list_remove(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @ENGINE_F_ENGINE_REMOVE, align 4
  %19 = load i32, i32* @ENGINE_R_INTERNAL_LIST_ERROR, align 4
  %20 = call i32 @ENGINEerr(i32 %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %11
  %22 = load i32, i32* @global_engine_lock, align 4
  %23 = call i32 @CRYPTO_THREAD_unlock(i32 %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @engine_list_remove(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
