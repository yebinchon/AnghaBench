; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_locale_date_order.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_locale_date_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@DATEORDER_MDY = common dso_local global i32 0, align 4
@LC_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"33\00", align 1
@DATEORDER_YMD = common dso_local global i32 0, align 4
@DATEORDER_DMY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @locale_date_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locale_date_order(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tm, align 4
  %5 = alloca [128 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @DATEORDER_MDY, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @LC_TIME, align 4
  %14 = call i8* @setlocale(i32 %13, i8* null)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %2, align 4
  br label %78

19:                                               ; preds = %1
  %20 = load i8*, i8** %9, align 8
  %21 = call i8* @pg_strdup(i8* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i32, i32* @LC_TIME, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @setlocale(i32 %22, i8* %23)
  %25 = call i32 @memset(%struct.tm* %4, i32 0, i32 12)
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  store i32 22, i32* %26, align 4
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  store i32 10, i32* %27, align 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  store i32 133, i32* %28, align 4
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %30 = call i64 @my_strftime(i8* %29, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.tm* %4)
  store i64 %30, i64* %10, align 8
  %31 = load i32, i32* @LC_TIME, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @setlocale(i32 %31, i8* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %19
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %2, align 4
  br label %78

40:                                               ; preds = %19
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %42 = call i8* @strstr(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %42, i8** %7, align 8
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %44 = call i8* @strstr(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %44, i8** %6, align 8
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %46 = call i8* @strstr(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52, %49, %40
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %2, align 4
  br label %78

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ult i8* %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @DATEORDER_YMD, align 4
  store i32 %66, i32* %11, align 4
  br label %76

67:                                               ; preds = %61, %57
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ult i8* %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @DATEORDER_DMY, align 4
  store i32 %72, i32* %11, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @DATEORDER_MDY, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %73, %71
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %55, %38, %17
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i8* @setlocale(i32, i8*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @my_strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
