; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sskdf.c_sskdf_set_ctx_params.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sskdf.c_sskdf_set_ctx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OSSL_KDF_PARAM_SECRET = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_INFO = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_SALT = common dso_local global i32 0, align 4
@OSSL_KDF_PARAM_MAC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @sskdf_set_ctx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sskdf_set_ctx_params(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %7, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @PROV_LIBRARY_CONTEXT_OF(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @ossl_prov_digest_load_from_params(i32* %17, i32* %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

23:                                               ; preds = %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 7
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @ossl_prov_macctx_load_from_params(i32* %25, i32* %26, i32* null, i32* null, i32* null, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %99

31:                                               ; preds = %23
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @OSSL_KDF_PARAM_SECRET, align 4
  %34 = call i32* @OSSL_PARAM_locate_const(i32* %32, i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @OSSL_KDF_PARAM_KEY, align 4
  %39 = call i32* @OSSL_PARAM_locate_const(i32* %37, i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @sskdf_set_buffer(i32* %43, i32* %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %99

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @OSSL_KDF_PARAM_INFO, align 4
  %54 = call i32* @OSSL_PARAM_locate_const(i32* %52, i32 %53)
  store i32* %54, i32** %6, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @sskdf_set_buffer(i32* %58, i32* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %99

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @OSSL_KDF_PARAM_SALT, align 4
  %69 = call i32* @OSSL_PARAM_locate_const(i32* %67, i32 %68)
  store i32* %69, i32** %6, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @sskdf_set_buffer(i32* %73, i32* %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %99

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %66
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @OSSL_KDF_PARAM_MAC_SIZE, align 4
  %84 = call i32* @OSSL_PARAM_locate_const(i32* %82, i32 %83)
  store i32* %84, i32** %6, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @OSSL_PARAM_get_size_t(i32* %87, i64* %9)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i64, i64* %9, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %86
  store i32 0, i32* %3, align 4
  br label %99

94:                                               ; preds = %90
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %81
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %93, %79, %64, %49, %30, %22
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32* @PROV_LIBRARY_CONTEXT_OF(i32) #1

declare dso_local i32 @ossl_prov_digest_load_from_params(i32*, i32*, i32*) #1

declare dso_local i32 @ossl_prov_macctx_load_from_params(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @OSSL_PARAM_locate_const(i32*, i32) #1

declare dso_local i32 @sskdf_set_buffer(i32*, i32*, i32*) #1

declare dso_local i32 @OSSL_PARAM_get_size_t(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
