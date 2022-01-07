; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdh_ossl.c_ecdh_simple_compute_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecdh_ossl.c_ecdh_simple_compute_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EC_F_ECDH_SIMPLE_COMPUTE_KEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EC_R_MISSING_PRIVATE_KEY = common dso_local global i32 0, align 4
@EC_FLAG_COFACTOR_ECDH = common dso_local global i32 0, align 4
@EC_R_POINT_ARITHMETIC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecdh_simple_compute_key(i8** %0, i64* %1, i32* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @BN_CTX_new_ex(i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %149

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @BN_CTX_start(i32* %25)
  %27 = load i32*, i32** %9, align 8
  %28 = call i32* @BN_CTX_get(i32* %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %33 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %34 = call i32 @ECerr(i32 %32, i32 %33)
  br label %149

35:                                               ; preds = %24
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = call i32* @EC_KEY_get0_private_key(%struct.TYPE_6__* %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %42 = load i32, i32* @EC_R_MISSING_PRIVATE_KEY, align 4
  %43 = call i32 @ECerr(i32 %41, i32 %42)
  br label %149

44:                                               ; preds = %35
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = call i32* @EC_KEY_get0_group(%struct.TYPE_6__* %45)
  store i32* %46, i32** %13, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = call i32 @EC_KEY_get_flags(%struct.TYPE_6__* %47)
  %49 = load i32, i32* @EC_FLAG_COFACTOR_ECDH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %44
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @EC_GROUP_get_cofactor(i32* %53, i32* %54, i32* null)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @BN_mul(i32* %58, i32* %59, i32* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57, %52
  %65 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %66 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %67 = call i32 @ECerr(i32 %65, i32 %66)
  br label %149

68:                                               ; preds = %57
  %69 = load i32*, i32** %11, align 8
  store i32* %69, i32** %12, align 8
  br label %70

70:                                               ; preds = %68, %44
  %71 = load i32*, i32** %13, align 8
  %72 = call i32* @EC_POINT_new(i32* %71)
  store i32* %72, i32** %10, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %76 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %77 = call i32 @ECerr(i32 %75, i32 %76)
  br label %149

78:                                               ; preds = %70
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @EC_POINT_mul(i32* %79, i32* %80, i32* null, i32* %81, i32* %82, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %88 = load i32, i32* @EC_R_POINT_ARITHMETIC_FAILURE, align 4
  %89 = call i32 @ECerr(i32 %87, i32 %88)
  br label %149

90:                                               ; preds = %78
  %91 = load i32*, i32** %13, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @EC_POINT_get_affine_coordinates(i32* %91, i32* %92, i32* %93, i32* null, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %99 = load i32, i32* @EC_R_POINT_ARITHMETIC_FAILURE, align 4
  %100 = call i32 @ECerr(i32 %98, i32 %99)
  br label %149

101:                                              ; preds = %90
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @EC_GROUP_get_degree(i32* %102)
  %104 = add nsw i32 %103, 7
  %105 = sdiv i32 %104, 8
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %15, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i64 @BN_num_bytes(i32* %107)
  store i64 %108, i64* %16, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load i64, i64* %15, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %101
  %113 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %114 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %115 = call i32 @ECerr(i32 %113, i32 %114)
  br label %149

116:                                              ; preds = %101
  %117 = load i64, i64* %15, align 8
  %118 = call i8* @OPENSSL_malloc(i64 %117)
  store i8* %118, i8** %17, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %122 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %123 = call i32 @ECerr(i32 %121, i32 %122)
  br label %149

124:                                              ; preds = %116
  %125 = load i8*, i8** %17, align 8
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* %16, align 8
  %128 = sub i64 %126, %127
  %129 = call i32 @memset(i8* %125, i32 0, i64 %128)
  %130 = load i64, i64* %16, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = load i64, i64* %15, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i64, i64* %16, align 8
  %136 = sub i64 0, %135
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = call i64 @BN_bn2bin(i32* %131, i8* %137)
  %139 = icmp ne i64 %130, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %124
  %141 = load i32, i32* @EC_F_ECDH_SIMPLE_COMPUTE_KEY, align 4
  %142 = load i32, i32* @ERR_R_BN_LIB, align 4
  %143 = call i32 @ECerr(i32 %141, i32 %142)
  br label %149

144:                                              ; preds = %124
  %145 = load i8*, i8** %17, align 8
  %146 = load i8**, i8*** %5, align 8
  store i8* %145, i8** %146, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load i64*, i64** %6, align 8
  store i64 %147, i64* %148, align 8
  store i8* null, i8** %17, align 8
  store i32 1, i32* %14, align 4
  br label %149

149:                                              ; preds = %144, %140, %120, %112, %97, %86, %74, %64, %40, %31, %23
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @EC_POINT_clear_free(i32* %150)
  %152 = load i32*, i32** %9, align 8
  %153 = call i32 @BN_CTX_end(i32* %152)
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @BN_CTX_free(i32* %154)
  %156 = load i8*, i8** %17, align 8
  %157 = call i32 @OPENSSL_free(i8* %156)
  %158 = load i32, i32* %14, align 4
  ret i32 %158
}

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @EC_KEY_get0_private_key(%struct.TYPE_6__*) #1

declare dso_local i32* @EC_KEY_get0_group(%struct.TYPE_6__*) #1

declare dso_local i32 @EC_KEY_get_flags(%struct.TYPE_6__*) #1

declare dso_local i32 @EC_GROUP_get_cofactor(i32*, i32*, i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_get_degree(i32*) #1

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @EC_POINT_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
