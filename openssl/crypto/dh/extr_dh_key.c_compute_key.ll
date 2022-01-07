; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_key.c_compute_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_key.c_compute_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32*, i32*)* }

@OPENSSL_DH_MAX_MODULUS_BITS = common dso_local global i64 0, align 8
@DH_F_COMPUTE_KEY = common dso_local global i32 0, align 4
@DH_R_MODULUS_TOO_LARGE = common dso_local global i32 0, align 4
@DH_MIN_MODULUS_BITS = common dso_local global i64 0, align 8
@DH_R_MODULUS_TOO_SMALL = common dso_local global i32 0, align 4
@DH_R_NO_PRIVATE_VALUE = common dso_local global i32 0, align 4
@DH_FLAG_CACHE_MONT_P = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@DH_R_INVALID_PUBKEY = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_7__*)* @compute_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_key(i8* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 -1, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @BN_num_bits(i32 %15)
  %17 = load i64, i64* @OPENSSL_DH_MAX_MODULUS_BITS, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @DH_F_COMPUTE_KEY, align 4
  %21 = load i32, i32* @DH_R_MODULUS_TOO_LARGE, align 4
  %22 = call i32 @DHerr(i32 %20, i32 %21)
  br label %122

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @BN_num_bits(i32 %26)
  %28 = load i64, i64* @DH_MIN_MODULUS_BITS, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @DH_F_COMPUTE_KEY, align 4
  %32 = load i32, i32* @DH_R_MODULUS_TOO_SMALL, align 4
  %33 = call i32 @DHerr(i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %128

34:                                               ; preds = %23
  %35 = call i32* (...) @BN_CTX_new()
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %122

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @BN_CTX_start(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @BN_CTX_get(i32* %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %122

47:                                               ; preds = %39
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @DH_F_COMPUTE_KEY, align 4
  %54 = load i32, i32* @DH_R_NO_PRIVATE_VALUE, align 4
  %55 = call i32 @DHerr(i32 %53, i32 %54)
  br label %122

56:                                               ; preds = %47
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DH_FLAG_CACHE_MONT_P, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %56
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = call i32* @BN_MONT_CTX_set_locked(i32* %65, i32 %68, i32 %71, i32* %72)
  store i32* %73, i32** %9, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %78 = call i32 @BN_set_flags(i32* %76, i32 %77)
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %63
  br label %122

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @DH_check_pub_key(%struct.TYPE_7__* %84, i32* %85, i32* %12)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88, %83
  %92 = load i32, i32* @DH_F_COMPUTE_KEY, align 4
  %93 = load i32, i32* @DH_R_INVALID_PUBKEY, align 4
  %94 = call i32 @DHerr(i32 %92, i32 %93)
  br label %122

95:                                               ; preds = %88
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32*, i32*)** %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 %100(%struct.TYPE_7__* %101, i32* %102, i32* %103, i32* %106, i32 %109, i32* %110, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %95
  %115 = load i32, i32* @DH_F_COMPUTE_KEY, align 4
  %116 = load i32, i32* @ERR_R_BN_LIB, align 4
  %117 = call i32 @DHerr(i32 %115, i32 %116)
  br label %122

118:                                              ; preds = %95
  %119 = load i32*, i32** %10, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @BN_bn2bin(i32* %119, i8* %120)
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %118, %114, %91, %81, %52, %46, %38, %19
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @BN_CTX_end(i32* %123)
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @BN_CTX_free(i32* %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %122, %30
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @BN_num_bits(i32) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32* @BN_MONT_CTX_set_locked(i32*, i32, i32, i32*) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i32 @DH_check_pub_key(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
