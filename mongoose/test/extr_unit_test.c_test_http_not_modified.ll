; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_not_modified.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_not_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_message = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [88 x i8] c"GET / HTTP/1.0\0AIf-None-Match: \220.123\22\0AIf-Modified-Since: Tue 17 Nov 2015 21:01:56 GMT\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"GET / HTTP/1.0\0AIf-None-Match: \220.7\22\0AIf-Modified-Since: Tue 17 Nov 2015 21:01:56 GMT\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"GET / HTTP/1.0\0AIf-Modified-Since: Tue 17 Nov 2015 21:01:56 GMT\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"GET / HTTP/1.0\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_http_not_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_http_not_modified() #0 {
  %1 = alloca %struct.http_message, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 7, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = call i64 @mg_parse_http(i8* %9, i32 %11, %struct.http_message* %1, i32 1)
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = call i64 @mg_is_not_modified(%struct.http_message* %1, %struct.TYPE_3__* %2)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = call i64 @mg_parse_http(i8* %20, i32 %22, %struct.http_message* %1, i32 1)
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = call i64 @mg_is_not_modified(%struct.http_message* %1, %struct.TYPE_3__* %2)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i64 @mg_parse_http(i8* %31, i32 %33, %struct.http_message* %1, i32 1)
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = call i64 @mg_is_not_modified(%struct.http_message* %1, %struct.TYPE_3__* %2)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i64 @mg_parse_http(i8* %42, i32 %44, %struct.http_message* %1, i32 1)
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = call i64 @mg_is_not_modified(%struct.http_message* %1, %struct.TYPE_3__* %2)
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  ret i8* null
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @mg_parse_http(i8*, i32, %struct.http_message*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @mg_is_not_modified(%struct.http_message*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
