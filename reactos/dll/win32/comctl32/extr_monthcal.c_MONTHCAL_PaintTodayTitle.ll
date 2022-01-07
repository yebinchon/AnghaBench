; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintTodayTitle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_PaintTodayTitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@MONTHCAL_PaintTodayTitle.fmt_todayW = internal constant [6 x i8] c"%s %s\00", align 1
@MCS_NOTODAY = common dso_local global i32 0, align 4
@COMCTL32_hModule = common dso_local global i32 0, align 4
@IDM_TODAY = common dso_local global i32 0, align 4
@MCS_NOTODAYCIRCLE = common dso_local global i32 0, align 4
@MCS_WEEKNUMBERS = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@DATE_SHORTDATE = common dso_local global i32 0, align 4
@MCSC_TEXT = common dso_local global i64 0, align 8
@DT_CALCRECT = common dso_local global i32 0, align 4
@DT_LEFT = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32*)* @MONTHCAL_PaintTodayTitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MONTHCAL_PaintTodayTitle(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [30 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca [80 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MCS_NOTODAY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %126

21:                                               ; preds = %3
  %22 = load i32, i32* @COMCTL32_hModule, align 4
  %23 = load i32, i32* @IDM_TODAY, align 4
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %25 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(i8* %25)
  %27 = call i32 @LoadStringW(i32 %22, i32 %23, i8* %24, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MCS_NOTODAYCIRCLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  store i32 %35, i32* %13, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MCS_WEEKNUMBERS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %21
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %21
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %51, %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %56, %60
  %62 = call i32 @MONTHCAL_GetDayRectI(%struct.TYPE_7__* %46, i32* %10, i32 %47, i32 6, i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %65 = load i32, i32* @DATE_SHORTDATE, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %69 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %70 = call i32 @ARRAY_SIZE(i8* %69)
  %71 = call i32 @GetDateFormatW(i32 %64, i32 %65, i32* %67, i32* null, i8* %68, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @SelectObject(i32 %72, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @MCSC_TEXT, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SetTextColor(i32 %77, i32 %83)
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %86 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %87 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %88 = call i32 @wsprintfW(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @MONTHCAL_PaintTodayTitle.fmt_todayW, i64 0, i64 0), i8* %86, i8* %87)
  %89 = load i32, i32* %5, align 4
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %91 = load i32, i32* @DT_CALCRECT, align 4
  %92 = load i32, i32* @DT_LEFT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @DT_VCENTER, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @DT_SINGLELINE, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @DrawTextW(i32 %89, i8* %90, i32 -1, i32* %10, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %101 = load i32, i32* @DT_LEFT, align 4
  %102 = load i32, i32* @DT_VCENTER, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @DT_SINGLELINE, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @DrawTextW(i32 %99, i8* %100, i32 -1, i32* %10, i32 %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @MCS_NOTODAYCIRCLE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %45
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 0, %116
  %118 = call i32 @OffsetRect(i32* %11, i32 %117, i32 0)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @MONTHCAL_Circle(%struct.TYPE_7__* %119, i32 %120, i32* %11)
  br label %122

122:                                              ; preds = %113, %45
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @SelectObject(i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %20
  ret void
}

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @MONTHCAL_GetDayRectI(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @GetDateFormatW(i32, i32, i32*, i32*, i8*, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @DrawTextW(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @OffsetRect(i32*, i32, i32) #1

declare dso_local i32 @MONTHCAL_Circle(%struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
