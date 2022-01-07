; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_dh_priv_encode.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_ameth.c_dh_priv_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }

@DH_F_DH_PRIV_ENCODE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@DH_R_BN_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*)* @dh_priv_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_priv_encode(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = call %struct.TYPE_14__* (...) @ASN1_STRING_new()
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = icmp eq %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @DH_F_DH_PRIV_ENCODE, align 4
  %15 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %16 = call i32 @DHerr(i32 %14, i32 %15)
  br label %73

17:                                               ; preds = %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = call i64 @i2d_dhp(%struct.TYPE_13__* %18, %struct.TYPE_15__* %22, i32* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load i32, i32* @DH_F_DH_PRIV_ENCODE, align 4
  %34 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %35 = call i32 @DHerr(i32 %33, i32 %34)
  br label %73

36:                                               ; preds = %17
  %37 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @BN_to_ASN1_INTEGER(i32 %45, i32* null)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i32, i32* @DH_F_DH_PRIV_ENCODE, align 4
  %51 = load i32, i32* @DH_R_BN_ERROR, align 4
  %52 = call i32 @DHerr(i32 %50, i32 %51)
  br label %73

53:                                               ; preds = %36
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @i2d_ASN1_INTEGER(i32* %54, i8** %8)
  store i32 %55, i32* %9, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @ASN1_STRING_clear_free(i32* %56)
  store i32* null, i32** %7, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @OBJ_nid2obj(i32 %63)
  %65 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @PKCS8_pkey_set0(i32* %58, i32 %64, i32 0, i32 %65, %struct.TYPE_14__* %66, i8* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %53
  br label %73

72:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %80

73:                                               ; preds = %71, %49, %32, %13
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @OPENSSL_free(i8* %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = call i32 @ASN1_STRING_free(%struct.TYPE_14__* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @ASN1_STRING_clear_free(i32* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %73, %72
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_14__* @ASN1_STRING_new(...) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i64 @i2d_dhp(%struct.TYPE_13__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32* @BN_to_ASN1_INTEGER(i32, i32*) #1

declare dso_local i32 @i2d_ASN1_INTEGER(i32*, i8**) #1

declare dso_local i32 @ASN1_STRING_clear_free(i32*) #1

declare dso_local i32 @PKCS8_pkey_set0(i32*, i32, i32, i32, %struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_STRING_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
