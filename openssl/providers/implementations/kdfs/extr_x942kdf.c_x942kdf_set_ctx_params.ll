; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_x942kdf.c_x942kdf_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_x942kdf.c_x942kdf_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@OSSL_KDF_PARAM_SECRET = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_UKM = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_CEK_ALG = common dso_local global i32 0, align 4
@OSSL_PARAM_UTF8_STRING = common dso_local global i64 0, align 8
@kek_algs = common dso_local global %struct.TYPE_12__* null, align 8
@ERR_LIB_PROV = common dso_local global i32 0, align 4
@PROV_R_UNSUPPORTED_CEK_ALG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_10__*)* @x942kdf_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x942kdf_set_ctx_params(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @ossl_prov_digest_load_from_params(i32* %17, %struct.TYPE_10__* %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %110

23:                                               ; preds = %2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = load i32, i32* @OSSL_KDF_PARAM_SECRET, align 4
  %26 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %24, i32 %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %6, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %31 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %29, i32 %30)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %6, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28, %23
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = call i32 @x942kdf_set_buffer(i32* %35, i32* %37, %struct.TYPE_10__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %110

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load i32, i32* @OSSL_KDF_PARAM_UKM, align 4
  %46 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %44, i32 %45)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %6, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = call i32 @x942kdf_set_buffer(i32* %50, i32* %52, %struct.TYPE_10__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %110

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = load i32, i32* @OSSL_KDF_PARAM_CEK_ALG, align 4
  %61 = call %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__* %59, i32 %60)
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %6, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %63, label %109

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OSSL_PARAM_UTF8_STRING, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %110

70:                                               ; preds = %63
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @OBJ_sn2nid(i32 %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  store i64 0, i64* %9, align 8
  br label %77

77:                                               ; preds = %94, %70
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kek_algs, align 8
  %80 = call i64 @OSSL_NELEM(%struct.TYPE_12__* %79)
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kek_algs, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %101

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %77

97:                                               ; preds = %77
  %98 = load i32, i32* @ERR_LIB_PROV, align 4
  %99 = load i32, i32* @PROV_R_UNSUPPORTED_CEK_ALG, align 4
  %100 = call i32 @ERR_raise(i32 %98, i32 %99)
  store i32 0, i32* %3, align 4
  br label %110

101:                                              ; preds = %92
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kek_algs, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %101, %58
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %97, %69, %56, %41, %22
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @ossl_prov_digest_load_from_params(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local %struct.TYPE_10__* @OSSL_PARAM_locate_const(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @x942kdf_set_buffer(i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @OBJ_sn2nid(i32) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_12__*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
