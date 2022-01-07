; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_date_to_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_date_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@date_to_string.formatW = internal constant [43 x i8] c"%s %s %d %02d:%02d:%02d UTC%c%02d%02d %d%s\00", align 16
@date_to_string.formatUTCW = internal constant [33 x i8] c"%s %s %d %02d:%02d:%02d UTC %d%s\00", align 16
@date_to_string.formatNoOffsetW = internal constant [29 x i8] c"%s %s %d %02d:%02d:%02d %d%s\00", align 16
@date_to_string.ADW = internal constant [1 x i8] zeroinitializer, align 1
@date_to_string.BCW = internal constant [6 x i8] c" B.C.\00", align 1
@date_to_string.week_ids = internal constant [7 x i32] [i32 140, i32 146, i32 145, i32 144, i32 143, i32 142, i32 141], align 16
@date_to_string.month_ids = internal constant [12 x i32] [i32 139, i32 135, i32 134, i32 133, i32 132, i32 131, i32 130, i32 129, i32 128, i32 138, i32 137, i32 136], align 16
@TRUE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32*)* @date_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @date_to_string(i32 %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  %13 = alloca [192 x i8], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* %10, align 8
  store i8 45, i8* %18, align 1
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @isnan(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = call i32* (...) @jsstr_nan()
  %28 = call i32 @jsval_string(i32* %27)
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @S_OK, align 4
  store i32 %31, i32* %5, align 4
  br label %168

32:                                               ; preds = %4
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %166

35:                                               ; preds = %32
  %36 = load i32, i32* @LANG_ENGLISH, align 4
  %37 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %38 = call i32 @MAKELANGID(i32 %36, i32 %37)
  %39 = load i32, i32* @SORT_DEFAULT, align 4
  %40 = call i32 @MAKELCID(i32 %38, i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %41, align 16
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @week_day(i32 %43)
  %45 = trunc i64 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* @date_to_string.week_ids, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %51 = call i32 @ARRAY_SIZE(i8* %50)
  %52 = call i32 @GetLocaleInfoW(i32 %42, i32 %48, i8* %49, i32 %51)
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %53, align 16
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @month_from_time(i32 %55)
  %57 = trunc i64 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [12 x i32], [12 x i32]* @date_to_string.month_ids, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %63 = call i32 @ARRAY_SIZE(i8* %62)
  %64 = call i32 @GetLocaleInfoW(i32 %54, i32 %60, i8* %61, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @year_from_time(i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %35
  %70 = load i64, i64* @FALSE, align 8
  store i64 %70, i64* %10, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 0, %71
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %69, %35
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @date_from_time(i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  store i8 43, i8* %18, align 1
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i64, i64* %7, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 0
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i64 @hour_from_time(i32 %90)
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @min_from_time(i32 %93)
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @sec_from_time(i32 %96)
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %15, align 4
  %100 = load i64, i64* %10, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @date_to_string.ADW, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @date_to_string.BCW, i64 0, i64 0)
  %104 = call i32 (i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, ...) @swprintf(i8* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @date_to_string.formatNoOffsetW, i64 0, i64 0), i8* %87, i8* %88, i32 %89, i32 %92, i32 %95, i32 %98, i32 %99, i8* %103)
  br label %155

105:                                              ; preds = %82
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 0
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i64 @hour_from_time(i32 %113)
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* %6, align 4
  %117 = call i64 @min_from_time(i32 %116)
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* %6, align 4
  %120 = call i64 @sec_from_time(i32 %119)
  %121 = trunc i64 %120 to i32
  %122 = load i8, i8* %18, align 1
  %123 = sext i8 %122 to i32
  %124 = load i32, i32* %8, align 4
  %125 = sdiv i32 %124, 60
  %126 = load i32, i32* %8, align 4
  %127 = srem i32 %126, 60
  %128 = load i32, i32* %15, align 4
  %129 = load i64, i64* %10, align 8
  %130 = icmp ne i64 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @date_to_string.ADW, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @date_to_string.BCW, i64 0, i64 0)
  %133 = call i32 (i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, ...) @swprintf(i8* %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @date_to_string.formatW, i64 0, i64 0), i8* %110, i8* %111, i32 %112, i32 %115, i32 %118, i32 %121, i32 %123, i32 %125, i32 %127, i32 %128, i8* %132)
  br label %154

134:                                              ; preds = %105
  %135 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 0
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i64 @hour_from_time(i32 %139)
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* %6, align 4
  %143 = call i64 @min_from_time(i32 %142)
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* %6, align 4
  %146 = call i64 @sec_from_time(i32 %145)
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* %15, align 4
  %149 = load i64, i64* %10, align 8
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @date_to_string.ADW, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @date_to_string.BCW, i64 0, i64 0)
  %153 = call i32 (i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, ...) @swprintf(i8* %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @date_to_string.formatUTCW, i64 0, i64 0), i8* %136, i8* %137, i32 %138, i32 %141, i32 %144, i32 %147, i32 %148, i8* %152)
  br label %154

154:                                              ; preds = %134, %108
  br label %155

155:                                              ; preds = %154, %85
  %156 = getelementptr inbounds [192 x i8], [192 x i8]* %13, i64 0, i64 0
  %157 = call i32* @jsstr_alloc(i8* %156)
  store i32* %157, i32** %14, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %161, i32* %5, align 4
  br label %168

162:                                              ; preds = %155
  %163 = load i32*, i32** %14, align 8
  %164 = call i32 @jsval_string(i32* %163)
  %165 = load i32*, i32** %9, align 8
  store i32 %164, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %32
  %167 = load i32, i32* @S_OK, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %160, %30
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

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

declare dso_local i32 @swprintf(i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, ...) #1

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
