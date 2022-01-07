; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_d2i_pu.c_d2i_PublicKey.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_d2i_pu.c_d2i_PublicKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32* }

@ASN1_F_D2I_PUBLICKEY = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@ERR_R_ASN1_LIB = common dso_local global i32 0, align 4
@ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @d2i_PublicKey(i32 %0, %struct.TYPE_10__** %1, i8** %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %12 = icmp eq %struct.TYPE_10__** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = icmp eq %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13, %4
  %18 = call %struct.TYPE_10__* (...) @EVP_PKEY_new()
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %10, align 8
  %19 = icmp eq %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @ASN1_F_D2I_PUBLICKEY, align 4
  %22 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %23 = call i32 @ASN1err(i32 %21, i32 %22)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %108

24:                                               ; preds = %17
  br label %28

25:                                               ; preds = %13
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %10, align 8
  br label %28

28:                                               ; preds = %25, %24
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = call i32 @EVP_PKEY_id(%struct.TYPE_10__* %30)
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @EVP_PKEY_set_type(%struct.TYPE_10__* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ASN1_F_D2I_PUBLICKEY, align 4
  %40 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %41 = call i32 @ASN1err(i32 %39, i32 %40)
  br label %96

42:                                               ; preds = %33, %28
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = call i32 @EVP_PKEY_id(%struct.TYPE_10__* %43)
  switch i32 %44, label %84 [
    i32 128, label %45
    i32 130, label %58
    i32 129, label %71
  ]

45:                                               ; preds = %42
  %46 = load i8**, i8*** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32* @d2i_RSAPublicKey(i32* null, i8** %46, i64 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i32* %48, i32** %51, align 8
  %52 = icmp eq i32* %48, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @ASN1_F_D2I_PUBLICKEY, align 4
  %55 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %56 = call i32 @ASN1err(i32 %54, i32 %55)
  br label %96

57:                                               ; preds = %45
  br label %88

58:                                               ; preds = %42
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i8**, i8*** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @d2i_DSAPublicKey(i32* %61, i8** %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @ASN1_F_D2I_PUBLICKEY, align 4
  %68 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %69 = call i32 @ASN1err(i32 %67, i32 %68)
  br label %96

70:                                               ; preds = %58
  br label %88

71:                                               ; preds = %42
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i8**, i8*** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @o2i_ECPublicKey(i32* %74, i8** %75, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* @ASN1_F_D2I_PUBLICKEY, align 4
  %81 = load i32, i32* @ERR_R_ASN1_LIB, align 4
  %82 = call i32 @ASN1err(i32 %80, i32 %81)
  br label %96

83:                                               ; preds = %71
  br label %88

84:                                               ; preds = %42
  %85 = load i32, i32* @ASN1_F_D2I_PUBLICKEY, align 4
  %86 = load i32, i32* @ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE, align 4
  %87 = call i32 @ASN1err(i32 %85, i32 %86)
  br label %96

88:                                               ; preds = %83, %70, %57
  %89 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %90 = icmp ne %struct.TYPE_10__** %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %93, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %5, align 8
  br label %108

96:                                               ; preds = %84, %79, %66, %53, %38
  %97 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %98 = icmp eq %struct.TYPE_10__** %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = icmp ne %struct.TYPE_10__* %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99, %96
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = call i32 @EVP_PKEY_free(%struct.TYPE_10__* %105)
  br label %107

107:                                              ; preds = %104, %99
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %108

108:                                              ; preds = %107, %94, %20
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %109
}

declare dso_local %struct.TYPE_10__* @EVP_PKEY_new(...) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @EVP_PKEY_id(%struct.TYPE_10__*) #1

declare dso_local i32 @EVP_PKEY_set_type(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @d2i_RSAPublicKey(i32*, i8**, i64) #1

declare dso_local i32 @d2i_DSAPublicKey(i32*, i8**, i64) #1

declare dso_local i32 @o2i_ECPublicKey(i32*, i8**, i64) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
