; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_context.c_context_deinit.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_context.c_context_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32**, i32, %struct.openssl_ctx_onfree_list_st* }
%struct.openssl_ctx_onfree_list_st = type { %struct.openssl_ctx_onfree_list_st*, {}* }

@CRYPTO_EX_INDEX_OPENSSL_CTX = common dso_local global i32 0, align 4
@OPENSSL_CTX_MAX_INDEXES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @context_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_deinit(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.openssl_ctx_onfree_list_st*, align 8
  %5 = alloca %struct.openssl_ctx_onfree_list_st*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %66

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = call i32 @ossl_ctx_thread_stop(%struct.TYPE_6__* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load %struct.openssl_ctx_onfree_list_st*, %struct.openssl_ctx_onfree_list_st** %14, align 8
  store %struct.openssl_ctx_onfree_list_st* %15, %struct.openssl_ctx_onfree_list_st** %5, align 8
  br label %16

16:                                               ; preds = %19, %10
  %17 = load %struct.openssl_ctx_onfree_list_st*, %struct.openssl_ctx_onfree_list_st** %5, align 8
  %18 = icmp ne %struct.openssl_ctx_onfree_list_st* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.openssl_ctx_onfree_list_st*, %struct.openssl_ctx_onfree_list_st** %5, align 8
  %21 = getelementptr inbounds %struct.openssl_ctx_onfree_list_st, %struct.openssl_ctx_onfree_list_st* %20, i32 0, i32 1
  %22 = bitcast {}** %21 to i32 (%struct.TYPE_6__*)**
  %23 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i32 %23(%struct.TYPE_6__* %24)
  %26 = load %struct.openssl_ctx_onfree_list_st*, %struct.openssl_ctx_onfree_list_st** %5, align 8
  store %struct.openssl_ctx_onfree_list_st* %26, %struct.openssl_ctx_onfree_list_st** %4, align 8
  %27 = load %struct.openssl_ctx_onfree_list_st*, %struct.openssl_ctx_onfree_list_st** %5, align 8
  %28 = getelementptr inbounds %struct.openssl_ctx_onfree_list_st, %struct.openssl_ctx_onfree_list_st* %27, i32 0, i32 0
  %29 = load %struct.openssl_ctx_onfree_list_st*, %struct.openssl_ctx_onfree_list_st** %28, align 8
  store %struct.openssl_ctx_onfree_list_st* %29, %struct.openssl_ctx_onfree_list_st** %5, align 8
  %30 = load %struct.openssl_ctx_onfree_list_st*, %struct.openssl_ctx_onfree_list_st** %4, align 8
  %31 = call i32 @OPENSSL_free(%struct.openssl_ctx_onfree_list_st* %30)
  br label %16

32:                                               ; preds = %16
  %33 = load i32, i32* @CRYPTO_EX_INDEX_OPENSSL_CTX, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = call i32 @CRYPTO_free_ex_data(i32 %33, i32* null, i32* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = call i32 @crypto_cleanup_all_ex_data_int(%struct.TYPE_6__* %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %52, %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @OPENSSL_CTX_MAX_INDEXES, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @CRYPTO_THREAD_lock_free(i32* %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @CRYPTO_THREAD_lock_free(i32* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @CRYPTO_THREAD_lock_free(i32* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %55, %9
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ossl_ctx_thread_stop(%struct.TYPE_6__*) #1

declare dso_local i32 @OPENSSL_free(%struct.openssl_ctx_onfree_list_st*) #1

declare dso_local i32 @CRYPTO_free_ex_data(i32, i32*, i32*) #1

declare dso_local i32 @crypto_cleanup_all_ex_data_int(%struct.TYPE_6__*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
