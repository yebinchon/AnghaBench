; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_encode_test_init.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_encode_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"canonical\00", align 1
@BASE64_CANONICAL_ENCODING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@BASE64_VALID_ENCODING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@BASE64_INVALID_ENCODING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"DECODE_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Bad encoding: %s. Should be one of {canonical, valid, invalid}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @encode_test_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_test_init(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.TYPE_9__* @OPENSSL_zalloc(i32 4)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %6, align 8
  %8 = call i32 @TEST_ptr(%struct.TYPE_9__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @BASE64_CANONICAL_ENCODING, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %47

19:                                               ; preds = %11
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @BASE64_VALID_ENCODING, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %46

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* @BASE64_INVALID_ENCODING, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = call %struct.TYPE_9__* @OPENSSL_strdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %37, align 8
  %38 = call i32 @TEST_ptr(%struct.TYPE_9__* %35)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %51

41:                                               ; preds = %31
  br label %45

42:                                               ; preds = %27
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @TEST_error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  br label %51

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %23
  br label %47

47:                                               ; preds = %46, %15
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %50, align 8
  store i32 1, i32* %3, align 4
  br label %54

51:                                               ; preds = %42, %40
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = call i32 @OPENSSL_free(%struct.TYPE_9__* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %47, %10
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @TEST_ptr(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @OPENSSL_zalloc(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @TEST_error(i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
