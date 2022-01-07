; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_base64.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"longer string\00", align 1
@__const.test_base64.cases = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"\D0\BA\D1\8E\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"AAAA----\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Q2VzYW50YQ==\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Cesanta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_base64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_base64() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = alloca i64, align 8
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [8192 x i8], align 16
  %5 = bitcast [2 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([2 x i8*]* @__const.test_base64.cases to i8*), i64 16, i1 false)
  store i64 0, i64* %2, align 8
  br label %6

6:                                                ; preds = %30, %0
  %7 = load i64, i64* %2, align 8
  %8 = icmp ult i64 %7, 2
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %18 = call i32 @mg_base64_encode(i8* %12, i32 %16, i8* %17)
  %19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %20 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %21 = call i32 @strlen(i8* %20)
  %22 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %23 = call i32 @mg_base64_decode(i8* %19, i32 %21, i8* %22)
  %24 = load i64, i64* %2, align 8
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %28 = call i32 @strcmp(i8* %26, i8* %27)
  %29 = call i32 @ASSERT_EQ(i32 %28, i32 0)
  br label %30

30:                                               ; preds = %9
  %31 = load i64, i64* %2, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %2, align 8
  br label %6

33:                                               ; preds = %6
  %34 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %35 = call i32 @mg_base64_decode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4, i8* %34)
  %36 = call i32 @ASSERT_EQ(i32 %35, i32 0)
  %37 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %38 = call i32 @mg_base64_decode(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8, i8* %37)
  %39 = call i32 @ASSERT_EQ(i32 %38, i32 4)
  %40 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %41 = call i32 @mg_base64_decode(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 12, i8* %40)
  %42 = call i32 @ASSERT_EQ(i32 %41, i32 12)
  %43 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %44 = call i32 @ASSERT_STREQ(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mg_base64_encode(i8*, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @mg_base64_decode(i8*, i32, i8*) #2

declare dso_local i32 @ASSERT_EQ(i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
