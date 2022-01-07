; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_bn_to_asn1_string.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_bn_to_asn1_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64* }

@ASN1_F_BN_TO_ASN1_STRING = common dso_local global i32 0, align 4
@ERR_R_NESTED_ASN1_ERROR = common dso_local global i32 0, align 4
@V_ASN1_NEG_INTEGER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, %struct.TYPE_8__*, i32)* @bn_to_asn1_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @bn_to_asn1_string(i32* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.TYPE_8__* @ASN1_STRING_type_new(i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @ASN1_F_BN_TO_ASN1_STRING, align 4
  %25 = load i32, i32* @ERR_R_NESTED_ASN1_ERROR, align 4
  %26 = call i32 @ASN1err(i32 %24, i32 %25)
  br label %76

27:                                               ; preds = %20
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @BN_is_negative(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @BN_is_zero(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @V_ASN1_NEG_INTEGER, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %31, %27
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @BN_num_bytes(i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @ASN1_STRING_set(%struct.TYPE_8__* %48, i32* null, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @ASN1_F_BN_TO_ASN1_STRING, align 4
  %54 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %55 = call i32 @ASN1err(i32 %53, i32 %54)
  br label %76

56:                                               ; preds = %47
  %57 = load i32*, i32** %5, align 8
  %58 = call i64 @BN_is_zero(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 0, i64* %64, align 8
  br label %71

65:                                               ; preds = %56
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = call i32 @BN_bn2bin(i32* %66, i64* %69)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %4, align 8
  br label %84

76:                                               ; preds = %52, %23
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = icmp ne %struct.TYPE_8__* %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = call i32 @ASN1_INTEGER_free(%struct.TYPE_8__* %81)
  br label %83

83:                                               ; preds = %80, %76
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %84

84:                                               ; preds = %83, %71
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %85
}

declare dso_local %struct.TYPE_8__* @ASN1_STRING_type_new(i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i64 @ASN1_STRING_set(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @BN_bn2bin(i32*, i64*) #1

declare dso_local i32 @ASN1_INTEGER_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
