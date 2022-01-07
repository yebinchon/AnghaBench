; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_srp.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_srp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@vbase = common dso_local global i32* null, align 8
@tmpfilename = common dso_local global i8* null, align 8
@srpvfile = common dso_local global i8* null, align 8
@SRP_NO_ERROR = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@ssl_srp_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"SRP-AES-128-CBC-SHA\00", align 1
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"badpass\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_srp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_srp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32* @SRP_VBASE_new(i32* null)
  store i32* %12, i32** @vbase, align 8
  %13 = load i32*, i32** @vbase, align 8
  %14 = call i32 @TEST_ptr(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %150

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %17
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @create_new_vbase(i8* %24, i8* %25)
  %27 = call i32 @TEST_true(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %150

30:                                               ; preds = %23
  br label %58

31:                                               ; preds = %20
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %37, label %47

37:                                               ; preds = %34, %31
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** @tmpfilename, align 8
  %41 = call i32 @create_new_vfile(i8* %38, i8* %39, i8* %40)
  %42 = call i32 @TEST_true(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %150

45:                                               ; preds = %37
  %46 = load i8*, i8** @tmpfilename, align 8
  store i8* %46, i8** %5, align 8
  br label %49

47:                                               ; preds = %34
  %48 = load i8*, i8** @srpvfile, align 8
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i32*, i32** @vbase, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @SRP_VBASE_init(i32* %50, i8* %51)
  %53 = load i32, i32* @SRP_NO_ERROR, align 4
  %54 = call i32 @TEST_int_eq(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %150

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %30
  %59 = call i32 (...) @TLS_server_method()
  %60 = call i32 (...) @TLS_client_method()
  %61 = load i32, i32* @TLS1_VERSION, align 4
  %62 = load i32, i32* @cert, align 4
  %63 = load i32, i32* @privkey, align 4
  %64 = call i32 @create_ssl_ctx_pair(i32 %59, i32 %60, i32 %61, i32 0, i32** %7, i32** %6, i32 %62, i32 %63)
  %65 = call i32 @TEST_true(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %150

68:                                               ; preds = %58
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @ssl_srp_cb, align 4
  %71 = call i32 @SSL_CTX_set_srp_username_callback(i32* %69, i32 %70)
  %72 = call i32 @TEST_int_gt(i32 %71, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %68
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @SSL_CTX_set_cipher_list(i32* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32 @TEST_true(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @TLS1_2_VERSION, align 4
  %82 = call i32 @SSL_CTX_set_max_proto_version(i32* %80, i32 %81)
  %83 = call i32 @TEST_true(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @TLS1_2_VERSION, align 4
  %88 = call i32 @SSL_CTX_set_max_proto_version(i32* %86, i32 %87)
  %89 = call i32 @TEST_true(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32*, i32** %6, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 @SSL_CTX_set_srp_username(i32* %92, i8* %93)
  %95 = call i32 @TEST_int_gt(i32 %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91, %85, %79, %74, %68
  br label %150

98:                                               ; preds = %91
  %99 = load i32, i32* %2, align 4
  %100 = srem i32 %99, 2
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @SSL_CTX_set_srp_password(i32* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %105 = call i32 @TEST_int_gt(i32 %104, i32 0)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %150

108:                                              ; preds = %102
  br label %117

109:                                              ; preds = %98
  %110 = load i32*, i32** %6, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 @SSL_CTX_set_srp_password(i32* %110, i8* %111)
  %113 = call i32 @TEST_int_gt(i32 %112, i32 0)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %150

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %108
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @create_ssl_objects(i32* %118, i32* %119, i32** %9, i32** %8, i32* null, i32* null)
  %121 = call i32 @TEST_true(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  br label %150

124:                                              ; preds = %117
  %125 = load i32*, i32** %9, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* @SSL_ERROR_NONE, align 4
  %128 = call i32 @create_ssl_connection(i32* %125, i32* %126, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load i32, i32* %2, align 4
  %133 = srem i32 %132, 2
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @TEST_true(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  br label %150

139:                                              ; preds = %131
  br label %149

140:                                              ; preds = %124
  %141 = load i32, i32* %2, align 4
  %142 = srem i32 %141, 2
  %143 = icmp eq i32 %142, 1
  %144 = zext i1 %143 to i32
  %145 = call i32 @TEST_true(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  br label %150

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148, %139
  store i32 1, i32* %11, align 4
  br label %150

150:                                              ; preds = %149, %147, %138, %123, %115, %107, %97, %67, %56, %44, %29, %16
  %151 = load i32*, i32** @vbase, align 8
  %152 = call i32 @SRP_VBASE_free(i32* %151)
  store i32* null, i32** @vbase, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @SSL_free(i32* %153)
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @SSL_free(i32* %155)
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @SSL_CTX_free(i32* %157)
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @SSL_CTX_free(i32* %159)
  %161 = load i32, i32* %11, align 4
  ret i32 %161
}

declare dso_local i32* @SRP_VBASE_new(i32*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_new_vbase(i8*, i8*) #1

declare dso_local i32 @create_new_vfile(i8*, i8*, i8*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SRP_VBASE_init(i32*, i8*) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @SSL_CTX_set_srp_username_callback(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_srp_username(i32*, i8*) #1

declare dso_local i32 @SSL_CTX_set_srp_password(i32*, i8*) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @SRP_VBASE_free(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
