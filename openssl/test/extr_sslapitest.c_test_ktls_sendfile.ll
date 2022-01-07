; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ktls_sendfile.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_ktls_sendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@SENDFILE_SZ = common dso_local global i64 0, align 8
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"AES128-GCM-SHA256\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@tmpfilename = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SENDFILE_CHUNK = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i64 0, align 8
@SSL_ERROR_WANT_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ktls_sendfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ktls_sendfile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load i64, i64* @SENDFILE_SZ, align 8
  %18 = call i8* @OPENSSL_zalloc(i64 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i64, i64* @SENDFILE_SZ, align 8
  %20 = call i8* @OPENSSL_zalloc(i64 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @TEST_ptr(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %0
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @TEST_ptr(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 @create_test_sockets(i32* %9, i32* %10)
  %30 = call i32 @TEST_true(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %24, %0
  br label %166

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ktls_chk_platform(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 1, i32* %15, align 4
  br label %166

38:                                               ; preds = %33
  %39 = call i32 (...) @TLS_server_method()
  %40 = call i32 (...) @TLS_client_method()
  %41 = load i32, i32* @TLS1_2_VERSION, align 4
  %42 = load i32, i32* @TLS1_2_VERSION, align 4
  %43 = load i32, i32* @cert, align 4
  %44 = load i32, i32* @privkey, align 4
  %45 = call i32 @create_ssl_ctx_pair(i32 %39, i32 %40, i32 %41, i32 %42, i32** %2, i32** %1, i32 %43, i32 %44)
  %46 = call i32 @TEST_true(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %38
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @SSL_CTX_set_cipher_list(i32* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32*, i32** %2, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @create_ssl_objects2(i32* %54, i32* %55, %struct.TYPE_11__** %4, %struct.TYPE_11__** %3, i32 %56, i32 %57)
  %59 = call i32 @TEST_true(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53, %48, %38
  br label %166

62:                                               ; preds = %53
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = load i32, i32* @SSL_ERROR_NONE, align 4
  %66 = call i32 @create_ssl_connection(%struct.TYPE_11__* %63, %struct.TYPE_11__* %64, i32 %65)
  %67 = call i32 @TEST_true(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @BIO_get_ktls_send(i32 %72)
  %74 = call i32 @TEST_true(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69, %62
  br label %166

77:                                               ; preds = %69
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* @SENDFILE_SZ, align 8
  %80 = call i32 @RAND_bytes(i8* %78, i64 %79)
  %81 = load i32, i32* @tmpfilename, align 4
  %82 = call i8* @BIO_new_file(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @TEST_ptr(i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  br label %166

87:                                               ; preds = %77
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* @SENDFILE_SZ, align 8
  %91 = call i64 @BIO_write(i8* %88, i8* %89, i64 %90)
  %92 = load i64, i64* @SENDFILE_SZ, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %166

95:                                               ; preds = %87
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @BIO_free(i8* %96)
  store i8* null, i8** %7, align 8
  %98 = load i32, i32* @tmpfilename, align 4
  %99 = call i8* @BIO_new_file(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @BIO_get_fp(i8* %100, i32** %16)
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @fileno(i32* %102)
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %160, %95
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* @SENDFILE_SZ, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %165

108:                                              ; preds = %104
  %109 = load i32, i32* @SENDFILE_CHUNK, align 4
  %110 = load i64, i64* @SENDFILE_SZ, align 8
  %111 = load i64, i64* %14, align 8
  %112 = sub nsw i64 %110, %111
  %113 = call i32 @min(i32 %109, i64 %112)
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %129, %108
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i64, i64* %14, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @SSL_sendfile(%struct.TYPE_11__* %115, i32 %116, i64 %117, i32 %118, i32 0)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i64 @SSL_get_error(%struct.TYPE_11__* %123, i32 %124)
  %126 = load i64, i64* @SSL_ERROR_WANT_WRITE, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %166

129:                                              ; preds = %122
  br label %114

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %147, %130
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = load i64, i64* %14, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @SSL_read(%struct.TYPE_11__* %132, i8* %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %131
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = load i32, i32* %12, align 4
  %143 = call i64 @SSL_get_error(%struct.TYPE_11__* %141, i32 %142)
  %144 = load i64, i64* @SSL_ERROR_WANT_READ, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %166

147:                                              ; preds = %140
  br label %131

148:                                              ; preds = %131
  %149 = load i8*, i8** %6, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  %152 = load i32, i32* %13, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = load i64, i64* %14, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @TEST_mem_eq(i8* %151, i32 %152, i8* %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %148
  br label %166

160:                                              ; preds = %148
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* %14, align 8
  %164 = add nsw i64 %163, %162
  store i64 %164, i64* %14, align 8
  br label %104

165:                                              ; preds = %104
  store i32 1, i32* %15, align 4
  br label %166

166:                                              ; preds = %165, %159, %146, %128, %94, %86, %76, %61, %37, %32
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %168 = icmp ne %struct.TYPE_11__* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %171 = call i32 @SSL_shutdown(%struct.TYPE_11__* %170)
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %173 = call i32 @SSL_free(%struct.TYPE_11__* %172)
  br label %174

174:                                              ; preds = %169, %166
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %176 = icmp ne %struct.TYPE_11__* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %179 = call i32 @SSL_shutdown(%struct.TYPE_11__* %178)
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %181 = call i32 @SSL_free(%struct.TYPE_11__* %180)
  br label %182

182:                                              ; preds = %177, %174
  %183 = load i32*, i32** %2, align 8
  %184 = call i32 @SSL_CTX_free(i32* %183)
  %185 = load i32*, i32** %1, align 8
  %186 = call i32 @SSL_CTX_free(i32* %185)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 @BIO_free(i8* %187)
  %189 = load i8*, i8** %8, align 8
  %190 = call i32 @BIO_free(i8* %189)
  %191 = load i8*, i8** %5, align 8
  %192 = call i32 @OPENSSL_free(i8* %191)
  %193 = load i8*, i8** %6, align 8
  %194 = call i32 @OPENSSL_free(i8* %193)
  %195 = load i32, i32* %15, align 4
  ret i32 %195
}

declare dso_local i8* @OPENSSL_zalloc(i64) #1

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_test_sockets(i32*, i32*) #1

declare dso_local i32 @ktls_chk_platform(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @create_ssl_objects2(i32*, i32*, %struct.TYPE_11__**, %struct.TYPE_11__**, i32, i32) #1

declare dso_local i32 @create_ssl_connection(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @BIO_get_ktls_send(i32) #1

declare dso_local i32 @RAND_bytes(i8*, i64) #1

declare dso_local i8* @BIO_new_file(i32, i8*) #1

declare dso_local i64 @BIO_write(i8*, i8*, i64) #1

declare dso_local i32 @BIO_free(i8*) #1

declare dso_local i32 @BIO_get_fp(i8*, i32**) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @SSL_sendfile(%struct.TYPE_11__*, i32, i64, i32, i32) #1

declare dso_local i64 @SSL_get_error(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @SSL_read(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @SSL_shutdown(%struct.TYPE_11__*) #1

declare dso_local i32 @SSL_free(%struct.TYPE_11__*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
