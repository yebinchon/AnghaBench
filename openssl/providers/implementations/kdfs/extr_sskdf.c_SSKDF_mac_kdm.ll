; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sskdf.c_SSKDF_mac_kdm.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/kdfs/extr_sskdf.c_SSKDF_mac_kdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSKDF_MAX_INLEN = common dso_local global i64 0, align 8
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64)* @SSKDF_mac_kdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SSKDF_mac_kdm(i32* %0, i8* %1, i64 %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7, i8* %8, i64 %9, i8* %10, i64 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca [4 x i8], align 1
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca [2 x i32], align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i64 %2, i64* %16, align 8
  store i64 %3, i64* %17, align 8
  store i8* %4, i8** %18, align 8
  store i64 %5, i64* %19, align 8
  store i8* %6, i8** %20, align 8
  store i64 %7, i64* %21, align 8
  store i8* %8, i8** %22, align 8
  store i64 %9, i64* %23, align 8
  store i8* %10, i8** %24, align 8
  store i64 %11, i64* %25, align 8
  store i32 0, i32* %26, align 4
  %40 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %31, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %32, align 8
  %44 = load i8*, i8** %24, align 8
  store i8* %44, i8** %33, align 8
  store i32* null, i32** %34, align 8
  store i8* %43, i8** %35, align 8
  store i8* null, i8** %36, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  store i32* %45, i32** %38, align 8
  %46 = load i64, i64* %21, align 8
  %47 = load i64, i64* @SSKDF_MAX_INLEN, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %60, label %49

49:                                               ; preds = %12
  %50 = load i64, i64* %23, align 8
  %51 = load i64, i64* @SSKDF_MAX_INLEN, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %25, align 8
  %55 = load i64, i64* @SSKDF_MAX_INLEN, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %25, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %53, %49, %12
  store i32 0, i32* %13, align 4
  store i32 1, i32* %39, align 4
  br label %199

61:                                               ; preds = %57
  %62 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %63 = load i8*, i8** %18, align 8
  %64 = load i64, i64* %19, align 8
  %65 = call i32 @OSSL_PARAM_construct_octet_string(i32 %62, i8* %63, i64 %64)
  %66 = load i32*, i32** %38, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %38, align 8
  store i32 %65, i32* %66, align 4
  %68 = call i32 (...) @OSSL_PARAM_construct_end()
  %69 = load i32*, i32** %38, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %14, align 8
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  %72 = call i32 @EVP_MAC_CTX_set_params(i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %61
  br label %185

75:                                               ; preds = %61
  %76 = load i32*, i32** %14, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %25, align 8
  %81 = call i32 @kmac_init(i32* %76, i8* %77, i64 %78, i64 %79, i64 %80, i8** %36)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %185

84:                                               ; preds = %75
  %85 = load i8*, i8** %36, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i8*, i8** %36, align 8
  store i8* %88, i8** %35, align 8
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @EVP_MAC_init(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  br label %185

94:                                               ; preds = %89
  %95 = load i32*, i32** %14, align 8
  %96 = call i64 @EVP_MAC_size(i32* %95)
  store i64 %96, i64* %28, align 8
  %97 = load i64, i64* %28, align 8
  %98 = icmp ule i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %185

100:                                              ; preds = %94
  %101 = load i64, i64* %25, align 8
  store i64 %101, i64* %29, align 8
  store i64 1, i64* %27, align 8
  br label %102

102:                                              ; preds = %181, %100
  %103 = load i64, i64* %27, align 8
  %104 = lshr i64 %103, 24
  %105 = and i64 %104, 255
  %106 = trunc i64 %105 to i8
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0
  store i8 %106, i8* %107, align 1
  %108 = load i64, i64* %27, align 8
  %109 = lshr i64 %108, 16
  %110 = and i64 %109, 255
  %111 = trunc i64 %110 to i8
  %112 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 1
  store i8 %111, i8* %112, align 1
  %113 = load i64, i64* %27, align 8
  %114 = lshr i64 %113, 8
  %115 = and i64 %114, 255
  %116 = trunc i64 %115 to i8
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 2
  store i8 %116, i8* %117, align 1
  %118 = load i64, i64* %27, align 8
  %119 = and i64 %118, 255
  %120 = trunc i64 %119 to i8
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 3
  store i8 %120, i8* %121, align 1
  %122 = load i32*, i32** %14, align 8
  %123 = call i32* @EVP_MAC_CTX_dup(i32* %122)
  store i32* %123, i32** %34, align 8
  %124 = load i32*, i32** %34, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %143

126:                                              ; preds = %102
  %127 = load i32*, i32** %34, align 8
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 0
  %129 = call i64 @EVP_MAC_update(i32* %127, i8* %128, i64 4)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i32*, i32** %34, align 8
  %133 = load i8*, i8** %20, align 8
  %134 = load i64, i64* %21, align 8
  %135 = call i64 @EVP_MAC_update(i32* %132, i8* %133, i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load i32*, i32** %34, align 8
  %139 = load i8*, i8** %22, align 8
  %140 = load i64, i64* %23, align 8
  %141 = call i64 @EVP_MAC_update(i32* %138, i8* %139, i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %137, %131, %126, %102
  br label %185

144:                                              ; preds = %137
  %145 = load i64, i64* %29, align 8
  %146 = load i64, i64* %28, align 8
  %147 = icmp uge i64 %145, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = load i32*, i32** %34, align 8
  %150 = load i8*, i8** %33, align 8
  %151 = load i64, i64* %29, align 8
  %152 = call i32 @EVP_MAC_final(i32* %149, i8* %150, i32* null, i64 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %148
  br label %185

155:                                              ; preds = %148
  %156 = load i64, i64* %28, align 8
  %157 = load i8*, i8** %33, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 %156
  store i8* %158, i8** %33, align 8
  %159 = load i64, i64* %28, align 8
  %160 = load i64, i64* %29, align 8
  %161 = sub i64 %160, %159
  store i64 %161, i64* %29, align 8
  %162 = load i64, i64* %29, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %184

165:                                              ; preds = %155
  br label %178

166:                                              ; preds = %144
  %167 = load i32*, i32** %34, align 8
  %168 = load i8*, i8** %35, align 8
  %169 = load i64, i64* %29, align 8
  %170 = call i32 @EVP_MAC_final(i32* %167, i8* %168, i32* null, i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %166
  br label %185

173:                                              ; preds = %166
  %174 = load i8*, i8** %33, align 8
  %175 = load i8*, i8** %35, align 8
  %176 = load i64, i64* %29, align 8
  %177 = call i32 @memcpy(i8* %174, i8* %175, i64 %176)
  br label %184

178:                                              ; preds = %165
  %179 = load i32*, i32** %34, align 8
  %180 = call i32 @EVP_MAC_CTX_free(i32* %179)
  store i32* null, i32** %34, align 8
  br label %181

181:                                              ; preds = %178
  %182 = load i64, i64* %27, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %27, align 8
  br label %102

184:                                              ; preds = %173, %164
  store i32 1, i32* %26, align 4
  br label %185

185:                                              ; preds = %184, %172, %154, %143, %99, %93, %83, %74
  %186 = load i8*, i8** %36, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i8*, i8** %36, align 8
  %190 = load i64, i64* %17, align 8
  %191 = call i32 @OPENSSL_clear_free(i8* %189, i64 %190)
  br label %195

192:                                              ; preds = %185
  %193 = trunc i64 %41 to i32
  %194 = call i32 @OPENSSL_cleanse(i8* %43, i32 %193)
  br label %195

195:                                              ; preds = %192, %188
  %196 = load i32*, i32** %34, align 8
  %197 = call i32 @EVP_MAC_CTX_free(i32* %196)
  %198 = load i32, i32* %26, align 4
  store i32 %198, i32* %13, align 4
  store i32 1, i32* %39, align 4
  br label %199

199:                                              ; preds = %195, %60
  %200 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %13, align 4
  ret i32 %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i64) #2

declare dso_local i32 @OSSL_PARAM_construct_end(...) #2

declare dso_local i32 @EVP_MAC_CTX_set_params(i32*, i32*) #2

declare dso_local i32 @kmac_init(i32*, i8*, i64, i64, i64, i8**) #2

declare dso_local i32 @EVP_MAC_init(i32*) #2

declare dso_local i64 @EVP_MAC_size(i32*) #2

declare dso_local i32* @EVP_MAC_CTX_dup(i32*) #2

declare dso_local i64 @EVP_MAC_update(i32*, i8*, i64) #2

declare dso_local i32 @EVP_MAC_final(i32*, i8*, i32*, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @EVP_MAC_CTX_free(i32*) #2

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #2

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
