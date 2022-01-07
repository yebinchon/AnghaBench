; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_provider_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_provider_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32* }

@CRYPTO_F_PROVIDER_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*, i32*)* @provider_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @provider_new(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %7 = call %struct.TYPE_6__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %6, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32* %10, i32** %12, align 8
  %13 = icmp eq i32* %10, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = call i32 @ossl_provider_up_ref(%struct.TYPE_6__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i32* @OPENSSL_strdup(i8* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %14, %9, %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = call i32 @ossl_provider_free(%struct.TYPE_6__* %25)
  %27 = load i32, i32* @CRYPTO_F_PROVIDER_NEW, align 4
  %28 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %29 = call i32 @CRYPTOerr(i32 %27, i32 %28)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %35

30:                                               ; preds = %18
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %3, align 8
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %36
}

declare dso_local %struct.TYPE_6__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @ossl_provider_up_ref(%struct.TYPE_6__*) #1

declare dso_local i32* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @ossl_provider_free(%struct.TYPE_6__*) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
