; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_ossl_param_bld_push_BN.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_param_build.c_ossl_param_bld_push_BN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@CRYPTO_F_OSSL_PARAM_BLD_PUSH_BN = common dso_local global i32 0, align 4
@CRYPTO_R_ZERO_LENGTH_NUMBER = common dso_local global i32 0, align 4
@BN_FLG_SECURE = common dso_local global i64 0, align 8
@OSSL_PARAM_UNSIGNED_INTEGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_param_bld_push_BN(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @BN_num_bytes(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @CRYPTO_F_OSSL_PARAM_BLD_PUSH_BN, align 4
  %20 = load i32, i32* @CRYPTO_R_ZERO_LENGTH_NUMBER, align 4
  %21 = call i32 @CRYPTOerr(i32 %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %51

22:                                               ; preds = %13
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* @BN_FLG_SECURE, align 8
  %25 = call i64 @BN_get_flags(i32* %23, i64 %24)
  %26 = load i64, i64* @BN_FLG_SECURE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %22
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.TYPE_3__* @param_push(i32* %31, i8* %32, i32 %33, i32 %40, i32 %41, i32 %42)
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %10, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = icmp eq %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %46, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i64 @BN_get_flags(i32*, i64) #1

declare dso_local %struct.TYPE_3__* @param_push(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
