; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_driver.c_check_single_test_params.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_driver.c_check_single_test_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@num_tests = common dso_local global i32 0, align 4
@all_tests = common dso_local global %struct.TYPE_2__* null, align 8
@single_test = common dso_local global i32 0, align 4
@single_iter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Invalid -%s value (Value must be a valid test name OR a value between %d..%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"-%s option is not valid for test %d:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Invalid -%s value for test %d:%s\09(Value must be in the range %d..%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @check_single_test_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_single_test_params(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %30, %11
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @num_tests, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_tests, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcmp(i8* %17, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 1, %27
  store i32 %28, i32* @single_test, align 4
  br label %33

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %12

33:                                               ; preds = %26, %12
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @num_tests, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @atoi(i8* %38)
  store i32 %39, i32* @single_test, align 4
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* @single_test, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @single_iter, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* @single_test, align 4
  br label %48

48:                                               ; preds = %47, %44, %41
  %49 = load i32, i32* @single_test, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* @single_test, align 4
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @single_test, align 4
  %56 = load i32, i32* @num_tests, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %51
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @num_tests, align 4
  %61 = call i32 (i8*, i8*, i32, i32, ...) @test_printf_stderr(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %59, i32 1, i32 %60)
  store i32 0, i32* %4, align 4
  br label %120

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* @single_iter, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %119

66:                                               ; preds = %63
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_tests, align 8
  %68 = load i32, i32* @single_test, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %86

75:                                               ; preds = %66
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* @single_test, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_tests, align 8
  %79 = load i32, i32* @single_test, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i8*, i32, i32, ...) @test_printf_stderr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %76, i32 %77, i32 %84)
  store i32 0, i32* %4, align 4
  br label %120

86:                                               ; preds = %66
  %87 = load i32, i32* @single_iter, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @single_iter, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_tests, align 8
  %92 = load i32, i32* @single_test, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %90, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %89, %86
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @single_test, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_tests, align 8
  %103 = load i32, i32* @single_test, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_tests, align 8
  %110 = load i32, i32* @single_test, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, i8*, i32, i32, ...) @test_printf_stderr(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %100, i32 %101, i32 %108, i32 1, i32 %115)
  store i32 0, i32* %4, align 4
  br label %120

117:                                              ; preds = %89
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %63
  store i32 1, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %99, %75, %58
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @test_printf_stderr(i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
