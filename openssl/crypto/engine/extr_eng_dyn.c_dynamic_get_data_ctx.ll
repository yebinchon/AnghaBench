; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_dyn.c_dynamic_get_data_ctx.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_dyn.c_dynamic_get_data_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dynamic_ex_data_idx = common dso_local global i32 0, align 4
@dynamic_data_ctx_free_func = common dso_local global i32 0, align 4
@ENGINE_F_DYNAMIC_GET_DATA_CTX = common dso_local global i32 0, align 4
@ENGINE_R_NO_INDEX = common dso_local global i32 0, align 4
@global_engine_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @dynamic_get_data_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dynamic_get_data_ctx(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @dynamic_ex_data_idx, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* @dynamic_data_ctx_free_func, align 4
  %10 = call i32 @ENGINE_get_ex_new_index(i32 0, i32* null, i32* null, i32* null, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @ENGINE_F_DYNAMIC_GET_DATA_CTX, align 4
  %15 = load i32, i32* @ENGINE_R_NO_INDEX, align 4
  %16 = call i32 @ENGINEerr(i32 %14, i32 %15)
  store i32* null, i32** %2, align 8
  br label %41

17:                                               ; preds = %8
  %18 = load i32, i32* @global_engine_lock, align 4
  %19 = call i32 @CRYPTO_THREAD_write_lock(i32 %18)
  %20 = load i32, i32* @dynamic_ex_data_idx, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* @dynamic_ex_data_idx, align 4
  store i32 -1, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* @global_engine_lock, align 4
  %26 = call i32 @CRYPTO_THREAD_unlock(i32 %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @dynamic_ex_data_idx, align 4
  %30 = call i64 @ENGINE_get_ex_data(i32* %28, i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @dynamic_set_data_ctx(i32* %35, i32** %4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32* null, i32** %2, align 8
  br label %41

39:                                               ; preds = %34, %27
  %40 = load i32*, i32** %4, align 8
  store i32* %40, i32** %2, align 8
  br label %41

41:                                               ; preds = %39, %38, %13
  %42 = load i32*, i32** %2, align 8
  ret i32* %42
}

declare dso_local i32 @ENGINE_get_ex_new_index(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i64 @ENGINE_get_ex_data(i32*, i32) #1

declare dso_local i32 @dynamic_set_data_ctx(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
