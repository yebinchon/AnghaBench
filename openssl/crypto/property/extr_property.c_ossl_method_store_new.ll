; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property.c_ossl_method_store_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ossl_method_store_new(i32* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.TYPE_6__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32* %9, i32** %11, align 8
  %12 = call %struct.TYPE_6__* (...) @ossl_sa_ALGORITHM_new()
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %14, align 8
  %15 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call i32 @OPENSSL_free(%struct.TYPE_6__* %17)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %34

19:                                               ; preds = %8
  %20 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @OPENSSL_free(%struct.TYPE_6__* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = call i32 @OPENSSL_free(%struct.TYPE_6__* %29)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %34

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %2, align 8
  br label %34

34:                                               ; preds = %32, %24, %16
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %35
}

declare dso_local %struct.TYPE_6__* @OPENSSL_zalloc(i32) #1

declare dso_local %struct.TYPE_6__* @ossl_sa_ALGORITHM_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_6__*) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
