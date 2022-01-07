; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_core_namemap.c_ossl_namemap_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_core_namemap.c_ossl_namemap_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }

@namenum_hash = common dso_local global i32 0, align 4
@namenum_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ossl_namemap_new() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %2, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  %6 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32* %6, i32** %8, align 8
  %9 = icmp ne i32* %6, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load i32, i32* @namenum_hash, align 4
  %12 = load i32, i32* @namenum_cmp, align 4
  %13 = call i32* @lh_NAMENUM_ENTRY_new(i32 %11, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = icmp ne i32* %13, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %1, align 8
  br label %22

19:                                               ; preds = %10, %5, %0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = call i32 @ossl_namemap_free(%struct.TYPE_5__* %20)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %22

22:                                               ; preds = %19, %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %23
}

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32* @lh_NAMENUM_ENTRY_new(i32, i32) #1

declare dso_local i32 @ossl_namemap_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
