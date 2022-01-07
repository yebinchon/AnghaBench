; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_keygen_test_run.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_keygen_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32*, i32* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"KEYGEN_GENERATE_ERROR\00", align 1
@private_keys = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Duplicate key %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @keygen_test_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keygen_test_run(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  store i32* null, i32** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @EVP_PKEY_keygen(i32 %14, i32** %5)
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %61

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @private_keys, align 8
  %30 = call i64 @find_key(i32* null, i32* %28, %struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @TEST_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %35)
  br label %61

37:                                               ; preds = %25
  %38 = call %struct.TYPE_9__* @OPENSSL_malloc(i32 24)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %6, align 8
  %39 = call i32 @TEST_ptr(%struct.TYPE_9__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %61

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @private_keys, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** @private_keys, align 8
  br label %60

57:                                               ; preds = %20
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @EVP_PKEY_free(i32* %58)
  br label %60

60:                                               ; preds = %57, %42
  store i32 1, i32* %2, align 4
  br label %64

61:                                               ; preds = %41, %32, %17
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @EVP_PKEY_free(i32* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @EVP_PKEY_keygen(i32, i32**) #1

declare dso_local i64 @find_key(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @TEST_info(i8*, i32*) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
