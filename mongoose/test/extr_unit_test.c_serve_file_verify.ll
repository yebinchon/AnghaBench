; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_serve_file_verify.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_serve_file_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mg_str = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"unit_test.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wrong data\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.http_message*)* @serve_file_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @serve_file_verify(%struct.http_message* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.http_message*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca %struct.mg_str*, align 8
  %8 = alloca %struct.mg_str*, align 8
  store %struct.http_message* %0, %struct.http_message** %3, align 8
  %9 = call i8* @read_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64* %4)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.http_message*, %struct.http_message** %3, align 8
  %15 = getelementptr inbounds %struct.http_message, %struct.http_message* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load %struct.http_message*, %struct.http_message** %3, align 8
  %21 = getelementptr inbounds %struct.http_message, %struct.http_message* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @memcmp(i32 %23, i8* %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19, %12, %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %60

29:                                               ; preds = %19
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load %struct.http_message*, %struct.http_message** %3, align 8
  %33 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store %struct.mg_str* %33, %struct.mg_str** %7, align 8
  %34 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %35 = icmp ne %struct.mg_str* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %39 = load %struct.http_message*, %struct.http_message** %3, align 8
  %40 = getelementptr inbounds %struct.http_message, %struct.http_message* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @snprintf(i8* %38, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %47 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %45, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ASSERT_MG_STREQ(i32 %48, i8* %46)
  %50 = load %struct.http_message*, %struct.http_message** %3, align 8
  %51 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store %struct.mg_str* %51, %struct.mg_str** %8, align 8
  %52 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %53 = icmp ne %struct.mg_str* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %57 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ASSERT_MG_STREQ(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %60

60:                                               ; preds = %29, %28
  %61 = load i8*, i8** %2, align 8
  ret i8* %61
}

declare dso_local i8* @read_file(i8*, i64*) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.mg_str* @mg_get_http_header(%struct.http_message*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ASSERT_MG_STREQ(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
