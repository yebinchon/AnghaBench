; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_range.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FETCH_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"GET /data/range.txt HTTP/1.0\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"HTTP/1.1 200 OK\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Content-Length: 312\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"GET /data/range.txt HTTP/1.0\0ARange: bytes=5-10\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"HTTP/1.1 206 Partial Content\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Content-Length: 6\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Content-Range: bytes 5-10/312\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\0D\0A of co\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"GET /data/range.txt HTTP/1.0\0ARange: bytes=300-\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Content-Length: 12\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Content-Range: bytes 300-311/312\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"\0D\0Ais disease.\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"GET /data/range.txt HTTP/1.0\0ARange: bytes=1000-\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 416\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Content-Length: 0\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Content-Range: bytes */312\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"GET /data/range.txt HTTP/1.0\0ARange: bytes=0-312\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_http_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_http_range() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @FETCH_BUF_SIZE, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %1, align 8
  %6 = alloca i8, i64 %4, align 16
  store i64 %4, i64* %2, align 8
  %7 = call i32 @fetch_http(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @ASSERT_STREQ_NZ(i8* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i64 @strstr(i8* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = call i32 @fetch_http(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 @ASSERT_STREQ_NZ(i8* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %15 = call i64 @strstr(i8* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = call i64 @strstr(i8* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = call i32 @strlen(i8* %6)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %6, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 -8
  %27 = call i32 @ASSERT_STREQ(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %28 = call i32 @fetch_http(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %29 = call i32 @ASSERT_STREQ_NZ(i8* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i64 @strstr(i8* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = call i64 @strstr(i8* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = call i32 @strlen(i8* %6)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %6, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 -14
  %42 = call i32 @ASSERT_STREQ(i8* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %43 = call i32 @fetch_http(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %44 = call i32 @ASSERT_STREQ_NZ(i8* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %45 = call i64 @strstr(i8* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = call i64 @strstr(i8* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = call i32 @fetch_http(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0))
  %54 = call i32 @ASSERT_STREQ_NZ(i8* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %55 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fetch_http(i8*, i8*, i8*) #2

declare dso_local i32 @ASSERT_STREQ_NZ(i8*, i8*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
