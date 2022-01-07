; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_get_http_var.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_get_http_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i8*, i8* }

@.str = private unnamed_addr constant [52 x i8] c"key1=value1&key2=value2&key3=value%203&key4=value+4\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"key1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"value1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"KEY1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"key2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"value2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"key3\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"value 3\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"key4\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"value 4\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"key=broken%2\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"key=broken%2x\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"inexistent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_get_http_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_get_http_var() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca %struct.mg_str, align 8
  %3 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i8* @strlen(i8* %5)
  %7 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 1
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %9 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %8, i32 256)
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %14 = call i32 @ASSERT_STREQ(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %16 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %15, i32 256)
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %21 = call i32 @ASSERT_STREQ(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %23 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %22, i32 256)
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %28 = call i32 @ASSERT_STREQ(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %30 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %29, i32 256)
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %35 = call i32 @ASSERT_STREQ(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %37 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %36, i32 256)
  %38 = icmp sgt i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %42 = call i32 @ASSERT_STREQ(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %43 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* null, i32 256)
  %44 = call i32 @ASSERT_EQ(i64 %43, i32 -2)
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %46 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 0)
  %47 = call i32 @ASSERT_EQ(i64 %46, i32 -2)
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %49 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* null, i8* %48, i32 256)
  %50 = call i32 @ASSERT_EQ(i64 %49, i32 -1)
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %52 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 1)
  %53 = call i32 @ASSERT_EQ(i64 %52, i32 -3)
  %54 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @strlen(i8* %56)
  %58 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %60 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %59, i32 256)
  %61 = icmp slt i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @strlen(i8* %66)
  %68 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %2, i32 0, i32 1
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %70 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %69, i32 256)
  %71 = icmp slt i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %75 = call i64 @mg_get_http_var(%struct.mg_str* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %74, i32 256)
  %76 = call i32 @ASSERT_EQ(i64 %75, i32 -4)
  ret i8* null
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @mg_get_http_var(%struct.mg_str*, i8*, i8*, i32) #1

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #1

declare dso_local i32 @ASSERT_EQ(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
