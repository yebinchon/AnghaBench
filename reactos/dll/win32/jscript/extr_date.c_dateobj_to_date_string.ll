; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_dateobj_to_date_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_dateobj_to_date_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@dateobj_to_date_string.formatADW = internal constant [12 x i8] c"%s %s %d %d\00", align 1
@dateobj_to_date_string.formatBCW = internal constant [17 x i8] c"%s %s %d %d B.C.\00", align 16
@dateobj_to_date_string.week_ids = internal constant [7 x i32] [i32 140, i32 146, i32 145, i32 144, i32 143, i32 142, i32 141], align 16
@dateobj_to_date_string.month_ids = internal constant [12 x i32] [i32 139, i32 135, i32 134, i32 133, i32 132, i32 131, i32 130, i32 129, i32 128, i32 138, i32 137, i32 136], align 16
@TRUE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @dateobj_to_date_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dateobj_to_date_string(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [192 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @isnan(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32* (...) @jsstr_nan()
  %26 = call i32 @jsval_string(i32* %25)
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @S_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %102

30:                                               ; preds = %2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = call i32 @local_time(i32 %33, %struct.TYPE_4__* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %100

38:                                               ; preds = %30
  %39 = load i32, i32* @LANG_ENGLISH, align 4
  %40 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %41 = call i32 @MAKELANGID(i32 %39, i32 %40)
  %42 = load i32, i32* @SORT_DEFAULT, align 4
  %43 = call i32 @MAKELCID(i32 %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %44, align 16
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @week_day(i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [7 x i32], [7 x i32]* @dateobj_to_date_string.week_ids, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %54 = call i32 @ARRAY_SIZE(i8* %53)
  %55 = call i32 @GetLocaleInfoW(i32 %45, i32 %51, i8* %52, i32 %54)
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %56, align 16
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @month_from_time(i32 %58)
  %60 = trunc i64 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [12 x i32], [12 x i32]* @dateobj_to_date_string.month_ids, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(i8* %65)
  %67 = call i32 @GetLocaleInfoW(i32 %57, i32 %63, i8* %64, i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @year_from_time(i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %38
  %73 = load i64, i64* @FALSE, align 8
  store i64 %73, i64* %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 0, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %72, %38
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @date_from_time(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = getelementptr inbounds [192 x i8], [192 x i8]* %9, i64 0, i64 0
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @dateobj_to_date_string.formatADW, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @dateobj_to_date_string.formatBCW, i64 0, i64 0)
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @swprintf(i8* %80, i8* %84, i8* %85, i8* %86, i32 %87, i32 %88)
  %90 = getelementptr inbounds [192 x i8], [192 x i8]* %9, i64 0, i64 0
  %91 = call i32* @jsstr_alloc(i8* %90)
  store i32* %91, i32** %10, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %77
  %95 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %95, i32* %3, align 4
  br label %102

96:                                               ; preds = %77
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @jsval_string(i32* %97)
  %99 = load i32*, i32** %5, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %30
  %101 = load i32, i32* @S_OK, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %94, %28
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @isnan(i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32* @jsstr_nan(...) #1

declare dso_local i32 @local_time(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @GetLocaleInfoW(i32, i32, i8*, i32) #1

declare dso_local i64 @week_day(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @month_from_time(i32) #1

declare dso_local i32 @year_from_time(i32) #1

declare dso_local i32 @date_from_time(i32) #1

declare dso_local i32 @swprintf(i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32* @jsstr_alloc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
