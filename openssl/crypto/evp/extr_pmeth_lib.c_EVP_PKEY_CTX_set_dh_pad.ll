; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_set_dh_pad.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_set_dh_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@ERR_LIB_EVP = common dso_local global i32 0, align 4
@EVP_R_COMMAND_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EVP_PKEY_DH = common dso_local global i32 0, align 4
@EVP_PKEY_OP_DERIVE = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_DH_PAD = common dso_local global i32 0, align 4
@OSSL_EXCHANGE_PARAM_PAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_CTX_set_dh_pad(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = icmp eq %struct.TYPE_10__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = call i32 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_10__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @ERR_LIB_EVP, align 4
  %17 = load i32, i32* @EVP_R_COMMAND_NOT_SUPPORTED, align 4
  %18 = call i32 @ERR_raise(i32 %16, i32 %17)
  store i32 -2, i32* %3, align 4
  br label %42

19:                                               ; preds = %11
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = load i32, i32* @EVP_PKEY_DH, align 4
  %29 = load i32, i32* @EVP_PKEY_OP_DERIVE, align 4
  %30 = load i32, i32* @EVP_PKEY_CTRL_DH_PAD, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @EVP_PKEY_CTX_ctrl(%struct.TYPE_10__* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32* null)
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %19
  %34 = load i32, i32* @OSSL_EXCHANGE_PARAM_PAD, align 4
  %35 = call i32 @OSSL_PARAM_construct_uint(i32 %34, i32* %7)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = call i32 (...) @OSSL_PARAM_construct_end()
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %41 = call i32 @EVP_PKEY_CTX_set_params(%struct.TYPE_10__* %39, i32* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %26, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_10__*) #1

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_ctrl(%struct.TYPE_10__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_uint(i32, i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i32 @EVP_PKEY_CTX_set_params(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
