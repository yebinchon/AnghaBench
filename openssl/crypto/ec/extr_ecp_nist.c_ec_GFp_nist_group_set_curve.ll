; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nist.c_ec_GFp_nist_group_set_curve.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nist.c_ec_GFp_nist_group_set_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@BN_nist_mod_192 = common dso_local global i32 0, align 4
@BN_nist_mod_224 = common dso_local global i32 0, align 4
@BN_nist_mod_256 = common dso_local global i32 0, align 4
@BN_nist_mod_384 = common dso_local global i32 0, align 4
@BN_nist_mod_521 = common dso_local global i32 0, align 4
@EC_F_EC_GFP_NIST_GROUP_SET_CURVE = common dso_local global i32 0, align 4
@EC_R_NOT_A_NIST_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_nist_group_set_curve(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @BN_CTX_new_ex(i32 %19)
  store i32* %20, i32** %13, align 8
  store i32* %20, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %92

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %5
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @BN_CTX_start(i32* %25)
  %27 = call i32 (...) @BN_get0_nist_prime_192()
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @BN_ucmp(i32 %27, i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @BN_nist_mod_192, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %79

35:                                               ; preds = %24
  %36 = call i32 (...) @BN_get0_nist_prime_224()
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @BN_ucmp(i32 %36, i32* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @BN_nist_mod_224, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %78

44:                                               ; preds = %35
  %45 = call i32 (...) @BN_get0_nist_prime_256()
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @BN_ucmp(i32 %45, i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @BN_nist_mod_256, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %77

53:                                               ; preds = %44
  %54 = call i32 (...) @BN_get0_nist_prime_384()
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @BN_ucmp(i32 %54, i32* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @BN_nist_mod_384, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %76

62:                                               ; preds = %53
  %63 = call i32 (...) @BN_get0_nist_prime_521()
  %64 = load i32*, i32** %8, align 8
  %65 = call i64 @BN_ucmp(i32 %63, i32* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @BN_nist_mod_521, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @EC_F_EC_GFP_NIST_GROUP_SET_CURVE, align 4
  %73 = load i32, i32* @EC_R_NOT_A_NIST_PRIME, align 4
  %74 = call i32 @ECerr(i32 %72, i32 %73)
  br label %86

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %49
  br label %78

78:                                               ; preds = %77, %40
  br label %79

79:                                               ; preds = %78, %31
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @ec_GFp_simple_group_set_curve(%struct.TYPE_4__* %80, i32* %81, i32* %82, i32* %83, i32* %84)
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %79, %71
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @BN_CTX_end(i32* %87)
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @BN_CTX_free(i32* %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %86, %22
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i64 @BN_ucmp(i32, i32*) #1

declare dso_local i32 @BN_get0_nist_prime_192(...) #1

declare dso_local i32 @BN_get0_nist_prime_224(...) #1

declare dso_local i32 @BN_get0_nist_prime_256(...) #1

declare dso_local i32 @BN_get0_nist_prime_384(...) #1

declare dso_local i32 @BN_get0_nist_prime_521(...) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @ec_GFp_simple_group_set_curve(%struct.TYPE_4__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
