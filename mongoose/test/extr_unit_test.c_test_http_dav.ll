; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_dav.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_dav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@FETCH_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"./data/dav/b.txt\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"./data/dav/d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@s_http_server_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"PROPFIND / HTTP/1.0\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 207\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"a.txt\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"hidden_file.txt\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"MKCOL /d HTTP/1.0\0AContent-Length:5\0A\0A12345\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 415\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"MKCOL /d HTTP/1.0\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 201\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 405\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"MKCOL /x/d HTTP/1.0\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 409\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"PUT /b.txt HTTP/1.0\0AContent-Length: 5\0A\0A12345\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"GET /data/dav/b.txt HTTP/1.0\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 200\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Content-Length: 5\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"\0D\0A12345\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"DELETE /b.txt HTTP/1.0\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 204\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"DELETE /d HTTP/1.0\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"PROPFIND /__blah.txt HTTP/1.0\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 404\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_http_dav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_http_dav() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @FETCH_BUF_SIZE, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = call i32 @remove(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @rmdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  %10 = call i32 @fetch_http(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @ASSERT_STREQ_NZ(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32* @strstr(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = call i32* @strstr(i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = call i32 @fetch_http(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %21 = call i32 @ASSERT_STREQ_NZ(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %22 = call i32 @fetch_http(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %23 = call i32 @ASSERT_STREQ_NZ(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %24 = call i32 @fetch_http(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %25 = call i32 @ASSERT_STREQ_NZ(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %26 = call i32 @fetch_http(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %27 = call i32 @ASSERT_STREQ_NZ(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %28 = call i32 @fetch_http(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0))
  %29 = call i32 @ASSERT_STREQ_NZ(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %30 = call i32 @fetch_http(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %31 = call i32 @ASSERT_STREQ_NZ(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %32 = call i32* @strstr(i8* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = call i32 @strlen(i8* %7)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %7, i64 %37
  %39 = getelementptr inbounds i8, i8* %38, i64 -7
  %40 = call i32 @ASSERT_STREQ(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %41 = call i32 @fetch_http(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %42 = call i32 @ASSERT_STREQ_NZ(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %43 = call i64 @mg_stat(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %3)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = call i32 @fetch_http(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %48 = call i64 @mg_stat(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = call i32 @fetch_http(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0))
  %53 = call i32 @ASSERT_STREQ_NZ(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %54 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @remove(i8*) #2

declare dso_local i32 @rmdir(i8*) #2

declare dso_local i32 @fetch_http(i8*, i8*, i8*) #2

declare dso_local i32 @ASSERT_STREQ_NZ(i8*, i8*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @mg_stat(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
