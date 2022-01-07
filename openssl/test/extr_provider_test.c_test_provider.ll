; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_provider_test.c_test_provider.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_provider_test.c_test_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Hello OpenSSL %.20s, greetings from %s!\00", align 1
@OPENSSL_VERSION_STR = common dso_local global i32 0, align 4
@greeting_request = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_provider(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %7 = load i32, i32* @OPENSSL_VERSION_STR, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @BIO_snprintf(i8* %6, i32 256, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %7, i8* %8)
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @OSSL_PROVIDER_load(i32* null, i8* %10)
  store i8* %11, i8** %3, align 8
  %12 = call i64 @TEST_ptr(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @greeting_request, align 8
  %17 = call i32 @OSSL_PROVIDER_get_params(i8* %15, %struct.TYPE_3__* %16)
  %18 = call i64 @TEST_true(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @greeting_request, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  %25 = call i64 @TEST_ptr(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @greeting_request, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @TEST_size_t_gt(i32 %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %37 = call i64 @TEST_str_eq(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @OSSL_PROVIDER_unload(i8* %40)
  %42 = call i64 @TEST_true(i32 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %34, %27, %20, %14, %1
  %45 = phi i1 [ false, %34 ], [ false, %27 ], [ false, %20 ], [ false, %14 ], [ false, %1 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i64 @TEST_ptr(i8*) #1

declare dso_local i8* @OSSL_PROVIDER_load(i32*, i8*) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @OSSL_PROVIDER_get_params(i8*, %struct.TYPE_3__*) #1

declare dso_local i64 @TEST_size_t_gt(i32, i32) #1

declare dso_local i64 @TEST_str_eq(i8*, i8*) #1

declare dso_local i32 @OSSL_PROVIDER_unload(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
