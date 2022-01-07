; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_bn_expand_internal.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_bn_expand_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@BN_BITS2 = common dso_local global i32 0, align 4
@BN_F_BN_EXPAND_INTERNAL = common dso_local global i32 0, align 4
@BN_R_BIGNUM_TOO_LONG = common dso_local global i32 0, align 4
@BN_FLG_STATIC_DATA = common dso_local global i32 0, align 4
@BN_R_EXPAND_ON_STATIC_BIGNUM_DATA = common dso_local global i32 0, align 4
@BN_FLG_SECURE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32)* @bn_expand_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bn_expand_internal(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @INT_MAX, align 4
  %9 = load i32, i32* @BN_BITS2, align 4
  %10 = mul nsw i32 4, %9
  %11 = sdiv i32 %8, %10
  %12 = icmp sgt i32 %7, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @BN_F_BN_EXPAND_INTERNAL, align 4
  %15 = load i32, i32* @BN_R_BIGNUM_TOO_LONG, align 4
  %16 = call i32 @BNerr(i32 %14, i32 %15)
  store i32* null, i32** %3, align 8
  br label %76

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = load i32, i32* @BN_FLG_STATIC_DATA, align 4
  %20 = call i64 @BN_get_flags(%struct.TYPE_4__* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @BN_F_BN_EXPAND_INTERNAL, align 4
  %24 = load i32, i32* @BN_R_EXPAND_ON_STATIC_BIGNUM_DATA, align 4
  %25 = call i32 @BNerr(i32 %23, i32 %24)
  store i32* null, i32** %3, align 8
  br label %76

26:                                               ; preds = %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = load i32, i32* @BN_FLG_SECURE, align 4
  %29 = call i64 @BN_get_flags(%struct.TYPE_4__* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32* @OPENSSL_secure_zalloc(i32 %35)
  store i32* %36, i32** %6, align 8
  br label %43

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32* @OPENSSL_zalloc(i32 %41)
  store i32* %42, i32** %6, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32*, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @BN_F_BN_EXPAND_INTERNAL, align 4
  %48 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %49 = call i32 @BNerr(i32 %47, i32 %48)
  store i32* null, i32** %3, align 8
  br label %76

50:                                               ; preds = %43
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sle i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %50
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i32* %63, i32 %66, i32 %72)
  br label %74

74:                                               ; preds = %62, %50
  %75 = load i32*, i32** %6, align 8
  store i32* %75, i32** %3, align 8
  br label %76

76:                                               ; preds = %74, %46, %22, %13
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i64 @BN_get_flags(%struct.TYPE_4__*, i32) #1

declare dso_local i32* @OPENSSL_secure_zalloc(i32) #1

declare dso_local i32* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
