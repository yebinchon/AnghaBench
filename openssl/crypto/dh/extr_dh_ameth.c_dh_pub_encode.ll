; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_dh_pub_encode.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_dh_pub_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }

@DH_F_DH_PUB_ENCODE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*)* @dh_pub_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_pub_encode(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %6, align 8
  %16 = call %struct.TYPE_16__* (...) @ASN1_STRING_new()
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %10, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %18 = icmp eq %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @DH_F_DH_PUB_ENCODE, align 4
  %21 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %22 = call i32 @DHerr(i32 %20, i32 %21)
  br label %75

23:                                               ; preds = %2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = call i64 @i2d_dhp(%struct.TYPE_14__* %24, %struct.TYPE_15__* %25, i32* %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i32, i32* @DH_F_DH_PUB_ENCODE, align 4
  %37 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %38 = call i32 @DHerr(i32 %36, i32 %37)
  br label %75

39:                                               ; preds = %23
  %40 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @BN_to_ASN1_INTEGER(i32 %43, i32* null)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %75

48:                                               ; preds = %39
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @i2d_ASN1_INTEGER(i32* %49, i8** %8)
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @ASN1_INTEGER_free(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @DH_F_DH_PUB_ENCODE, align 4
  %57 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %58 = call i32 @DHerr(i32 %56, i32 %57)
  br label %75

59:                                               ; preds = %48
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @OBJ_nid2obj(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @X509_PUBKEY_set0_param(i32* %60, i32 %66, i32 %67, %struct.TYPE_16__* %68, i8* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %80

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %55, %47, %35, %19
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @OPENSSL_free(i8* %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %79 = call i32 @ASN1_STRING_free(%struct.TYPE_16__* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %75, %73
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_16__* @ASN1_STRING_new(...) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i64 @i2d_dhp(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32* @BN_to_ASN1_INTEGER(i32, i32*) #1

declare dso_local i32 @i2d_ASN1_INTEGER(i32*, i8**) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i64 @X509_PUBKEY_set0_param(i32*, i32, i32, %struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_STRING_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
