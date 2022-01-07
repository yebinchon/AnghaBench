; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_i2d_ECPrivateKey.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_i2d_ECPrivateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32*, i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, i32*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }

@EC_PKEY_NO_PUBKEY = common dso_local global i32 0, align 4
@EC_F_I2D_ECPRIVATEKEY = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EC_PKEY_NO_PARAMETERS = common dso_local global i32 0, align 4
@ASN1_STRING_FLAG_BITS_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2d_ECPrivateKey(%struct.TYPE_12__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @EC_PKEY_NO_PUBKEY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %14, %2
  %32 = load i32, i32* @EC_F_I2D_ECPRIVATEKEY, align 4
  %33 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %34 = call i32 @ECerr(i32 %32, i32 %33)
  br label %149

35:                                               ; preds = %26, %19
  %36 = call %struct.TYPE_11__* (...) @EC_PRIVATEKEY_new()
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %11, align 8
  %37 = icmp eq %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @EC_F_I2D_ECPRIVATEKEY, align 4
  %40 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %41 = call i32 @ECerr(i32 %39, i32 %40)
  br label %149

42:                                               ; preds = %35
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = call i64 @EC_KEY_priv2buf(%struct.TYPE_12__* %48, i8** %7)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* @EC_F_I2D_ECPRIVATEKEY, align 4
  %54 = load i32, i32* @ERR_R_EC_LIB, align 4
  %55 = call i32 @ECerr(i32 %53, i32 %54)
  br label %149

56:                                               ; preds = %42
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @ASN1_STRING_set0(%struct.TYPE_13__* %59, i8* %60, i64 %61)
  store i8* null, i8** %7, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @EC_PKEY_NO_PARAMETERS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %56
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32* @EC_GROUP_get_ecpkparameters(i32* %72, i32* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = icmp eq i32* %76, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load i32, i32* @EC_F_I2D_ECPRIVATEKEY, align 4
  %82 = load i32, i32* @ERR_R_EC_LIB, align 4
  %83 = call i32 @ECerr(i32 %81, i32 %82)
  br label %149

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %56
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EC_PKEY_NO_PUBKEY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %139, label %92

92:                                               ; preds = %85
  %93 = call %struct.TYPE_13__* (...) @ASN1_BIT_STRING_new()
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = icmp eq %struct.TYPE_13__* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i32, i32* @EC_F_I2D_ECPRIVATEKEY, align 4
  %102 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %103 = call i32 @ECerr(i32 %101, i32 %102)
  br label %149

104:                                              ; preds = %92
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @EC_KEY_key2buf(%struct.TYPE_12__* %105, i32 %108, i8** %8, i32* null)
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i32, i32* @EC_F_I2D_ECPRIVATEKEY, align 4
  %114 = load i32, i32* @ERR_R_EC_LIB, align 4
  %115 = call i32 @ECerr(i32 %113, i32 %114)
  br label %149

116:                                              ; preds = %104
  %117 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %118 = or i32 %117, 7
  %119 = xor i32 %118, -1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %119
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %126
  store i32 %132, i32* %130, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i64, i64* %10, align 8
  %138 = call i32 @ASN1_STRING_set0(%struct.TYPE_13__* %135, i8* %136, i64 %137)
  store i8* null, i8** %8, align 8
  br label %139

139:                                              ; preds = %116, %85
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %141 = load i8**, i8*** %4, align 8
  %142 = call i32 @i2d_EC_PRIVATEKEY(%struct.TYPE_11__* %140, i8** %141)
  store i32 %142, i32* %5, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @EC_F_I2D_ECPRIVATEKEY, align 4
  %146 = load i32, i32* @ERR_R_EC_LIB, align 4
  %147 = call i32 @ECerr(i32 %145, i32 %146)
  br label %149

148:                                              ; preds = %139
  store i32 1, i32* %6, align 4
  br label %149

149:                                              ; preds = %148, %144, %112, %100, %80, %52, %38, %31
  %150 = load i8*, i8** %7, align 8
  %151 = load i64, i64* %9, align 8
  %152 = call i32 @OPENSSL_clear_free(i8* %150, i64 %151)
  %153 = load i8*, i8** %8, align 8
  %154 = call i32 @OPENSSL_free(i8* %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %156 = call i32 @EC_PRIVATEKEY_free(%struct.TYPE_11__* %155)
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %149
  %160 = load i32, i32* %5, align 4
  br label %162

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161, %159
  %163 = phi i32 [ %160, %159 ], [ 0, %161 ]
  ret i32 %163
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local %struct.TYPE_11__* @EC_PRIVATEKEY_new(...) #1

declare dso_local i64 @EC_KEY_priv2buf(%struct.TYPE_12__*, i8**) #1

declare dso_local i32 @ASN1_STRING_set0(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32* @EC_GROUP_get_ecpkparameters(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @ASN1_BIT_STRING_new(...) #1

declare dso_local i64 @EC_KEY_key2buf(%struct.TYPE_12__*, i32, i8**, i32*) #1

declare dso_local i32 @i2d_EC_PRIVATEKEY(%struct.TYPE_11__*, i8**) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EC_PRIVATEKEY_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
