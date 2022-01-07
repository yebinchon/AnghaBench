; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i32* }

@BN_F_BN_BLINDING_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @BN_BLINDING_new(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i32 @bn_check_top(i32* %9)
  %11 = call %struct.TYPE_7__* @OPENSSL_zalloc(i32 40)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @BN_F_BN_BLINDING_NEW, align 4
  %15 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %16 = call i32 @BNerr(i32 %14, i32 %15)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %83

17:                                               ; preds = %3
  %18 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i32, i32* @BN_F_BN_BLINDING_NEW, align 4
  %27 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %28 = call i32 @BNerr(i32 %26, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = call i32 @OPENSSL_free(%struct.TYPE_7__* %29)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %83

31:                                               ; preds = %17
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = call i32 @BN_BLINDING_set_current_thread(%struct.TYPE_7__* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @BN_dup(i32* %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = icmp eq i32* %39, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %80

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = call i8* @BN_dup(i32* %49)
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = icmp eq i32* %51, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %80

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32*, i32** %7, align 8
  %59 = call i8* @BN_dup(i32* %58)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = icmp eq i32* %60, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %80

65:                                               ; preds = %57
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %68 = call i64 @BN_get_flags(i32* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %75 = call i32 @BN_set_flags(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %4, align 8
  br label %83

80:                                               ; preds = %64, %55, %43
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = call i32 @BN_BLINDING_free(%struct.TYPE_7__* %81)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %83

83:                                               ; preds = %80, %76, %25, %13
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %84
}

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local %struct.TYPE_7__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_7__*) #1

declare dso_local i32 @BN_BLINDING_set_current_thread(%struct.TYPE_7__*) #1

declare dso_local i8* @BN_dup(i32*) #1

declare dso_local i64 @BN_get_flags(i32*, i32) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i32 @BN_BLINDING_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
