; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_parse_config.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_x509_request = type { i8*, i8*, i8*, i8*, i8*, i32, i32*, i32, i32*, i32*, i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@default_ssl_conf_filename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"config_section_name\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"oid_file\00", align 1
@PKCS7_BINARY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"digest_alg\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"default_md\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"x509_extensions\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"req_extensions\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"private_key_bits\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"default_bits\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"private_key_type\00", align 1
@OPENSSL_KEYTYPE_DEFAULT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"encrypt_key\00", align 1
@IS_TRUE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"encrypt_rsa_key\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"encrypt_key_cipher\00", align 1
@IS_LONG = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [42 x i8] c"Unknown cipher algorithm for private key.\00", align 1
@extensions_section = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"string_mask\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Invalid global string mask setting %s\00", align 1
@request_extensions_section = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i64 0, align 8
@NID_undef = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.php_x509_request*, i32*)* @php_openssl_parse_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_openssl_parse_config(%struct.php_x509_request* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.php_x509_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.php_x509_request* %0, %struct.php_x509_request** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %12 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** @default_ssl_conf_filename, align 8
  %15 = call i32 @SET_OPTIONAL_STRING_ARG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14)
  %16 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %17 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @SET_OPTIONAL_STRING_ARG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i8*, i8** @default_ssl_conf_filename, align 8
  %21 = call i8* @CONF_load(i32* null, i8* %20, i32* null)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %24 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %23, i32 0, i32 13
  store i32* %22, i32** %24, align 8
  %25 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %26 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %25, i32 0, i32 13
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 (...) @php_openssl_store_errors()
  br label %31

31:                                               ; preds = %29, %2
  %32 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %33 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @CONF_load(i32* null, i8* %34, i32* null)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %38 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %37, i32 0, i32 6
  store i32* %36, i32** %38, align 8
  %39 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %40 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = call i32 (...) @php_openssl_store_errors()
  %45 = load i32, i32* @FAILURE, align 4
  store i32 %45, i32* %3, align 4
  br label %288

