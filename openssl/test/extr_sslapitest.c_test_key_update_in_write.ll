; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_key_update_in_write.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_key_update_in_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_key_update_in_write.mess = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [15 x i8] c"A test message\00", align 1
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_REQUESTED = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_key_update_in_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_key_update_in_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [20 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = call i32 (...) @bio_s_always_retry()
  %14 = call i32* @BIO_new(i32 %13)
  store i32* %14, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @TEST_ptr(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %1
  %19 = call i32 (...) @TLS_server_method()
  %20 = call i32 (...) @TLS_client_method()
  %21 = load i32, i32* @TLS1_3_VERSION, align 4
  %22 = load i32, i32* @cert, align 4
  %23 = load i32, i32* @privkey, align 4
  %24 = call i32 @create_ssl_ctx_pair(i32 %19, i32 %20, i32 %21, i32 0, i32** %4, i32** %3, i32 %22, i32 %23)
  %25 = call i32 @TEST_true(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @create_ssl_objects(i32* %28, i32* %29, i32** %6, i32** %5, i32* null, i32* null)
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @SSL_ERROR_NONE, align 4
  %37 = call i32 @create_ssl_connection(i32* %34, i32* %35, i32 %36)
  %38 = call i32 @TEST_true(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33, %27, %18, %1
  br label %154

41:                                               ; preds = %33
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  br label %48

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32* [ %45, %44 ], [ %47, %46 ]
  store i32* %49, i32** %11, align 8
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  br label %56

54:                                               ; preds = %48
  %55 = load i32*, i32** %5, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32* [ %53, %52 ], [ %55, %54 ]
  store i32* %57, i32** %12, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @SSL_KEY_UPDATE_REQUESTED, align 4
  %60 = call i32 @SSL_key_update(i32* %58, i32 %59)
  %61 = call i32 @TEST_true(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @SSL_do_handshake(i32* %64)
  %66 = call i32 @TEST_true(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63, %56
  br label %154

69:                                               ; preds = %63
  %70 = load i32*, i32** %12, align 8
  %71 = call i32* @SSL_get_wbio(i32* %70)
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @TEST_ptr(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @BIO_up_ref(i32* %76)
  %78 = call i32 @TEST_true(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75, %69
  store i32* null, i32** %10, align 8
  br label %154

81:                                               ; preds = %75
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @SSL_set0_wbio(i32* %82, i32* %83)
  store i32* null, i32** %9, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i8*, i8** @test_key_update_in_write.mess, align 8
  %87 = load i8*, i8** @test_key_update_in_write.mess, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = call i32 @SSL_write(i32* %85, i8* %86, i32 %88)
  %90 = call i32 @TEST_int_eq(i32 %89, i32 -1)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %81
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @SSL_get_error(i32* %93, i32 0)
  %95 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %96 = call i32 @TEST_int_eq(i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92, %81
  br label %154

99:                                               ; preds = %92
  %100 = load i32*, i32** %12, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @SSL_set0_wbio(i32* %100, i32* %101)
  store i32* null, i32** %10, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %105 = call i32 @SSL_read(i32* %103, i8* %104, i32 20)
  %106 = call i32 @TEST_int_eq(i32 %105, i32 -1)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @SSL_get_error(i32* %109, i32 0)
  %111 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %112 = call i32 @TEST_int_eq(i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %108, %99
  br label %154

115:                                              ; preds = %108
  %116 = load i32*, i32** %12, align 8
  %117 = load i8*, i8** @test_key_update_in_write.mess, align 8
  %118 = load i8*, i8** @test_key_update_in_write.mess, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = call i32 @SSL_write(i32* %116, i8* %117, i32 %119)
  %121 = load i8*, i8** @test_key_update_in_write.mess, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = call i32 @TEST_int_eq(i32 %120, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %128 = call i32 @SSL_read(i32* %126, i8* %127, i32 20)
  %129 = load i8*, i8** @test_key_update_in_write.mess, align 8
  %130 = call i32 @strlen(i8* %129)
  %131 = call i32 @TEST_int_eq(i32 %128, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %125, %115
  br label %154

134:                                              ; preds = %125
  %135 = load i32*, i32** %12, align 8
  %136 = load i8*, i8** @test_key_update_in_write.mess, align 8
  %137 = load i8*, i8** @test_key_update_in_write.mess, align 8
  %138 = call i32 @strlen(i8* %137)
  %139 = call i32 @SSL_write(i32* %135, i8* %136, i32 %138)
  %140 = load i8*, i8** @test_key_update_in_write.mess, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = call i32 @TEST_int_eq(i32 %139, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %134
  %145 = load i32*, i32** %11, align 8
  %146 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %147 = call i32 @SSL_read(i32* %145, i8* %146, i32 20)
  %148 = load i8*, i8** @test_key_update_in_write.mess, align 8
  %149 = call i32 @strlen(i8* %148)
  %150 = call i32 @TEST_int_eq(i32 %147, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %144, %134
  br label %154

153:                                              ; preds = %144
  store i32 1, i32* %7, align 4
  br label %154

154:                                              ; preds = %153, %152, %133, %114, %98, %80, %68, %40
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @SSL_free(i32* %155)
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @SSL_free(i32* %157)
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @SSL_CTX_free(i32* %159)
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @SSL_CTX_free(i32* %161)
  %163 = load i32*, i32** %9, align 8
  %164 = call i32 @BIO_free(i32* %163)
  %165 = load i32*, i32** %10, align 8
  %166 = call i32 @BIO_free(i32* %165)
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @bio_s_always_retry(...) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SSL_key_update(i32*, i32) #1

declare dso_local i32 @SSL_do_handshake(i32*) #1

declare dso_local i32* @SSL_get_wbio(i32*) #1

declare dso_local i32 @BIO_up_ref(i32*) #1

declare dso_local i32 @SSL_set0_wbio(i32*, i32*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_write(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @SSL_read(i32*, i8*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
