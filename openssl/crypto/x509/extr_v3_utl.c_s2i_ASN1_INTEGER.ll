; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_s2i_ASN1_INTEGER.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_s2i_ASN1_INTEGER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@X509V3_F_S2I_ASN1_INTEGER = common dso_local global i32 0, align 4
@X509V3_R_INVALID_NULL_VALUE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@X509V3_R_BN_DEC2BN_ERROR = common dso_local global i32 0, align 4
@X509V3_R_BN_TO_ASN1_INTEGER_ERROR = common dso_local global i32 0, align 4
@V_ASN1_NEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @s2i_ASN1_INTEGER(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @X509V3_F_S2I_ASN1_INTEGER, align 4
  %15 = load i32, i32* @X509V3_R_INVALID_NULL_VALUE, align 4
  %16 = call i32 @X509V3err(i32 %14, i32 %15)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %113

17:                                               ; preds = %2
  %18 = call i32* (...) @BN_new()
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @X509V3_F_S2I_ASN1_INTEGER, align 4
  %23 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %24 = call i32 @X509V3err(i32 %22, i32 %23)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %113

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  store i32 1, i32* %8, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 48
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 120
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 88
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %41
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8* %55, i8** %5, align 8
  store i32 1, i32* %9, align 4
  br label %57

56:                                               ; preds = %47, %35
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @BN_hex2bn(i32** %6, i8* %61)
  store i32 %62, i32* %10, align 4
  br label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @BN_dec2bn(i32** %6, i8* %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69, %66
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @BN_free(i32* %78)
  %80 = load i32, i32* @X509V3_F_S2I_ASN1_INTEGER, align 4
  %81 = load i32, i32* @X509V3_R_BN_DEC2BN_ERROR, align 4
  %82 = call i32 @X509V3err(i32 %80, i32 %81)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %113

83:                                               ; preds = %69
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32*, i32** %6, align 8
  %88 = call i64 @BN_is_zero(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %86, %83
  %92 = load i32*, i32** %6, align 8
  %93 = call %struct.TYPE_4__* @BN_to_ASN1_INTEGER(i32* %92, i32* null)
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** %7, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @BN_free(i32* %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @X509V3_F_S2I_ASN1_INTEGER, align 4
  %100 = load i32, i32* @X509V3_R_BN_TO_ASN1_INTEGER_ERROR, align 4
  %101 = call i32 @X509V3err(i32 %99, i32 %100)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %113

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* @V_ASN1_NEG, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %102
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %112, %struct.TYPE_4__** %3, align 8
  br label %113

113:                                              ; preds = %111, %98, %77, %21, %13
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %114
}

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @BN_dec2bn(i32**, i8*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local %struct.TYPE_4__* @BN_to_ASN1_INTEGER(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
