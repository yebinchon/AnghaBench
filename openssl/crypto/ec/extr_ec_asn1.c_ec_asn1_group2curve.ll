; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_ec_asn1_group2curve.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_ec_asn1_group2curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@EC_F_EC_ASN1_GROUP2CURVE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4
@ASN1_STRING_FLAG_BITS_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @ec_asn1_group2curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_asn1_group2curve(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %14, %2
  store i32 0, i32* %3, align 4
  br label %172

28:                                               ; preds = %22
  %29 = call i32* (...) @BN_new()
  store i32* %29, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call i32* (...) @BN_new()
  store i32* %32, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @EC_F_EC_ASN1_GROUP2CURVE, align 4
  %36 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %37 = call i32 @ECerr(i32 %35, i32 %36)
  br label %162

38:                                               ; preds = %31
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @EC_GROUP_get_curve(%struct.TYPE_11__* %39, i32* null, i32* %40, i32* %41, i32* null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EC_F_EC_ASN1_GROUP2CURVE, align 4
  %46 = load i32, i32* @ERR_R_EC_LIB, align 4
  %47 = call i32 @ECerr(i32 %45, i32 %46)
  br label %162

48:                                               ; preds = %38
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = call i64 @EC_GROUP_get_degree(%struct.TYPE_11__* %49)
  %51 = add i64 %50, 7
  %52 = udiv i64 %51, 8
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i8* @OPENSSL_malloc(i64 %53)
  store i8* %54, i8** %9, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = load i64, i64* %11, align 8
  %58 = call i8* @OPENSSL_malloc(i64 %57)
  store i8* %58, i8** %10, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %48
  %61 = load i32, i32* @EC_F_EC_ASN1_GROUP2CURVE, align 4
  %62 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %63 = call i32 @ECerr(i32 %61, i32 %62)
  br label %162

64:                                               ; preds = %56
  %65 = load i32*, i32** %7, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @BN_bn2binpad(i32* %65, i8* %66, i64 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i32*, i32** %8, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 @BN_bn2binpad(i32* %71, i8* %72, i64 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70, %64
  %77 = load i32, i32* @EC_F_EC_ASN1_GROUP2CURVE, align 4
  %78 = load i32, i32* @ERR_R_BN_LIB, align 4
  %79 = call i32 @ECerr(i32 %77, i32 %78)
  br label %162

80:                                               ; preds = %70
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @ASN1_OCTET_STRING_set(i32 %83, i8* %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @ASN1_OCTET_STRING_set(i32 %91, i8* %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %88, %80
  %97 = load i32, i32* @EC_F_EC_ASN1_GROUP2CURVE, align 4
  %98 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %99 = call i32 @ECerr(i32 %97, i32 %98)
  br label %162

100:                                              ; preds = %88
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %154

105:                                              ; preds = %100
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = icmp ne %struct.TYPE_12__* %108, null
  br i1 %109, label %120, label %110

110:                                              ; preds = %105
  %111 = call %struct.TYPE_12__* (...) @ASN1_BIT_STRING_new()
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store %struct.TYPE_12__* %111, %struct.TYPE_12__** %113, align 8
  %114 = icmp eq %struct.TYPE_12__* %111, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @EC_F_EC_ASN1_GROUP2CURVE, align 4
  %117 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %118 = call i32 @ECerr(i32 %116, i32 %117)
  br label %162

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %105
  %121 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %122 = or i32 %121, 7
  %123 = xor i32 %122, -1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %123
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %130
  store i32 %136, i32* %134, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @ASN1_BIT_STRING_set(%struct.TYPE_12__* %139, i64 %142, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %120
  %150 = load i32, i32* @EC_F_EC_ASN1_GROUP2CURVE, align 4
  %151 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %152 = call i32 @ECerr(i32 %150, i32 %151)
  br label %162

153:                                              ; preds = %120
  br label %161

154:                                              ; preds = %100
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = call i32 @ASN1_BIT_STRING_free(%struct.TYPE_12__* %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %160, align 8
  br label %161

161:                                              ; preds = %154, %153
  store i32 1, i32* %6, align 4
  br label %162

162:                                              ; preds = %161, %149, %115, %96, %76, %60, %44, %34
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @OPENSSL_free(i8* %163)
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 @OPENSSL_free(i8* %165)
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @BN_free(i32* %167)
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @BN_free(i32* %169)
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %162, %27
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_GROUP_get_curve(%struct.TYPE_11__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @EC_GROUP_get_degree(%struct.TYPE_11__*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i64 @BN_bn2binpad(i32*, i8*, i64) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32, i8*, i64) #1

declare dso_local %struct.TYPE_12__* @ASN1_BIT_STRING_new(...) #1

declare dso_local i32 @ASN1_BIT_STRING_set(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @ASN1_BIT_STRING_free(%struct.TYPE_12__*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
