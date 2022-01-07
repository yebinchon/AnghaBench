; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp224.c_ec_GFp_nistp224_group_set_curve.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistp224.c_ec_GFp_nistp224_group_set_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@nistp224_curve_params = common dso_local global i32* null, align 8
@EC_F_EC_GFP_NISTP224_GROUP_SET_CURVE = common dso_local global i32 0, align 4
@EC_R_WRONG_CURVE_PARAMETERS = common dso_local global i32 0, align 4
@BN_nist_mod_224 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_nistp224_group_set_curve(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %16, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = call i32* (...) @BN_CTX_new()
  store i32* %20, i32** %16, align 8
  store i32* %20, i32** %11, align 8
  br label %21

21:                                               ; preds = %19, %5
  %22 = load i32*, i32** %11, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %87

25:                                               ; preds = %21
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @BN_CTX_start(i32* %26)
  %28 = load i32*, i32** %11, align 8
  %29 = call i32* @BN_CTX_get(i32* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32* @BN_CTX_get(i32* %30)
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32* @BN_CTX_get(i32* %32)
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %81

37:                                               ; preds = %25
  %38 = load i32*, i32** @nistp224_curve_params, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @BN_bin2bn(i32 %40, i32 4, i32* %41)
  %43 = load i32*, i32** @nistp224_curve_params, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @BN_bin2bn(i32 %45, i32 4, i32* %46)
  %48 = load i32*, i32** @nistp224_curve_params, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @BN_bin2bn(i32 %50, i32 4, i32* %51)
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @BN_cmp(i32* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %37
  %58 = load i32*, i32** %14, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @BN_cmp(i32* %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %15, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i64 @BN_cmp(i32* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62, %57, %37
  %68 = load i32, i32* @EC_F_EC_GFP_NISTP224_GROUP_SET_CURVE, align 4
  %69 = load i32, i32* @EC_R_WRONG_CURVE_PARAMETERS, align 4
  %70 = call i32 @ECerr(i32 %68, i32 %69)
  br label %81

71:                                               ; preds = %62
  %72 = load i32, i32* @BN_nist_mod_224, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @ec_GFp_simple_group_set_curve(%struct.TYPE_4__* %75, i32* %76, i32* %77, i32* %78, i32* %79)
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %71, %67, %36
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @BN_CTX_end(i32* %82)
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @BN_CTX_free(i32* %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %81, %24
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

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
