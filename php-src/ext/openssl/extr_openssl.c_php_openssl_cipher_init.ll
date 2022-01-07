; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_cipher_init.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_cipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_openssl_cipher_mode = type { i32, i32, i64 }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"Using an empty Initialization Vector (iv) is potentially insecure and not recommended\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Setting tag length for AEAD cipher failed\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"The tag cannot be used because the cipher method does not support AEAD\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Setting tag for AEAD cipher decryption failed\00", align 1
@OPENSSL_DONT_ZERO_PAD_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Key length cannot be set for the cipher method\00", align 1
@OPENSSL_ZERO_PADDING = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.php_openssl_cipher_mode*, i8**, i64*, i32*, i8**, i64*, i32*, i8*, i32, i32, i32)* @php_openssl_cipher_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_cipher_init(i32* %0, i32* %1, %struct.php_openssl_cipher_mode* %2, i8** %3, i64* %4, i32* %5, i8** %6, i64* %7, i32* %8, i8* %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.php_openssl_cipher_mode*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store %struct.php_openssl_cipher_mode* %2, %struct.php_openssl_cipher_mode** %17, align 8
  store i8** %3, i8*** %18, align 8
  store i64* %4, i64** %19, align 8
  store i32* %5, i32** %20, align 8
  store i8** %6, i8*** %21, align 8
  store i64* %7, i64** %22, align 8
  store i32* %8, i32** %23, align 8
  store i8* %9, i8** %24, align 8
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %32 = load i32*, i32** %20, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %15, align 8
  %34 = call i64 @EVP_CIPHER_iv_length(i32* %33)
  store i64 %34, i64* %31, align 8
  %35 = load i32, i32* %27, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %13
  %38 = load i64*, i64** %22, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i64, i64* %31, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %17, align 8
  %46 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @E_WARNING, align 4
  %51 = call i32 @php_error_docref(i32* null, i32 %50, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44, %41, %37, %13
  %53 = load i32*, i32** %16, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %27, align 4
  %56 = call i32 @EVP_CipherInit_ex(i32* %53, i32* %54, i32* null, i8* null, i8* null, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = call i32 (...) @php_openssl_store_errors()
  %60 = load i32, i32* @FAILURE, align 4
  store i32 %60, i32* %14, align 4
  br label %203

61:                                               ; preds = %52
  %62 = load i8**, i8*** %21, align 8
  %63 = load i64*, i64** %22, align 8
  %64 = load i64, i64* %31, align 8
  %65 = load i32*, i32** %23, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %17, align 8
  %68 = call i32 @php_openssl_validate_iv(i8** %62, i64* %63, i64 %64, i32* %65, i32* %66, %struct.php_openssl_cipher_mode* %67)
  %69 = load i32, i32* @FAILURE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @FAILURE, align 4
  store i32 %72, i32* %14, align 4
  br label %203

73:                                               ; preds = %61
  %74 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %17, align 8
  %75 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load i32, i32* %27, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32*, i32** %16, align 8
  %83 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %17, align 8
  %84 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %25, align 4
  %87 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %82, i32 %85, i32 %86, i8* null)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* @E_WARNING, align 4
  %91 = call i32 @php_error_docref(i32* null, i32 %90, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @FAILURE, align 4
  store i32 %92, i32* %14, align 4
  br label %203

93:                                               ; preds = %81
  br label %127

94:                                               ; preds = %78, %73
  %95 = load i32, i32* %27, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %126, label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %24, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %126

100:                                              ; preds = %97
  %101 = load i32, i32* %25, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %100
  %104 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %17, align 8
  %105 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @E_WARNING, align 4
  %110 = call i32 @php_error_docref(i32* null, i32 %109, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  br label %125

111:                                              ; preds = %103
  %112 = load i32*, i32** %16, align 8
  %113 = load %struct.php_openssl_cipher_mode*, %struct.php_openssl_cipher_mode** %17, align 8
  %114 = getelementptr inbounds %struct.php_openssl_cipher_mode, %struct.php_openssl_cipher_mode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %25, align 4
  %117 = load i8*, i8** %24, align 8
  %118 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %112, i32 %115, i32 %116, i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* @E_WARNING, align 4
  %122 = call i32 @php_error_docref(i32* null, i32 %121, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* @FAILURE, align 4
  store i32 %123, i32* %14, align 4
  br label %203

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %108
  br label %126

126:                                              ; preds = %125, %100, %97, %94
  br label %127

127:                                              ; preds = %126, %93
  %128 = load i64*, i64** %19, align 8
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %30, align 4
  %131 = load i32*, i32** %15, align 8
  %132 = call i32 @EVP_CIPHER_key_length(i32* %131)
  store i32 %132, i32* %29, align 4
  %133 = load i32, i32* %29, align 4
  %134 = load i32, i32* %30, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %168

136:                                              ; preds = %127
  %137 = load i32, i32* @OPENSSL_DONT_ZERO_PAD_KEY, align 4
  %138 = load i32, i32* %26, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load i32*, i32** %16, align 8
  %143 = load i32, i32* %30, align 4
  %144 = call i32 @EVP_CIPHER_CTX_set_key_length(i32* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = call i32 (...) @php_openssl_store_errors()
  %148 = load i32, i32* @E_WARNING, align 4
  %149 = call i32 @php_error_docref(i32* null, i32 %148, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* @FAILURE, align 4
  store i32 %150, i32* %14, align 4
  br label %203

151:                                              ; preds = %141, %136
  %152 = load i32, i32* %29, align 4
  %153 = call i8* @emalloc(i32 %152)
  store i8* %153, i8** %28, align 8
  %154 = load i8*, i8** %28, align 8
  %155 = load i32, i32* %29, align 4
  %156 = call i32 @memset(i8* %154, i32 0, i32 %155)
  %157 = load i8*, i8** %28, align 8
  %158 = load i8**, i8*** %18, align 8
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %30, align 4
  %161 = call i32 @memcpy(i8* %157, i8* %159, i32 %160)
  %162 = load i8*, i8** %28, align 8
  %163 = load i8**, i8*** %18, align 8
  store i8* %162, i8** %163, align 8
  %164 = load i32, i32* %29, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64*, i64** %19, align 8
  store i64 %165, i64* %166, align 8
  %167 = load i32*, i32** %20, align 8
  store i32 1, i32* %167, align 4
  br label %182

168:                                              ; preds = %127
  %169 = load i32, i32* %30, align 4
  %170 = load i32, i32* %29, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load i32*, i32** %16, align 8
  %174 = load i32, i32* %30, align 4
  %175 = call i32 @EVP_CIPHER_CTX_set_key_length(i32* %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = call i32 (...) @php_openssl_store_errors()
  br label %179

179:                                              ; preds = %177, %172, %168
  %180 = load i8**, i8*** %18, align 8
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %28, align 8
  br label %182

182:                                              ; preds = %179, %151
  %183 = load i32*, i32** %16, align 8
  %184 = load i8*, i8** %28, align 8
  %185 = load i8**, i8*** %21, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %27, align 4
  %188 = call i32 @EVP_CipherInit_ex(i32* %183, i32* null, i32* null, i8* %184, i8* %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %182
  %191 = call i32 (...) @php_openssl_store_errors()
  %192 = load i32, i32* @FAILURE, align 4
  store i32 %192, i32* %14, align 4
  br label %203

193:                                              ; preds = %182
  %194 = load i32, i32* %26, align 4
  %195 = load i32, i32* @OPENSSL_ZERO_PADDING, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load i32*, i32** %16, align 8
  %200 = call i32 @EVP_CIPHER_CTX_set_padding(i32* %199, i32 0)
  br label %201

201:                                              ; preds = %198, %193
  %202 = load i32, i32* @SUCCESS, align 4
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %201, %190, %146, %120, %89, %71, %58
  %204 = load i32, i32* %14, align 4
  ret i32 %204
}

declare dso_local i64 @EVP_CIPHER_iv_length(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @php_openssl_store_errors(...) #1

declare dso_local i32 @php_openssl_validate_iv(i8**, i64*, i64, i32*, i32*, %struct.php_openssl_cipher_mode*) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32*, i32, i32, i8*) #1

declare dso_local i32 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(i32*, i32) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
