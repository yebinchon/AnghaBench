; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_field_inv.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_field_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)* }

@EC_F_EC_GFP_SIMPLE_FIELD_INV = common dso_local global i32 0, align 4
@EC_R_CANNOT_INVERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_field_inv(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @BN_CTX_secure_new_ex(i32 %18)
  store i32* %19, i32** %11, align 8
  store i32* %19, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %92

22:                                               ; preds = %15, %4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @BN_CTX_start(i32* %23)
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @BN_CTX_get(i32* %25)
  store i32* %26, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %86

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %40, %29
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @BN_priv_rand_range_ex(i32* %31, i32 %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %86

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @BN_is_zero(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %30, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 %49(%struct.TYPE_7__* %50, i32* %51, i32* %52, i32* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  br label %86

58:                                               ; preds = %44
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @BN_mod_inverse(i32* %59, i32* %60, i32 %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @EC_F_EC_GFP_SIMPLE_FIELD_INV, align 4
  %69 = load i32, i32* @EC_R_CANNOT_INVERT, align 4
  %70 = call i32 @ECerr(i32 %68, i32 %69)
  br label %86

71:                                               ; preds = %58
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)** %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 %76(%struct.TYPE_7__* %77, i32* %78, i32* %79, i32* %80, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %71
  br label %86

85:                                               ; preds = %71
  store i32 1, i32* %12, align 4
  br label %86

86:                                               ; preds = %85, %84, %67, %57, %38, %28
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @BN_CTX_end(i32* %87)
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @BN_CTX_free(i32* %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %86, %21
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32* @BN_CTX_secure_new_ex(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_priv_rand_range_ex(i32*, i32, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_mod_inverse(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
