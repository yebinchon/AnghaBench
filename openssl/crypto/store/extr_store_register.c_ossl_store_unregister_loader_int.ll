; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_store_register.c_ossl_store_unregister_loader_int.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_store_register.c_ossl_store_unregister_loader_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32*, i32*, i32*, i32* }

@registry_init = common dso_local global i32 0, align 4
@do_registry_init = common dso_local global i32 0, align 4
@OSSL_STORE_F_OSSL_STORE_UNREGISTER_LOADER_INT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@registry_lock = common dso_local global i32 0, align 4
@loader_register = common dso_local global i32 0, align 4
@OSSL_STORE_R_UNREGISTERED_SCHEME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"scheme=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ossl_store_unregister_loader_int(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  store i32* null, i32** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @do_registry_init, align 4
  %13 = call i32 @RUN_ONCE(i32* @registry_init, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_UNREGISTER_LOADER_INT, align 4
  %17 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %18 = call i32 @OSSL_STOREerr(i32 %16, i32 %17)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* @registry_lock, align 4
  %21 = call i32 @CRYPTO_THREAD_write_lock(i32 %20)
  %22 = load i32, i32* @loader_register, align 4
  %23 = call %struct.TYPE_5__* @lh_OSSL_STORE_LOADER_delete(i32 %22, %struct.TYPE_5__* %4)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_UNREGISTER_LOADER_INT, align 4
  %28 = load i32, i32* @OSSL_STORE_R_UNREGISTERED_SCHEME, align 4
  %29 = call i32 @OSSL_STOREerr(i32 %27, i32 %28)
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i32, i32* @registry_lock, align 4
  %34 = call i32 @CRYPTO_THREAD_unlock(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %2, align 8
  br label %36

36:                                               ; preds = %32, %15
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %37
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local %struct.TYPE_5__* @lh_OSSL_STORE_LOADER_delete(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
