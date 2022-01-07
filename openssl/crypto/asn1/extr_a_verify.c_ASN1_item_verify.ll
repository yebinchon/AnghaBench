; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_verify.c_ASN1_item_verify.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_verify.c_ASN1_item_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (i32*, i32*, i8*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_14__*)*, i64 }

@ASN1_F_ASN1_ITEM_VERIFY = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@V_ASN1_BIT_STRING = common dso_local global i64 0, align 8
@ASN1_R_INVALID_BIT_STRING_BITS_LEFT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM = common dso_local global i32 0, align 4
@ASN1_R_WRONG_PUBLIC_KEY_TYPE = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_item_verify(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_15__* %2, i8* %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %11, align 8
  store i32* null, i32** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %21 = icmp eq %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %24 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %25 = call i32 @ASN1err(i32 %23, i32 %24)
  store i32 -1, i32* %6, align 4
  br label %175

26:                                               ; preds = %5
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V_ASN1_BIT_STRING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 7
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %40 = load i32, i32* @ASN1_R_INVALID_BIT_STRING_BITS_LEFT, align 4
  %41 = call i32 @ASN1err(i32 %39, i32 %40)
  store i32 -1, i32* %6, align 4
  br label %175

42:                                               ; preds = %32, %26
  %43 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %48 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %49 = call i32 @ASN1err(i32 %47, i32 %48)
  br label %168

50:                                               ; preds = %42
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @OBJ_obj2nid(i32 %53)
  %55 = call i32 @OBJ_find_sigid_algs(i32 %54, i32* %16, i32* %17)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %59 = load i32, i32* @ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM, align 4
  %60 = call i32 @ASN1err(i32 %58, i32 %59)
  br label %168

61:                                               ; preds = %50
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @NID_undef, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = icmp eq %struct.TYPE_12__* %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32 (i32*, i32*, i8*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (i32*, i32*, i8*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_14__*)** %74, align 8
  %76 = icmp eq i32 (i32*, i32*, i8*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_14__*)* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %70, %65
  %78 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %79 = load i32, i32* @ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM, align 4
  %80 = call i32 @ASN1err(i32 %78, i32 %79)
  br label %168

81:                                               ; preds = %70
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32 (i32*, i32*, i8*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (i32*, i32*, i8*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_14__*)** %85, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %93 = call i32 %86(i32* %87, i32* %88, i8* %89, %struct.TYPE_13__* %90, %struct.TYPE_15__* %91, %struct.TYPE_14__* %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 2
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %168

97:                                               ; preds = %81
  store i32 -1, i32* %14, align 4
  br label %131

98:                                               ; preds = %61
  %99 = load i32, i32* %16, align 4
  %100 = call i32* @EVP_get_digestbynid(i32 %99)
  store i32* %100, i32** %19, align 8
  %101 = load i32*, i32** %19, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %105 = load i32, i32* @ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM, align 4
  %106 = call i32 @ASN1err(i32 %104, i32 %105)
  br label %168

107:                                              ; preds = %98
  %108 = load i32, i32* %17, align 4
  %109 = call i64 @EVP_PKEY_type(i32 %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %109, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %118 = load i32, i32* @ASN1_R_WRONG_PUBLIC_KEY_TYPE, align 4
  %119 = call i32 @ASN1err(i32 %117, i32 %118)
  br label %168

120:                                              ; preds = %107
  %121 = load i32*, i32** %12, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %124 = call i32 @EVP_DigestVerifyInit(i32* %121, i32* null, i32* %122, i32* null, %struct.TYPE_14__* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %128 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %129 = call i32 @ASN1err(i32 %127, i32 %128)
  store i32 0, i32* %14, align 4
  br label %168

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %97
  %132 = load i8*, i8** %10, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @ASN1_item_i2d(i8* %132, i8** %13, i32* %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %139 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %140 = call i32 @ASN1err(i32 %138, i32 %139)
  br label %168

141:                                              ; preds = %131
  %142 = load i8*, i8** %13, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %146 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %147 = call i32 @ASN1err(i32 %145, i32 %146)
  br label %168

148:                                              ; preds = %141
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  store i64 %150, i64* %18, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @EVP_DigestVerify(i32* %151, i32 %154, i64 %157, i8* %158, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp sle i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %148
  %164 = load i32, i32* @ASN1_F_ASN1_ITEM_VERIFY, align 4
  %165 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %166 = call i32 @ASN1err(i32 %164, i32 %165)
  br label %168

167:                                              ; preds = %148
  store i32 1, i32* %14, align 4
  br label %168

168:                                              ; preds = %167, %163, %144, %137, %126, %116, %103, %96, %77, %57, %46
  %169 = load i8*, i8** %13, align 8
  %170 = load i64, i64* %18, align 8
  %171 = call i32 @OPENSSL_clear_free(i8* %169, i64 %170)
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @EVP_MD_CTX_free(i32* %172)
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %168, %38, %22
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @OBJ_find_sigid_algs(i32, i32*, i32*) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32* @EVP_get_digestbynid(i32) #1

declare dso_local i64 @EVP_PKEY_type(i32) #1

declare dso_local i32 @EVP_DigestVerifyInit(i32*, i32*, i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @ASN1_item_i2d(i8*, i8**, i32*) #1

declare dso_local i32 @EVP_DigestVerify(i32*, i32, i64, i8*, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
