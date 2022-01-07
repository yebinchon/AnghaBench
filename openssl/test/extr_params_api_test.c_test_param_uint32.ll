; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_test_param_uint32.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_api_test.c_test_param_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_7__ = type { i64* }

@MAX_LEN = common dso_local global i32 0, align 4
@raw_values = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_param_uint32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_param_uint32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @MAX_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raw_values, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %33

25:                                               ; preds = %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raw_values, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  br label %33

33:                                               ; preds = %25, %24
  %34 = phi i64 [ 8, %24 ], [ %32, %25 ]
  store i64 %34, i64* %9, align 8
  %35 = call i64* @OSSL_PARAM_uint32(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64* %35, i64** %36, align 8
  %37 = trunc i64 %13 to i32
  %38 = call i32 @memset(i8* %15, i32 0, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raw_values, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = call i32 @le_copy(i8* %15, i64* %44, i32 8)
  %46 = call i32 @memcpy(i64* %4, i8* %15, i32 8)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64* %5, i64** %47, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @OSSL_PARAM_set_uint32(%struct.TYPE_7__* %10, i64 %48)
  %50 = call i32 @TEST_true(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %95

53:                                               ; preds = %33
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %55 = call i32 @le_copy(i8* %54, i64* %5, i32 8)
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raw_values, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @TEST_mem_eq(i8* %56, i64 %57, i64* %63, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %95

68:                                               ; preds = %53
  store i64 0, i64* %4, align 8
  %69 = call i32 @OSSL_PARAM_get_uint32(%struct.TYPE_7__* %10, i64* %4)
  %70 = call i32 @TEST_true(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %95

73:                                               ; preds = %68
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %75 = call i32 @le_copy(i8* %74, i64* %4, i32 8)
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raw_values, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = call i32 @TEST_mem_eq(i8* %76, i64 8, i64* %82, i64 8)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %95

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i64* %5, i64** %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raw_values, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = call i32 @test_param_type_extra(%struct.TYPE_7__* %10, i64* %93, i32 8)
  store i32 %94, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %95

95:                                               ; preds = %86, %85, %72, %67, %52
  %96 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64* @OSSL_PARAM_uint32(i8*, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @le_copy(i8*, i64*, i32) #2

declare dso_local i32 @memcpy(i64*, i8*, i32) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @OSSL_PARAM_set_uint32(%struct.TYPE_7__*, i64) #2

declare dso_local i32 @TEST_mem_eq(i8*, i64, i64*, i64) #2

declare dso_local i32 @OSSL_PARAM_get_uint32(%struct.TYPE_7__*, i64*) #2

declare dso_local i32 @test_param_type_extra(%struct.TYPE_7__*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
