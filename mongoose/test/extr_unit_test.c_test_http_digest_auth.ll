; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_digest_auth.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_digest_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i32 }

@FETCH_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"GET /data/auth/a.txt?a=b HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 401\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"GET /secret HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"/data/auth/a.txt?a=b\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"foo.com\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"joe\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"doe\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"GET /data/auth/a.txt?a=b HTTP/1.0\0D\0A%s\0D\0A\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 200\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"\0D\0A\0D\0Ahi\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"/secret\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"GET /secret HTTP/1.0\0D\0A%s\0D\0A\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Secret!\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"data/auth/non-existing-passwords.txt\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"/data/auth/p%61sswords%2etxt\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"GET /data/auth/p%%61sswords%%2etxt HTTP/1.0\0D\0A%s\0D\0A\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 404\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"/data/auth/Passwords.txt\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"GET /data/auth/Passwords.txt HTTP/1.0\0D\0A%s\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_http_digest_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_http_digest_auth() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca [200 x i8], align 16
  %4 = alloca [40 x i8], align 16
  %5 = alloca %struct.mg_str, align 4
  %6 = alloca %struct.mg_str, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mg_str, align 4
  %9 = load i32, i32* @FETCH_BUF_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = call i32 @fetch_http(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @mg_mk_str(i8* %12)
  %16 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = bitcast %struct.mg_str* %5 to i8*
  %18 = bitcast %struct.mg_str* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %20 = call i32 @mg_http_parse_header(%struct.mg_str* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %19, i32 40)
  %21 = call i32 @ASSERT_GT(i32 %20, i32 0)
  %22 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %22, align 16
  %23 = call i32 @fetch_http(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %25 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %26 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %27 = call i32 @mg_http_create_digest_auth_header(i8* %25, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %29 = call i32 @fetch_http(i8* %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %28)
  %30 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %31 = call i32 @strlen(i8* %12)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %12, i64 %32
  %34 = getelementptr inbounds i8, i8* %33, i64 -7
  %35 = call i32 @ASSERT_STREQ(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %36 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %37 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %38 = call i32 @mg_http_create_digest_auth_header(i8* %36, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %40 = call i32 @fetch_http(i8* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %39)
  %41 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %42 = call i32 @strlen(i8* %12)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %12, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 -7
  %46 = call i32 @ASSERT_STREQ(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %47 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %48 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %49 = call i32 @mg_http_create_digest_auth_header(i8* %47, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %48)
  %50 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %51 = call i32 @fetch_http2(i8* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %50)
  %52 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %53 = call i32 @strlen(i8* %12)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %12, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 -7
  %57 = call i32 @ASSERT_STREQ(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %58 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %59 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %60 = call i32 @mg_http_create_digest_auth_header(i8* %58, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %62 = call i32 @fetch_http2(i8* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %61)
  %63 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %64 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %65 = call i64 @strtoul(i8* %64, i32* null, i32 16)
  store i64 %65, i64* %7, align 8
  %66 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 10
  %69 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i64 %68)
  %70 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %71 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %72 = call i32 @mg_http_create_digest_auth_header(i8* %70, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %71)
  %73 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %74 = call i32 @fetch_http(i8* %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %73)
  %75 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %76 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %77 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %78 = call i32 @mg_http_create_digest_auth_header(i8* %76, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %77)
  %79 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %80 = call i32 @fetch_http(i8* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %79)
  %81 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %82 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %83 = load i64, i64* %7, align 8
  %84 = sub i64 %83, 3600
  %85 = call i32 @sprintf(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i64 %84)
  %86 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %87 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %88 = call i32 @mg_http_create_digest_auth_header(i8* %86, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %87)
  %89 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %90 = call i32 @fetch_http(i8* %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %89)
  %91 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %92 = call i32 @mg_mk_str(i8* %12)
  %93 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %8, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = bitcast %struct.mg_str* %5 to i8*
  %95 = bitcast %struct.mg_str* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 4, i1 false)
  %96 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %97 = call i32 @mg_http_parse_header(%struct.mg_str* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %96, i32 40)
  %98 = call i32 @ASSERT_GT(i32 %97, i32 0)
  %99 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %100 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %101 = call i32 @mg_http_create_digest_auth_header(i8* %99, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %100)
  %102 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %103 = call i32 @fetch_http(i8* %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0), i8* %102)
  %104 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %105 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %106 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %107 = call i32 @mg_http_create_digest_auth_header(i8* %105, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %106)
  %108 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %109 = call i32 @fetch_http(i8* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i8* %108)
  %110 = call i32 @ASSERT_STREQ_NZ(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %111 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %111)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fetch_http(i8*, i8*, i8*) #2

declare dso_local i32 @ASSERT_STREQ_NZ(i8*, i8*) #2

declare dso_local i32 @mg_mk_str(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ASSERT_GT(i32, i32) #2

declare dso_local i32 @mg_http_parse_header(%struct.mg_str*, i8*, i8*, i32) #2

declare dso_local i32 @mg_http_create_digest_auth_header(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fetch_http2(i8*, i8*, i8*, i8*) #2

declare dso_local i64 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
