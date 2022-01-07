; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_get_ecparameters.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_get_ecparameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32*, i32*, i32, i32 }

@EC_F_EC_GROUP_GET_ECPARAMETERS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EC_R_UNDEFINED_GENERATOR = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @EC_GROUP_get_ecparameters(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = call %struct.TYPE_6__* (...) @ECPARAMETERS_new()
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %7, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @ECerr(i32 %19, i32 %20)
  br label %149

22:                                               ; preds = %15
  br label %25

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %7, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i64 1, i64* %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ec_asn1_group2fieldid(i32* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %36 = load i32, i32* @ERR_R_EC_LIB, align 4
  %37 = call i32 @ECerr(i32 %35, i32 %36)
  br label %149

38:                                               ; preds = %25
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ec_asn1_group2curve(i32* %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %47 = load i32, i32* @ERR_R_EC_LIB, align 4
  %48 = call i32 @ECerr(i32 %46, i32 %47)
  br label %149

49:                                               ; preds = %38
  %50 = load i32*, i32** %4, align 8
  %51 = call i32* @EC_GROUP_get0_generator(i32* %50)
  store i32* %51, i32** %10, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %55 = load i32, i32* @EC_R_UNDEFINED_GENERATOR, align 4
  %56 = call i32 @ECerr(i32 %54, i32 %55)
  br label %149

57:                                               ; preds = %49
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @EC_GROUP_get_point_conversion_form(i32* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @EC_POINT_point2buf(i32* %60, i32* %61, i32 %62, i8** %9, i32* null)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %68 = load i32, i32* @ERR_R_EC_LIB, align 4
  %69 = call i32 @ECerr(i32 %67, i32 %68)
  br label %149

70:                                               ; preds = %57
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = call i32* (...) @ASN1_OCTET_STRING_new()
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  store i32* %76, i32** %78, align 8
  %79 = icmp eq i32* %76, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @OPENSSL_free(i8* %81)
  %83 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %84 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %85 = call i32 @ECerr(i32 %83, i32 %84)
  br label %149

86:                                               ; preds = %75, %70
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @ASN1_STRING_set0(i32* %89, i8* %90, i64 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = call i32* @EC_GROUP_get0_order(i32* %93)
  store i32* %94, i32** %8, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %99 = load i32, i32* @ERR_R_EC_LIB, align 4
  %100 = call i32 @ECerr(i32 %98, i32 %99)
  br label %149

101:                                              ; preds = %86
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %12, align 8
  %106 = call i8* @BN_to_ASN1_INTEGER(i32* %102, i32* %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %101
  %115 = load i32*, i32** %12, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i32* %115, i32** %117, align 8
  %118 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %119 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %120 = call i32 @ECerr(i32 %118, i32 %119)
  br label %149

121:                                              ; preds = %101
  %122 = load i32*, i32** %4, align 8
  %123 = call i32* @EC_GROUP_get0_cofactor(i32* %122)
  store i32* %123, i32** %8, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %147

126:                                              ; preds = %121
  %127 = load i32*, i32** %8, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %12, align 8
  %131 = call i8* @BN_to_ASN1_INTEGER(i32* %127, i32* %130)
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  store i32* %132, i32** %134, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %126
  %140 = load i32*, i32** %12, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  store i32* %140, i32** %142, align 8
  %143 = load i32, i32* @EC_F_EC_GROUP_GET_ECPARAMETERS, align 4
  %144 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %145 = call i32 @ECerr(i32 %143, i32 %144)
  br label %149

146:                                              ; preds = %126
  br label %147

147:                                              ; preds = %146, %121
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %148, %struct.TYPE_6__** %3, align 8
  br label %156

149:                                              ; preds = %139, %114, %97, %80, %66, %53, %45, %34, %18
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = icmp eq %struct.TYPE_6__* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = call i32 @ECPARAMETERS_free(%struct.TYPE_6__* %153)
  br label %155

155:                                              ; preds = %152, %149
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %156

156:                                              ; preds = %155, %147
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %157
}

declare dso_local %struct.TYPE_6__* @ECPARAMETERS_new(...) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @ec_asn1_group2fieldid(i32*, i32) #1

declare dso_local i32 @ec_asn1_group2curve(i32*, i32) #1

declare dso_local i32* @EC_GROUP_get0_generator(i32*) #1

declare dso_local i32 @EC_GROUP_get_point_conversion_form(i32*) #1

declare dso_local i64 @EC_POINT_point2buf(i32*, i32*, i32, i8**, i32*) #1

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_STRING_set0(i32*, i8*, i64) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i8* @BN_to_ASN1_INTEGER(i32*, i32*) #1

declare dso_local i32* @EC_GROUP_get0_cofactor(i32*) #1

declare dso_local i32 @ECPARAMETERS_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
