; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_pbkdf2.c_kdf_pbkdf2_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_pbkdf2.c_kdf_pbkdf2_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@OSSL_KDF_PARAM_PKCS5 = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_PASSWORD = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SALT = common dso_local global i32 0, align 4
@KDF_PBKDF2_MIN_SALT_LEN = common dso_local global i64 0, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_INVALID_SALT_LENGTH = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_ITER = common dso_local global i32 0, align 4
@KDF_PBKDF2_MIN_ITERATIONS = common dso_local global i32 0, align 4
@PROV_R_INVALID_ITERATION_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_10__*)* @kdf_pbkdf2_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdf_pbkdf2_set_ctx_params(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @ossl_prov_digest_load_from_params(i32* %19, %struct.TYPE_10__* %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = load i32, i32* @OSSL_KDF_PARAM_PKCS5, align 4
  %28 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %26, i32 %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %6, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = call i32 @OSSL_PARAM_get_int(%struct.TYPE_10__* %31, i32* %9)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %118

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %25
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = load i32, i32* @OSSL_KDF_PARAM_PASSWORD, align 4
  %44 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %42, i32 %43)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %6, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = call i32 @pbkdf2_set_membuf(i32* %48, i32* %50, %struct.TYPE_10__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %118

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = load i32, i32* @OSSL_KDF_PARAM_SALT, align 4
  %59 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %57, i32 %58)
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %6, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %86

61:                                               ; preds = %56
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @KDF_PBKDF2_MIN_SALT_LEN, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @ERR_LIB_PROV, align 4
  %74 = load i32, i32* @PROV_R_INVALID_SALT_LENGTH, align 4
  %75 = call i32 @ERR_raise(i32 %73, i32 %74)
  store i32 0, i32* %3, align 4
  br label %118

76:                                               ; preds = %66, %61
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = call i32 @pbkdf2_set_membuf(i32* %78, i32* %80, %struct.TYPE_10__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %118

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %56
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = load i32, i32* @OSSL_KDF_PARAM_ITER, align 4
  %89 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %87, i32 %88)
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %6, align 8
  %90 = icmp ne %struct.TYPE_10__* %89, null
  br i1 %90, label %91, label %117

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = call i32 @OSSL_PARAM_get_uint64(%struct.TYPE_10__* %92, i32* %10)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %118

96:                                               ; preds = %91
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @KDF_PBKDF2_MIN_ITERATIONS, align 4
  br label %104

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 1, %103 ]
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @ERR_LIB_PROV, align 4
  %111 = load i32, i32* @PROV_R_INVALID_ITERATION_COUNT, align 4
  %112 = call i32 @ERR_raise(i32 %110, i32 %111)
  store i32 0, i32* %3, align 4
  br label %118

113:                                              ; preds = %104
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %86
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %109, %95, %84, %72, %54, %34, %24
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @ossl_prov_digest_load_from_params(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @OSSL_PARAM_get_int(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @pbkdf2_set_membuf(i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_get_uint64(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
