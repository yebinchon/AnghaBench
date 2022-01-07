; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_lib.c_EVP_MD_block_size.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_lib.c_EVP_MD_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@OSSL_PARAM_END = common dso_local global i32 0, align 4
@EVP_F_EVP_MD_BLOCK_SIZE = common dso_local global i32 0, align 4
@EVP_R_MESSAGE_DIGEST_IS_NULL = common dso_local global i32 0, align 4
@OSSL_DIGEST_PARAM_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_MD_block_size(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [2 x i32], align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %11 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @EVP_F_EVP_MD_BLOCK_SIZE, align 4
  %18 = load i32, i32* @EVP_R_MESSAGE_DIGEST_IS_NULL, align 4
  %19 = call i32 @EVPerr(i32 %17, i32 %18)
  store i32 -1, i32* %2, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load i32, i32* @OSSL_DIGEST_PARAM_BLOCK_SIZE, align 4
  %22 = call i32 @OSSL_PARAM_construct_size_t(i32 %21, i64* %5)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %26 = call i32 @evp_do_md_getparams(%struct.TYPE_4__* %24, i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  br label %33

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ -1, %32 ]
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_size_t(i32, i64*) #1

declare dso_local i32 @evp_do_md_getparams(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
