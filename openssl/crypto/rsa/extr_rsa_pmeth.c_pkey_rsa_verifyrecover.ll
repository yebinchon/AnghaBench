; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_pmeth.c_pkey_rsa_verifyrecover.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_pmeth.c_pkey_rsa_verifyrecover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i8*, i64 }

@RSA_X931_PADDING = common dso_local global i64 0, align 8
@RSA_F_PKEY_RSA_VERIFYRECOVER = common dso_local global i32 0, align 4
@RSA_R_ALGORITHM_MISMATCH = common dso_local global i32 0, align 4
@RSA_R_INVALID_DIGEST_LENGTH = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i64*, i8*, i64)* @pkey_rsa_verifyrecover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_rsa_verifyrecover(%struct.TYPE_11__* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %13, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %125

22:                                               ; preds = %5
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RSA_X931_PADDING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %95

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = call i32 @setup_tbuf(%struct.TYPE_10__* %29, %struct.TYPE_11__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %148

34:                                               ; preds = %28
  %35 = load i64, i64* %11, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @RSA_X931_PADDING, align 8
  %47 = call i32 @RSA_public_decrypt(i64 %35, i8* %36, i8* %39, i32 %45, i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %148

51:                                               ; preds = %34
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %12, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i64
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @EVP_MD_type(i64 %64)
  %66 = call i64 @RSA_X931_hash_id(i32 %65)
  %67 = icmp ne i64 %61, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %51
  %69 = load i32, i32* @RSA_F_PKEY_RSA_VERIFYRECOVER, align 4
  %70 = load i32, i32* @RSA_R_ALGORITHM_MISMATCH, align 4
  %71 = call i32 @RSAerr(i32 %69, i32 %70)
  store i32 0, i32* %6, align 4
  br label %148

72:                                               ; preds = %51
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @EVP_MD_size(i64 %76)
  %78 = icmp ne i32 %73, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @RSA_F_PKEY_RSA_VERIFYRECOVER, align 4
  %81 = load i32, i32* @RSA_R_INVALID_DIGEST_LENGTH, align 4
  %82 = call i32 @RSAerr(i32 %80, i32 %81)
  store i32 0, i32* %6, align 4
  br label %148

83:                                               ; preds = %72
  %84 = load i8*, i8** %8, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = bitcast i8* %90 to i64*
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @memcpy(i8* %87, i64* %91, i32 %92)
  br label %94

94:                                               ; preds = %86, %83
  br label %124

95:                                               ; preds = %22
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RSA_PKCS1_PADDING, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %95
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @EVP_MD_type(i64 %104)
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @int_rsa_verify(i32 %105, i32* null, i32 0, i8* %106, i64* %14, i8* %107, i64 %108, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %148

119:                                              ; preds = %101
  %120 = load i64, i64* %14, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %12, align 4
  br label %123

122:                                              ; preds = %95
  store i32 -1, i32* %6, align 4
  br label %148

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %94
  br label %139

125:                                              ; preds = %5
  %126 = load i64, i64* %11, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @RSA_public_decrypt(i64 %126, i8* %127, i8* %128, i32 %134, i64 %137)
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %125, %124
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %6, align 4
  br label %148

144:                                              ; preds = %139
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64*, i64** %9, align 8
  store i64 %146, i64* %147, align 8
  store i32 1, i32* %6, align 4
  br label %148

148:                                              ; preds = %144, %142, %122, %118, %79, %68, %50, %33
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @setup_tbuf(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @RSA_public_decrypt(i64, i8*, i8*, i32, i64) #1

declare dso_local i64 @RSA_X931_hash_id(i32) #1

declare dso_local i32 @EVP_MD_type(i64) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @EVP_MD_size(i64) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @int_rsa_verify(i32, i32*, i32, i8*, i64*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
