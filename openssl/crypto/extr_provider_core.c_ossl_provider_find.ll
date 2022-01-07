; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_ossl_provider_find.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_ossl_provider_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.provider_store_st = type { i32, i32 }

@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ossl_provider_find(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.provider_store_st*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.provider_store_st* null, %struct.provider_store_st** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.provider_store_st* @get_provider_store(i32* %11)
  store %struct.provider_store_st* %12, %struct.provider_store_st** %7, align 8
  %13 = icmp ne %struct.provider_store_st* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %3
  %15 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @OPENSSL_INIT_LOAD_CONFIG, align 4
  %20 = call i32 @OPENSSL_init_crypto(i32 %19, i32* null)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load %struct.provider_store_st*, %struct.provider_store_st** %7, align 8
  %25 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CRYPTO_THREAD_write_lock(i32 %26)
  %28 = load %struct.provider_store_st*, %struct.provider_store_st** %7, align 8
  %29 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sk_OSSL_PROVIDER_find(i32 %30, %struct.TYPE_6__* %9)
  store i32 %31, i32* %10, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %44, label %33

33:                                               ; preds = %21
  %34 = load %struct.provider_store_st*, %struct.provider_store_st** %7, align 8
  %35 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.TYPE_6__* @sk_OSSL_PROVIDER_value(i32 %36, i32 %37)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %8, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = call i32 @ossl_provider_up_ref(%struct.TYPE_6__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %33, %21
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %45

45:                                               ; preds = %44, %40
  %46 = load %struct.provider_store_st*, %struct.provider_store_st** %7, align 8
  %47 = getelementptr inbounds %struct.provider_store_st, %struct.provider_store_st* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CRYPTO_THREAD_unlock(i32 %48)
  br label %50

50:                                               ; preds = %45, %3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  ret %struct.TYPE_6__* %51
}

declare dso_local %struct.provider_store_st* @get_provider_store(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @sk_OSSL_PROVIDER_find(i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @sk_OSSL_PROVIDER_value(i32, i32) #1

declare dso_local i32 @ossl_provider_up_ref(%struct.TYPE_6__*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
