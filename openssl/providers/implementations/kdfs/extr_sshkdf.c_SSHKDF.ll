; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sshkdf.c_SSHKDF.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sshkdf.c_SSHKDF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i8*, i64, i8, i8*, i64)* @SSHKDF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SSHKDF(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8 signext %7, i8* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i8* %3, i8** %15, align 8
  store i64 %4, i64* %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i8 %7, i8* %19, align 1
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  store i32* null, i32** %22, align 8
  %29 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %23, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %24, align 8
  store i32 0, i32* %25, align 4
  store i64 0, i64* %26, align 8
  store i32 0, i32* %27, align 4
  %33 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %33, i32** %22, align 8
  %34 = load i32*, i32** %22, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %160

37:                                               ; preds = %10
  %38 = load i32*, i32** %22, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @EVP_DigestInit_ex(i32* %38, i32* %39, i32* null)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %154

43:                                               ; preds = %37
  %44 = load i32*, i32** %22, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %44, i8* %45, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %154

50:                                               ; preds = %43
  %51 = load i32*, i32** %22, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %51, i8* %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %154

57:                                               ; preds = %50
  %58 = load i32*, i32** %22, align 8
  %59 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %58, i8* %19, i32 1)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %154

62:                                               ; preds = %57
  %63 = load i32*, i32** %22, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load i64, i64* %18, align 8
  %66 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %63, i8* %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %154

69:                                               ; preds = %62
  %70 = load i32*, i32** %22, align 8
  %71 = call i32 @EVP_DigestFinal_ex(i32* %70, i8* %32, i32* %25)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %154

74:                                               ; preds = %69
  %75 = load i64, i64* %21, align 8
  %76 = load i32, i32* %25, align 4
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %20, align 8
  %81 = load i64, i64* %21, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @memcpy(i8* %80, i8* %32, i32 %82)
  store i32 1, i32* %27, align 4
  br label %154

84:                                               ; preds = %74
  %85 = load i8*, i8** %20, align 8
  %86 = load i32, i32* %25, align 4
  %87 = call i32 @memcpy(i8* %85, i8* %32, i32 %86)
  %88 = load i32, i32* %25, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %26, align 8
  br label %90

90:                                               ; preds = %148, %84
  %91 = load i64, i64* %26, align 8
  %92 = load i64, i64* %21, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %153

94:                                               ; preds = %90
  %95 = load i32*, i32** %22, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @EVP_DigestInit_ex(i32* %95, i32* %96, i32* null)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %154

100:                                              ; preds = %94
  %101 = load i32*, i32** %22, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %101, i8* %102, i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %154

107:                                              ; preds = %100
  %108 = load i32*, i32** %22, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load i64, i64* %16, align 8
  %111 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %108, i8* %109, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  br label %154

114:                                              ; preds = %107
  %115 = load i32*, i32** %22, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = load i64, i64* %26, align 8
  %118 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %115, i8* %116, i64 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %154

121:                                              ; preds = %114
  %122 = load i32*, i32** %22, align 8
  %123 = call i32 @EVP_DigestFinal_ex(i32* %122, i8* %32, i32* %25)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  br label %154

126:                                              ; preds = %121
  %127 = load i64, i64* %21, align 8
  %128 = load i64, i64* %26, align 8
  %129 = load i32, i32* %25, align 4
  %130 = zext i32 %129 to i64
  %131 = add i64 %128, %130
  %132 = icmp ult i64 %127, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %126
  %134 = load i8*, i8** %20, align 8
  %135 = load i64, i64* %26, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i64, i64* %21, align 8
  %138 = load i64, i64* %26, align 8
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  %141 = call i32 @memcpy(i8* %136, i8* %32, i32 %140)
  store i32 1, i32* %27, align 4
  br label %154

142:                                              ; preds = %126
  %143 = load i8*, i8** %20, align 8
  %144 = load i64, i64* %26, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load i32, i32* %25, align 4
  %147 = call i32 @memcpy(i8* %145, i8* %32, i32 %146)
  br label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %25, align 4
  %150 = zext i32 %149 to i64
  %151 = load i64, i64* %26, align 8
  %152 = add i64 %151, %150
  store i64 %152, i64* %26, align 8
  br label %90

153:                                              ; preds = %90
  store i32 1, i32* %27, align 4
  br label %154

154:                                              ; preds = %153, %133, %125, %120, %113, %106, %99, %79, %73, %68, %61, %56, %49, %42
  %155 = load i32*, i32** %22, align 8
  %156 = call i32 @EVP_MD_CTX_free(i32* %155)
  %157 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %158 = call i32 @OPENSSL_cleanse(i8* %32, i32 %157)
  %159 = load i32, i32* %27, align 4
  store i32 %159, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %160

160:                                              ; preds = %154, %36
  %161 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %11, align 4
  ret i32 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, ...) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

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
