; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_signctx_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_signctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@MAC_TYPE_RAW = common dso_local global i64 0, align 8
@EVP_PKEY_FLAG_SIGCTX_CUSTOM = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_NO_INIT = common dso_local global i32 0, align 4
@int_update = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_FLAGS = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @pkey_mac_signctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_mac_signctx_init(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = call %struct.TYPE_11__* @EVP_PKEY_CTX_get_data(%struct.TYPE_12__* %13)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  store i32 1, i32* %8, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAC_TYPE_RAW, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EVP_PKEY_FLAG_SIGCTX_CUSTOM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %20, %2
  %30 = phi i1 [ false, %2 ], [ %28, %20 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @EVP_MAC_CTX_mac(i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = call i32 @EVP_PKEY_CTX_get0_pkey(%struct.TYPE_12__* %39)
  %41 = call i32 @EVP_PKEY_id(i32 %40)
  %42 = call i32 @OBJ_nid2sn(i32 %41)
  %43 = call i32 @EVP_MAC_is_a(i32 %38, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %95

46:                                               ; preds = %34
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = call i32 @EVP_PKEY_CTX_get0_pkey(%struct.TYPE_12__* %47)
  %49 = call %struct.TYPE_13__* @EVP_PKEY_get0(i32 %48)
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %7, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = icmp eq %struct.TYPE_13__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %95

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @EVP_MD_CTX_FLAG_NO_INIT, align 4
  %57 = call i32 @EVP_MD_CTX_set_flags(i32* %55, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @int_update, align 4
  %60 = call i32 @EVP_MD_CTX_set_update_fn(i32* %58, i32 %59)
  store i64 0, i64* %11, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @EVP_MD_CTX_FLAG_NO_INIT, align 4
  %63 = xor i32 %62, -1
  %64 = call i32 @EVP_MD_CTX_test_flags(i32* %61, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* @OSSL_MAC_PARAM_FLAGS, align 4
  %66 = call i32 @OSSL_PARAM_construct_int(i32 %65, i32* %12)
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %11, align 8
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %67
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %54
  %73 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @OSSL_PARAM_construct_octet_string(i32 %73, i32 %76, i32 %79)
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %81
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %72, %54
  %85 = call i32 (...) @OSSL_PARAM_construct_end()
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %11, align 8
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %86
  store i32 %85, i32* %88, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %93 = call i32 @EVP_MAC_CTX_set_params(i32 %91, i32* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %84, %52, %45
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_11__* @EVP_PKEY_CTX_get_data(%struct.TYPE_12__*) #1

declare dso_local i32 @EVP_MAC_is_a(i32, i32) #1

declare dso_local i32 @EVP_MAC_CTX_mac(i32) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i32 @EVP_PKEY_id(i32) #1

declare dso_local i32 @EVP_PKEY_CTX_get0_pkey(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @EVP_PKEY_get0(i32) #1

declare dso_local i32 @EVP_MD_CTX_set_flags(i32*, i32) #1

declare dso_local i32 @EVP_MD_CTX_set_update_fn(i32*, i32) #1

declare dso_local i32 @EVP_MD_CTX_test_flags(i32*, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_int(i32, i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i32, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i32 @EVP_MAC_CTX_set_params(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
