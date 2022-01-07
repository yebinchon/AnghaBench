; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_kmeth.c_ec_key_new_method_int.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_kmeth.c_ec_key_new_method_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, i32, i32, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_10__*)* }

@EC_F_EC_KEY_NEW_METHOD_INT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_ENGINE_LIB = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@CRYPTO_EX_INDEX_EC_KEY = common dso_local global i32 0, align 4
@ERR_R_INIT_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ec_key_new_method_int(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call %struct.TYPE_10__* @OPENSSL_zalloc(i32 48)
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %9 = icmp eq %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @EC_F_EC_KEY_NEW_METHOD_INT, align 4
  %12 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %13 = call i32 @ECerr(i32 %11, i32 %12)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %114

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 7
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 6
  store i32* %20, i32** %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load i32, i32* @EC_F_EC_KEY_NEW_METHOD_INT, align 4
  %29 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %30 = call i32 @ECerr(i32 %28, i32 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = call i32 @OPENSSL_free(%struct.TYPE_10__* %31)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %114

33:                                               ; preds = %14
  %34 = call %struct.TYPE_11__* (...) @EC_KEY_get_default_method()
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ENGINE_init(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EC_F_EC_KEY_NEW_METHOD_INT, align 4
  %45 = load i32, i32* @ERR_R_ENGINE_LIB, align 4
  %46 = call i32 @ECerr(i32 %44, i32 %45)
  br label %111

47:                                               ; preds = %39
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  br label %55

51:                                               ; preds = %33
  %52 = call i32* (...) @ENGINE_get_default_EC()
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 5
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = call %struct.TYPE_11__* @ENGINE_get_EC(i32* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = icmp eq %struct.TYPE_11__* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i32, i32* @EC_F_EC_KEY_NEW_METHOD_INT, align 4
  %73 = load i32, i32* @ERR_R_ENGINE_LIB, align 4
  %74 = call i32 @ECerr(i32 %72, i32 %73)
  br label %111

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %55
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @CRYPTO_EX_INDEX_EC_KEY, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = call i32 @CRYPTO_new_ex_data(i32 %82, %struct.TYPE_10__* %83, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %76
  br label %111

89:                                               ; preds = %76
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %93, align 8
  %95 = icmp ne i64 (%struct.TYPE_10__*)* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = call i64 %101(%struct.TYPE_10__* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* @EC_F_EC_KEY_NEW_METHOD_INT, align 4
  %107 = load i32, i32* @ERR_R_INIT_FAIL, align 4
  %108 = call i32 @ECerr(i32 %106, i32 %107)
  br label %111

109:                                              ; preds = %96, %89
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %3, align 8
  br label %114

111:                                              ; preds = %105, %88, %71, %43
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = call i32 @EC_KEY_free(%struct.TYPE_10__* %112)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %114

114:                                              ; preds = %111, %109, %27, %10
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %115
}

declare dso_local %struct.TYPE_10__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @EC_KEY_get_default_method(...) #1

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local i32* @ENGINE_get_default_EC(...) #1

declare dso_local %struct.TYPE_11__* @ENGINE_get_EC(i32*) #1

declare dso_local i32 @CRYPTO_new_ex_data(i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @EC_KEY_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
