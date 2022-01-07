; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_create_utc_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_create_utc_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@create_utc_string.formatADW = internal constant [32 x i8] c"%s, %d %s %d %02d:%02d:%02d UTC\00", align 16
@create_utc_string.formatBCW = internal constant [37 x i8] c"%s, %d %s %d B.C. %02d:%02d:%02d UTC\00", align 16
@create_utc_string.week_ids = internal constant [7 x i32] [i32 140, i32 146, i32 145, i32 144, i32 143, i32 142, i32 141], align 16
@create_utc_string.month_ids = internal constant [12 x i32] [i32 139, i32 135, i32 134, i32 133, i32 132, i32 131, i32 130, i32 129, i32 128, i32 138, i32 137, i32 136], align 16
@TRUE = common dso_local global i64 0, align 8
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @create_utc_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_utc_string(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca [192 x i8], align 16
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_3__* @date_this(i32* %18)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %12, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @JS_E_DATE_EXPECTED, align 4
  %24 = call i32 @throw_type_error(i32* %22, i32 %23, i32* null)
  store i32 %24, i32* %4, align 4
  br label %130

25:                                               ; preds = %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @isnan(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i32* (...) @jsstr_nan()
  %36 = call i32 @jsval_string(i32* %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @S_OK, align 4
  store i32 %39, i32* %4, align 4
  br label %130

40:                                               ; preds = %25
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %128

43:                                               ; preds = %40
  %44 = load i32, i32* @LANG_ENGLISH, align 4
  %45 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %46 = call i32 @MAKELANGID(i32 %44, i32 %45)
  %47 = load i32, i32* @SORT_DEFAULT, align 4
  %48 = call i32 @MAKELCID(i32 %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %49, align 16
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @week_day(i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* @create_utc_string.week_ids, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %61 = call i32 @ARRAY_SIZE(i8* %60)
  %62 = call i32 @GetLocaleInfoW(i32 %50, i32 %58, i8* %59, i32 %61)
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %63, align 16
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @month_from_time(i32 %67)
  %69 = trunc i64 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [12 x i32], [12 x i32]* @create_utc_string.month_ids, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %75 = call i32 @ARRAY_SIZE(i8* %74)
  %76 = call i32 @GetLocaleInfoW(i32 %64, i32 %72, i8* %73, i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @year_from_time(i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %43
  %84 = load i64, i64* @FALSE, align 8
  store i64 %84, i64* %8, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 0, %85
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %83, %43
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @date_from_time(i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = getelementptr inbounds [192 x i8], [192 x i8]* %11, i64 0, i64 0
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @create_utc_string.formatADW, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @create_utc_string.formatBCW, i64 0, i64 0)
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %99 = load i32, i32* %15, align 4
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @hour_from_time(i32 %104)
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @min_from_time(i32 %109)
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @sec_from_time(i32 %114)
  %116 = trunc i64 %115 to i32
  %117 = call i32 @swprintf(i8* %93, i8* %97, i8* %98, i32 %99, i8* %100, i32 %101, i32 %106, i32 %111, i32 %116)
  %118 = getelementptr inbounds [192 x i8], [192 x i8]* %11, i64 0, i64 0
  %119 = call i32* @jsstr_alloc(i8* %118)
  store i32* %119, i32** %13, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %88
  %123 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %123, i32* %4, align 4
  br label %130

124:                                              ; preds = %88
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @jsval_string(i32* %125)
  %127 = load i32*, i32** %7, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %40
  %129 = load i32, i32* @S_OK, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %122, %38, %21
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_3__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i64 @isnan(i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32* @jsstr_nan(...) #1

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @GetLocaleInfoW(i32, i32, i8*, i32) #1

declare dso_local i64 @week_day(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @month_from_time(i32) #1

declare dso_local i32 @year_from_time(i32) #1

declare dso_local i32 @date_from_time(i32) #1

declare dso_local i32 @swprintf(i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @hour_from_time(i32) #1

declare dso_local i64 @min_from_time(i32) #1

declare dso_local i64 @sec_from_time(i32) #1

declare dso_local i32* @jsstr_alloc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
