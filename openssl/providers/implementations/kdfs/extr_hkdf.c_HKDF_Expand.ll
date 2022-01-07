; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_hkdf.c_HKDF_Expand.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_hkdf.c_HKDF_Expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64, i8*, i64)* @HKDF_Expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HKDF_Expand(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8, align 1
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %20, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @EVP_MD_size(i32* %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %143

37:                                               ; preds = %7
  %38 = load i32, i32* %18, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %23, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %23, align 8
  %42 = udiv i64 %40, %41
  store i64 %42, i64* %24, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %23, align 8
  %45 = urem i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i64, i64* %24, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %24, align 8
  br label %50

50:                                               ; preds = %47, %37
  %51 = load i64, i64* %24, align 8
  %52 = icmp ugt i64 %51, 255
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %14, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %143

57:                                               ; preds = %53
  %58 = call i32* (...) @HMAC_CTX_new()
  store i32* %58, i32** %16, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %143

61:                                               ; preds = %57
  %62 = load i32*, i32** %16, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @HMAC_Init_ex(i32* %62, i8* %63, i64 %64, i32* %65, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %137

69:                                               ; preds = %61
  store i32 1, i32* %19, align 4
  br label %70

70:                                               ; preds = %133, %69
  %71 = load i32, i32* %19, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %24, align 8
  %74 = icmp ule i64 %72, %73
  br i1 %74, label %75, label %136

75:                                               ; preds = %70
  %76 = load i32, i32* %19, align 4
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %27, align 1
  %78 = load i32, i32* %19, align 4
  %79 = icmp ugt i32 %78, 1
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @HMAC_Init_ex(i32* %81, i8* null, i64 0, i32* null, i32* null)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %137

85:                                               ; preds = %80
  %86 = load i32*, i32** %16, align 8
  %87 = load i64, i64* %23, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @HMAC_Update(i32* %86, i8* %31, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %137

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %75
  %94 = load i32*, i32** %16, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i64, i64* %13, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @HMAC_Update(i32* %94, i8* %95, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %137

101:                                              ; preds = %93
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @HMAC_Update(i32* %102, i8* %27, i32 1)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  br label %137

106:                                              ; preds = %101
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @HMAC_Final(i32* %107, i8* %31, i32* null)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  br label %137

111:                                              ; preds = %106
  %112 = load i64, i64* %22, align 8
  %113 = load i64, i64* %23, align 8
  %114 = add i64 %112, %113
  %115 = load i64, i64* %15, align 8
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* %22, align 8
  %120 = sub i64 %118, %119
  br label %123

121:                                              ; preds = %111
  %122 = load i64, i64* %23, align 8
  br label %123

123:                                              ; preds = %121, %117
  %124 = phi i64 [ %120, %117 ], [ %122, %121 ]
  store i64 %124, i64* %26, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = load i64, i64* %22, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i64, i64* %26, align 8
  %129 = call i32 @memcpy(i8* %127, i8* %31, i64 %128)
  %130 = load i64, i64* %26, align 8
  %131 = load i64, i64* %22, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %22, align 8
  br label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %19, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %19, align 4
  br label %70

136:                                              ; preds = %70
  store i32 1, i32* %17, align 4
  br label %137

137:                                              ; preds = %136, %110, %105, %100, %91, %84, %68
  %138 = trunc i64 %29 to i32
  %139 = call i32 @OPENSSL_cleanse(i8* %31, i32 %138)
  %140 = load i32*, i32** %16, align 8
  %141 = call i32 @HMAC_CTX_free(i32* %140)
  %142 = load i32, i32* %17, align 4
  store i32 %142, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %143

143:                                              ; preds = %137, %60, %56, %36
  %144 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32* @HMAC_CTX_new(...) #2

declare dso_local i32 @HMAC_Init_ex(i32*, i8*, i64, i32*, i32*) #2

declare dso_local i32 @HMAC_Update(i32*, i8*, i32) #2

declare dso_local i32 @HMAC_Final(i32*, i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @HMAC_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
