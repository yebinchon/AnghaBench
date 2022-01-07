; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_context.c_context_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_context.c_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, i32, i32** }

@OPENSSL_CTX_MAX_INDEXES = common dso_local global i64 0, align 8
@CRYPTO_EX_INDEX_OPENSSL_CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i8* (...) @CRYPTO_THREAD_lock_new()
  %7 = bitcast i8* %6 to i32*
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32* %7, i32** %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

15:                                               ; preds = %1
  %16 = call i8* (...) @CRYPTO_THREAD_lock_new()
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %76

25:                                               ; preds = %15
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @OPENSSL_CTX_MAX_INDEXES, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = call i8* (...) @CRYPTO_THREAD_lock_new()
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  store i32* %32, i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 -1, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %76

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %26

55:                                               ; preds = %26
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = call i32 @do_ex_data_init(%struct.TYPE_7__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %76

60:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = load i32, i32* @CRYPTO_EX_INDEX_OPENSSL_CTX, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = call i32 @crypto_new_ex_data_ex(%struct.TYPE_7__* %61, i32 %62, i32* null, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = call i32 @crypto_cleanup_all_ex_data_int(%struct.TYPE_7__* %68)
  br label %76

70:                                               ; preds = %60
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = call i32 @ossl_property_parse_init(%struct.TYPE_7__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %76

75:                                               ; preds = %70
  store i32 1, i32* %2, align 4
  br label %93

76:                                               ; preds = %74, %67, %59, %50, %24
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = call i32 @crypto_cleanup_all_ex_data_int(%struct.TYPE_7__* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @CRYPTO_THREAD_lock_free(i32* %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @CRYPTO_THREAD_lock_free(i32* %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %82, %75, %14
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i8* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @do_ex_data_init(%struct.TYPE_7__*) #1

declare dso_local i32 @crypto_new_ex_data_ex(%struct.TYPE_7__*, i32, i32*, i32*) #1

declare dso_local i32 @crypto_cleanup_all_ex_data_int(%struct.TYPE_7__*) #1

declare dso_local i32 @ossl_property_parse_init(%struct.TYPE_7__*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
