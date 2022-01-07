; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_test_log_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_test_log_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"execute_cmp_ctx_log_cb_test\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"(unknown function)\00", align 1
@OPENSSL_FILE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"(no file)\00", align 1
@test_log_line = common dso_local global i32 0, align 4
@OSSL_CMP_LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@test_log_cb_res = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i8*)* @test_log_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_log_cb(i8* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %14, %5
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** @OPENSSL_FILE, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @test_log_line, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @OSSL_CMP_LOG_INFO, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %34
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %41, %38, %31, %23, %14
  %46 = phi i1 [ false, %38 ], [ false, %31 ], [ false, %23 ], [ false, %14 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* @test_log_cb_res, align 4
  ret i32 1
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
