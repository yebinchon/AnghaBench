; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_generate_private_key.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_generate_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_x509_request = type { i64, i32, i32*, i32, i32, i32 }

@MIN_KEY_LENGTH = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"private key length is too short; it needs to be at least %d bits, not %d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"RANDFILE\00", align 1
@RSA_F4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported private key type\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@OPENSSL_EC_NAMED_CURVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.php_x509_request*)* @php_openssl_generate_private_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_openssl_generate_private_key(%struct.php_x509_request* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.php_x509_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.php_x509_request* %0, %struct.php_x509_request** %3, align 8
  store i8* null, i8** %4, align 8
  store i32* null, i32** %7, align 8
  %12 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %13 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MIN_KEY_LENGTH, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @E_WARNING, align 4
  %19 = load i64, i64* @MIN_KEY_LENGTH, align 8
  %20 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %21 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %18, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %22)
  store i32* null, i32** %2, align 8
  br label %182

24:                                               ; preds = %1
  %25 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %26 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %29 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @CONF_get_string(i32 %27, i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = call i32 (...) @php_openssl_store_errors()
  br label %36

36:                                               ; preds = %34, %24
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @php_openssl_load_rand_file(i8* %37, i32* %5, i32* %6)
  %39 = call i32* (...) @EVP_PKEY_new()
  %40 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %41 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = icmp ne i32* %39, null
  br i1 %42, label %43, label %164

43:                                               ; preds = %36
  %44 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %45 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %160 [
    i32 128, label %47
    i32 130, label %71
    i32 131, label %112
  ]

47:                                               ; preds = %43
  %48 = call i32 (...) @PHP_OPENSSL_RAND_ADD_TIME()
  %49 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %50 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @RSA_F4, align 4
  %53 = call i64 @RSA_generate_key(i64 %51, i32 %52, i32* null, i32* null)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %47
  %58 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %59 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @EVP_PKEY_assign_RSA(i32* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %66 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %7, align 8
  br label %70

68:                                               ; preds = %57, %47
  %69 = call i32 (...) @php_openssl_store_errors()
  br label %70

70:                                               ; preds = %68, %64
  br label %163

71:                                               ; preds = %43
  %72 = call i32 (...) @PHP_OPENSSL_RAND_ADD_TIME()
  %73 = call i32* (...) @DSA_new()
  store i32* %73, i32** %9, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %109

76:                                               ; preds = %71
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %79 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @DSA_generate_parameters_ex(i32* %77, i64 %80, i32* null, i32 0, i32* null, i32* null, i32* null)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %76
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 (...) @DSA_get_default_method()
  %86 = call i32 @DSA_set_method(i32* %84, i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @DSA_generate_key(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %83
  %91 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %92 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @EVP_PKEY_assign_DSA(i32* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %99 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %7, align 8
  br label %103

101:                                              ; preds = %90
  %102 = call i32 (...) @php_openssl_store_errors()
  br label %103

103:                                              ; preds = %101, %97
  br label %108

104:                                              ; preds = %83
  %105 = call i32 (...) @php_openssl_store_errors()
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @DSA_free(i32* %106)
  br label %108

108:                                              ; preds = %104, %103
  br label %111

109:                                              ; preds = %76, %71
  %110 = call i32 (...) @php_openssl_store_errors()
  br label %111

111:                                              ; preds = %109, %108
  br label %163

112:                                              ; preds = %43
  %113 = call i32 (...) @PHP_OPENSSL_RAND_ADD_TIME()
  store i32 0, i32* %10, align 4
  %114 = call i32* (...) @DH_new()
  store i32* %114, i32** %11, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %157

117:                                              ; preds = %112
  %118 = load i32*, i32** %11, align 8
  %119 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %120 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @DH_generate_parameters_ex(i32* %118, i64 %121, i32 2, i32* null)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %157

124:                                              ; preds = %117
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 (...) @DH_get_default_method()
  %127 = call i32 @DH_set_method(i32* %125, i32 %126)
  %128 = load i32*, i32** %11, align 8
  %129 = call i32 @DH_check(i32* %128, i32* %10)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %124
  %132 = load i32, i32* %10, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @DH_generate_key(i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %140 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = call i32 @EVP_PKEY_assign_DH(i32* %141, i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %147 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  store i32* %148, i32** %7, align 8
  br label %151

149:                                              ; preds = %138
  %150 = call i32 (...) @php_openssl_store_errors()
  br label %151

151:                                              ; preds = %149, %145
  br label %156

152:                                              ; preds = %134, %131, %124
  %153 = call i32 (...) @php_openssl_store_errors()
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @DH_free(i32* %154)
  br label %156

156:                                              ; preds = %152, %151
  br label %159

157:                                              ; preds = %117, %112
  %158 = call i32 (...) @php_openssl_store_errors()
  br label %159

159:                                              ; preds = %157, %156
  br label %163

160:                                              ; preds = %43
  %161 = load i32, i32* @E_WARNING, align 4
  %162 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %159, %111, %70
  br label %166

164:                                              ; preds = %36
  %165 = call i32 (...) @php_openssl_store_errors()
  br label %166

166:                                              ; preds = %164, %163
  %167 = load i8*, i8** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @php_openssl_write_rand_file(i8* %167, i32 %168, i32 %169)
  %171 = load i32*, i32** %7, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %175 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @EVP_PKEY_free(i32* %176)
  %178 = load %struct.php_x509_request*, %struct.php_x509_request** %3, align 8
  %179 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %178, i32 0, i32 2
  store i32* null, i32** %179, align 8
  store i32* null, i32** %2, align 8
  br label %182

180:                                              ; preds = %166
  %181 = load i32*, i32** %7, align 8
  store i32* %181, i32** %2, align 8
  br label %182

182:                                              ; preds = %180, %173, %17
  %183 = load i32*, i32** %2, align 8
  ret i32* %183
}

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i8* @CONF_get_string(i32, i32, i8*) #1

declare dso_local i32 @php_openssl_store_errors(...) #1

declare dso_local i32 @php_openssl_load_rand_file(i8*, i32*, i32*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @PHP_OPENSSL_RAND_ADD_TIME(...) #1

declare dso_local i64 @RSA_generate_key(i64, i32, i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_assign_RSA(i32*, i32*) #1

declare dso_local i32* @DSA_new(...) #1

declare dso_local i32 @DSA_generate_parameters_ex(i32*, i64, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DSA_set_method(i32*, i32) #1

declare dso_local i32 @DSA_get_default_method(...) #1

declare dso_local i32 @DSA_generate_key(i32*) #1

declare dso_local i32 @EVP_PKEY_assign_DSA(i32*, i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32* @DH_new(...) #1

declare dso_local i32 @DH_generate_parameters_ex(i32*, i64, i32, i32*) #1

declare dso_local i32 @DH_set_method(i32*, i32) #1

declare dso_local i32 @DH_get_default_method(...) #1

declare dso_local i32 @DH_check(i32*, i32*) #1

declare dso_local i32 @DH_generate_key(i32*) #1

declare dso_local i32 @EVP_PKEY_assign_DH(i32*, i32*) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @php_openssl_write_rand_file(i8*, i32, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