46:                                               ; preds = %31
  %47 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %48 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = call i8* @CONF_get_string(i32* %49, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (...) @php_openssl_store_errors()
  br label %74

55:                                               ; preds = %46
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @php_openssl_open_base_dir_chk(i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @PKCS7_BINARY, align 4
  %62 = call i32 @PHP_OPENSSL_BIO_MODE_R(i32 %61)
  %63 = call i32* @BIO_new_file(i8* %60, i32 %62)
  store i32* %63, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @OBJ_create_objects(i32* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @BIO_free(i32* %69)
  %71 = call i32 (...) @php_openssl_store_errors()
  br label %72

72:                                               ; preds = %66, %59
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %76 = call i32 @php_openssl_add_oid_section(%struct.php_x509_request* %75)
  %77 = load i32, i32* @FAILURE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @FAILURE, align 4
  store i32 %80, i32* %3, align 4
  br label %288

81:                                               ; preds = %74
  %82 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %83 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %86 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %89 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @CONF_get_string(i32* %87, i8* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32 @SET_OPTIONAL_STRING_ARG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %84, i8* %91)
  %93 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %94 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %97 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %100 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @CONF_get_string(i32* %98, i8* %101, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %103 = call i32 @SET_OPTIONAL_STRING_ARG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %95, i8* %102)
  %104 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %105 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %108 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %111 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @CONF_get_string(i32* %109, i8* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %114 = call i32 @SET_OPTIONAL_STRING_ARG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %106, i8* %113)
  %115 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %116 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %115, i32 0, i32 12
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %119 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %122 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @CONF_get_number(i32* %120, i8* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %125 = call i32 @SET_OPTIONAL_LONG_ARG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %117, i32 %124)
  %126 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %127 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @OPENSSL_KEYTYPE_DEFAULT, align 4
  %130 = call i32 @SET_OPTIONAL_LONG_ARG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32*, i32** %5, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %147

133:                                              ; preds = %81
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @Z_ARRVAL_P(i32* %134)
  %136 = call i32* @zend_hash_str_find(i32 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 11)
  store i32* %136, i32** %7, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %133
  %139 = load i32*, i32** %7, align 8
  %140 = call i64 @Z_TYPE_P(i32* %139)
  %141 = load i64, i64* @IS_TRUE, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 1, i32 0
  %145 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %146 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 8
  br label %180

147:                                              ; preds = %133, %81
  %148 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %149 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %148, i32 0, i32 6
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %152 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i8* @CONF_get_string(i32* %150, i8* %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  store i8* %154, i8** %6, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %147
  %158 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %159 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %158, i32 0, i32 6
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %162 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i8* @CONF_get_string(i32* %160, i8* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i8* %164, i8** %6, align 8
  %165 = call i32 (...) @php_openssl_store_errors()
  br label %166

166:                                              ; preds = %157, %147
  %167 = load i8*, i8** %6, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load i8*, i8** %6, align 8
  %171 = call i64 @strcmp(i8* %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %175 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %174, i32 0, i32 5
  store i32 0, i32* %175, align 8
  br label %179

176:                                              ; preds = %169, %166
  %177 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %178 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %177, i32 0, i32 5
  store i32 1, i32* %178, align 8
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179, %138
  %181 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %182 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %214

185:                                              ; preds = %180
  %186 = load i32*, i32** %5, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %214

188:                                              ; preds = %185
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @Z_ARRVAL_P(i32* %189)
  %191 = call i32* @zend_hash_str_find(i32 %190, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 18)
  store i32* %191, i32** %7, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %214

193:                                              ; preds = %188
  %194 = load i32*, i32** %7, align 8
  %195 = call i64 @Z_TYPE_P(i32* %194)
  %196 = load i64, i64* @IS_LONG, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %193
  %199 = load i32*, i32** %7, align 8
  %200 = call i32 @Z_LVAL_P(i32* %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = call i32* @php_openssl_get_evp_cipher_from_algo(i32 %201)
  store i32* %202, i32** %10, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = load i32, i32* @E_WARNING, align 4
  %207 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %206, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %208 = load i32, i32* @FAILURE, align 4
  store i32 %208, i32* %3, align 4
  br label %288

209:                                              ; preds = %198
  %210 = load i32*, i32** %10, align 8
  %211 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %212 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %211, i32 0, i32 10
  store i32* %210, i32** %212, align 8
  br label %213

213:                                              ; preds = %209
  br label %217

214:                                              ; preds = %193, %188, %185, %180
  %215 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %216 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %215, i32 0, i32 10
  store i32* null, i32** %216, align 8
  br label %217

217:                                              ; preds = %214, %213
  %218 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %219 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = icmp eq i8* %220, null
  br i1 %221, label %222, label %232

222:                                              ; preds = %217
  %223 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %224 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %223, i32 0, i32 6
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %227 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = call i8* @CONF_get_string(i32* %225, i8* %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %230 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %231 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %230, i32 0, i32 2
  store i8* %229, i8** %231, align 8
  br label %232

232:                                              ; preds = %222, %217
  %233 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %234 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %233, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %246

237:                                              ; preds = %232
  %238 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %239 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = call i32* @EVP_get_digestbyname(i8* %240)
  %242 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %243 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %242, i32 0, i32 9
  store i32* %241, i32** %243, align 8
  %244 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %245 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %244, i32 0, i32 8
  store i32* %241, i32** %245, align 8
  br label %248

246:                                              ; preds = %232
  %247 = call i32 (...) @php_openssl_store_errors()
  br label %248

248:                                              ; preds = %246, %237
  %249 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %250 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %249, i32 0, i32 9
  %251 = load i32*, i32** %250, align 8
  %252 = icmp eq i32* %251, null
  br i1 %252, label %253, label %260

253:                                              ; preds = %248
  %254 = call i32* (...) @EVP_sha1()
  %255 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %256 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %255, i32 0, i32 8
  store i32* %254, i32** %256, align 8
  %257 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %258 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %257, i32 0, i32 9
  store i32* %254, i32** %258, align 8
  %259 = call i32 (...) @php_openssl_store_errors()
  br label %260

260:                                              ; preds = %253, %248
  %261 = load i32, i32* @extensions_section, align 4
  %262 = call i32 @PHP_SSL_CONFIG_SYNTAX_CHECK(i32 %261)
  %263 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %264 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %263, i32 0, i32 6
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.php_x509_request*, %struct.php_x509_request** %4, align 8
  %267 = getelementptr inbounds %struct.php_x509_request, %struct.php_x509_request* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = call i8* @CONF_get_string(i32* %265, i8* %268, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  store i8* %269, i8** %6, align 8
  %270 = load i8*, i8** %6, align 8
  %271 = icmp eq i8* %270, null
  br i1 %271, label %272, label %274

272:                                              ; preds = %260
  %273 = call i32 (...) @php_openssl_store_errors()
  br label %284

274:                                              ; preds = %260
  %275 = load i8*, i8** %6, align 8
  %276 = call i32 @ASN1_STRING_set_default_mask_asc(i8* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %274
  %279 = load i32, i32* @E_WARNING, align 4
  %280 = load i8*, i8** %6, align 8
  %281 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %279, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i8* %280)
  %282 = load i32, i32* @FAILURE, align 4
  store i32 %282, i32* %3, align 4
  br label %288

283:                                              ; preds = %274
  br label %284

284:                                              ; preds = %283, %272
  %285 = load i32, i32* @request_extensions_section, align 4
  %286 = call i32 @PHP_SSL_CONFIG_SYNTAX_CHECK(i32 %285)
  %287 = load i32, i32* @SUCCESS, align 4
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %284, %278, %205, %79, %43
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i32 @SET_OPTIONAL_STRING_ARG(i8*, i8*, i8*) #1

declare dso_local i8* @CONF_load(i32*, i8*, i32*) #1

declare dso_local i32 @php_openssl_store_errors(...) #1

declare dso_local i8* @CONF_get_string(i32*, i8*, i8*) #1

declare dso_local i32 @php_openssl_open_base_dir_chk(i8*) #1

declare dso_local i32* @BIO_new_file(i8*, i32) #1

declare dso_local i32 @PHP_OPENSSL_BIO_MODE_R(i32) #1

declare dso_local i32 @OBJ_create_objects(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @php_openssl_add_oid_section(%struct.php_x509_request*) #1

declare dso_local i32 @SET_OPTIONAL_LONG_ARG(i8*, i32, i32) #1

declare dso_local i32 @CONF_get_number(i32*, i8*, i8*) #1

declare dso_local i32* @zend_hash_str_find(i32, i8*, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32* @php_openssl_get_evp_cipher_from_algo(i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local i32 @PHP_SSL_CONFIG_SYNTAX_CHECK(i32) #1

declare dso_local i32 @ASN1_STRING_set_default_mask_asc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
