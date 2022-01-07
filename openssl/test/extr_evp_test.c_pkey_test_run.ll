; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_pkey_test_run.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_pkey_test_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (i8*, i8*, i64*, i32, i32)*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"KEYOP_LENGTH_ERROR\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"KEYOP_ERROR\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"KEYOP_MISMATCH\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"INTERNAL_ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @pkey_test_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_test_run(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64 (i8*, i8*, i64*, i32, i32)*, i64 (i8*, i8*, i64*, i32, i32)** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 %12(i8* %15, i8* null, i64* %5, i32 %18, i32 %21)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* %5, align 8
  %26 = call i8* @OPENSSL_malloc(i64 %25)
  store i8* %26, i8** %4, align 8
  %27 = call i32 @TEST_ptr(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  br label %130

32:                                               ; preds = %24
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64 (i8*, i8*, i64*, i32, i32)*, i64 (i8*, i8*, i64*, i32, i32)** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i64 %35(i8* %38, i8* %39, i64* %5, i32 %42, i32 %45)
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  br label %130

51:                                               ; preds = %32
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @memory_err_compare(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58, i8* %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %51
  br label %130

64:                                               ; preds = %51
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i8* null, i8** %66, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @OPENSSL_free(i8* %67)
  store i8* null, i8** %4, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @EVP_PKEY_CTX_dup(i8* %71)
  store i8* %72, i8** %6, align 8
  %73 = call i32 @TEST_ptr(i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %64
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %77, align 8
  br label %130

78:                                               ; preds = %64
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64 (i8*, i8*, i64*, i32, i32)*, i64 (i8*, i8*, i64*, i32, i32)** %80, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i64 %81(i8* %82, i8* null, i64* %5, i32 %85, i32 %88)
  %90 = icmp sle i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %78
  %92 = load i64, i64* %5, align 8
  %93 = call i8* @OPENSSL_malloc(i64 %92)
  store i8* %93, i8** %4, align 8
  %94 = call i32 @TEST_ptr(i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91, %78
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %98, align 8
  br label %130

99:                                               ; preds = %91
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64 (i8*, i8*, i64*, i32, i32)*, i64 (i8*, i8*, i64*, i32, i32)** %101, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i64 %102(i8* %103, i8* %104, i64* %5, i32 %107, i32 %110)
  %112 = icmp sle i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %99
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %115, align 8
  br label %130

116:                                              ; preds = %99
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @memory_err_compare(%struct.TYPE_6__* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %123, i8* %124, i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %116
  br label %130

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129, %128, %113, %96, %75, %63, %48, %29
  %131 = load i8*, i8** %4, align 8
  %132 = call i32 @OPENSSL_free(i8* %131)
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @EVP_PKEY_CTX_free(i8* %133)
  ret i32 1
}

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @memory_err_compare(%struct.TYPE_6__*, i8*, i32, i32, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @EVP_PKEY_CTX_dup(i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
