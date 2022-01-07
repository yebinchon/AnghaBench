; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_new_from_ecpkparameters.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_new_from_ecpkparameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS = common dso_local global i32 0, align 4
@EC_R_MISSING_PARAMETERS = common dso_local global i32 0, align 4
@EC_R_EC_GROUP_NEW_BY_NAME_FAILURE = common dso_local global i32 0, align 4
@OPENSSL_EC_NAMED_CURVE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@OPENSSL_EC_EXPLICIT_CURVE = common dso_local global i32 0, align 4
@EC_R_ASN1_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EC_GROUP_new_from_ecpkparameters(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS, align 4
  %10 = load i32, i32* @EC_R_MISSING_PARAMETERS, align 4
  %11 = call i32 @ECerr(i32 %9, i32 %10)
  store i32* null, i32** %2, align 8
  br label %68

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @OBJ_obj2nid(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32* @EC_GROUP_new_by_curve_name(i32 %23)
  store i32* %24, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS, align 4
  %28 = load i32, i32* @EC_R_EC_GROUP_NEW_BY_NAME_FAILURE, align 4
  %29 = call i32 @ECerr(i32 %27, i32 %28)
  store i32* null, i32** %2, align 8
  br label %68

30:                                               ; preds = %17
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @OPENSSL_EC_NAMED_CURVE, align 4
  %33 = call i32 @EC_GROUP_set_asn1_flag(i32* %31, i32 %32)
  br label %66

34:                                               ; preds = %12
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @EC_GROUP_new_from_ecparameters(i32 %43)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS, align 4
  %49 = load i32, i32* @ERR_R_EC_LIB, align 4
  %50 = call i32 @ECerr(i32 %48, i32 %49)
  store i32* null, i32** %2, align 8
  br label %68

51:                                               ; preds = %39
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @OPENSSL_EC_EXPLICIT_CURVE, align 4
  %54 = call i32 @EC_GROUP_set_asn1_flag(i32* %52, i32 %53)
  br label %65

55:                                               ; preds = %34
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32* null, i32** %2, align 8
  br label %68

61:                                               ; preds = %55
  %62 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS, align 4
  %63 = load i32, i32* @EC_R_ASN1_ERROR, align 4
  %64 = call i32 @ECerr(i32 %62, i32 %63)
  store i32* null, i32** %2, align 8
  br label %68

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %30
  %67 = load i32*, i32** %4, align 8
  store i32* %67, i32** %2, align 8
  br label %68

68:                                               ; preds = %66, %61, %60, %47, %26, %8
  %69 = load i32*, i32** %2, align 8
  ret i32* %69
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @EC_GROUP_set_asn1_flag(i32*, i32) #1

declare dso_local i32* @EC_GROUP_new_from_ecparameters(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
