; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_mult.c_ec_pre_comp_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_mult.c_ec_pre_comp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32* }

@EC_F_EC_PRE_COMP_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*)* @ec_pre_comp_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @ec_pre_comp_new(i32* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %42

8:                                                ; preds = %1
  %9 = call %struct.TYPE_5__* @OPENSSL_zalloc(i32 32)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* @EC_F_EC_PRE_COMP_NEW, align 4
  %14 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %15 = call i32 @ECerr(i32 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %2, align 8
  br label %42

17:                                               ; preds = %8
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 8, i32* %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 4, i32* %24, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load i32, i32* @EC_F_EC_PRE_COMP_NEW, align 4
  %36 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %37 = call i32 @ECerr(i32 %35, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = call i32 @OPENSSL_free(%struct.TYPE_5__* %38)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %42

40:                                               ; preds = %17
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %2, align 8
  br label %42

42:                                               ; preds = %40, %34, %12, %7
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %43
}

declare dso_local %struct.TYPE_5__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
