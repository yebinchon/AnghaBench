; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_tls1_prf.c_tls1_prf_P_hash.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_tls1_prf.c_tls1_prf_P_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i8*, i64)* @tls1_prf_P_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls1_prf_P_hash(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca [2 x i32], align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %24 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  store i32 0, i32* %21, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  store i32* %28, i32** %23, align 8
  %29 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @OSSL_PARAM_construct_octet_string(i32 %29, i8* %30, i64 %31)
  %33 = load i32*, i32** %23, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %23, align 8
  store i32 %32, i32* %33, align 4
  %35 = call i32 (...) @OSSL_PARAM_construct_end()
  %36 = load i32*, i32** %23, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %39 = call i32 @EVP_MAC_CTX_set_params(i32* %37, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %7
  br label %140

42:                                               ; preds = %7
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @EVP_MAC_init(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %140

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @EVP_MAC_size(i32* %48)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %140

53:                                               ; preds = %47
  %54 = load i32*, i32** %8, align 8
  %55 = call i32* @EVP_MAC_CTX_dup(i32* %54)
  store i32* %55, i32** %17, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %140

59:                                               ; preds = %53
  %60 = load i8*, i8** %11, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32*, i32** %17, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @EVP_MAC_update(i32* %63, i8* %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %140

69:                                               ; preds = %62, %59
  br label %70

70:                                               ; preds = %130, %69
  %71 = load i32*, i32** %17, align 8
  %72 = call i32 @EVP_MAC_final(i32* %71, i8* %27, i64* %20, i64 %25)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %140

75:                                               ; preds = %70
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @EVP_MAC_CTX_free(i32* %76)
  store i32* null, i32** %17, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = call i32* @EVP_MAC_CTX_dup(i32* %78)
  store i32* %79, i32** %16, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %140

83:                                               ; preds = %75
  %84 = load i32*, i32** %16, align 8
  %85 = load i64, i64* %20, align 8
  %86 = call i32 @EVP_MAC_update(i32* %84, i8* %27, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %140

89:                                               ; preds = %83
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %15, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32*, i32** %16, align 8
  %95 = call i32* @EVP_MAC_CTX_dup(i32* %94)
  store i32* %95, i32** %17, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %140

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %89
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32*, i32** %16, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @EVP_MAC_update(i32* %104, i8* %105, i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %140

110:                                              ; preds = %103, %100
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %15, align 8
  %113 = icmp ule i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @EVP_MAC_final(i32* %115, i8* %27, i64* %20, i64 %25)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  br label %140

119:                                              ; preds = %114
  %120 = load i8*, i8** %13, align 8
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @memcpy(i8* %120, i8* %27, i64 %121)
  br label %139

123:                                              ; preds = %110
  %124 = load i32*, i32** %16, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @EVP_MAC_final(i32* %124, i8* %125, i64* null, i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  br label %140

130:                                              ; preds = %123
  %131 = load i32*, i32** %16, align 8
  %132 = call i32 @EVP_MAC_CTX_free(i32* %131)
  store i32* null, i32** %16, align 8
  %133 = load i64, i64* %15, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 %133
  store i8* %135, i8** %13, align 8
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %14, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %14, align 8
  br label %70

139:                                              ; preds = %119
  store i32 1, i32* %21, align 4
  br label %140

140:                                              ; preds = %139, %129, %118, %109, %98, %88, %82, %74, %68, %58, %52, %46, %41
  %141 = load i32*, i32** %16, align 8
  %142 = call i32 @EVP_MAC_CTX_free(i32* %141)
  %143 = load i32*, i32** %17, align 8
  %144 = call i32 @EVP_MAC_CTX_free(i32* %143)
  %145 = trunc i64 %25 to i32
  %146 = call i32 @OPENSSL_cleanse(i8* %27, i32 %145)
  %147 = load i32, i32* %21, align 4
  %148 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %148)
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #2

declare dso_local i32 @OSSL_PARAM_construct_end(...) #2

declare dso_local i32 @EVP_MAC_CTX_set_params(i32*, i32*) #2

declare dso_local i32 @EVP_MAC_init(i32*) #2

declare dso_local i64 @EVP_MAC_size(i32*) #2

declare dso_local i32* @EVP_MAC_CTX_dup(i32*) #2

declare dso_local i32 @EVP_MAC_update(i32*, i8*, i64) #2

declare dso_local i32 @EVP_MAC_final(i32*, i8*, i64*, i64) #2

declare dso_local i32 @EVP_MAC_CTX_free(i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
