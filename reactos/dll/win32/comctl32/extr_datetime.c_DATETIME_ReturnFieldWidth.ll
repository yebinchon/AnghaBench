; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_ReturnFieldWidth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_ReturnFieldWidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i64 }
%struct.TYPE_5__ = type { i32 }

@DATETIME_ReturnFieldWidth.fld_d1W = internal constant [2 x i8] c"2\00", align 1
@DATETIME_ReturnFieldWidth.fld_d2W = internal constant [3 x i8] c"22\00", align 1
@DATETIME_ReturnFieldWidth.fld_d4W = internal constant [5 x i8] c"2222\00", align 1
@DATETIME_ReturnFieldWidth.fld_am1 = internal constant [2 x i8] c"A\00", align 1
@DATETIME_ReturnFieldWidth.fld_am2 = internal constant [3 x i8] c"AM\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"buffer overrun, have %d want %d\0A\00", align 1
@DT_STRING = common dso_local global i32 0, align 4
@DATETIME_ReturnFieldWidth.fld_day = internal constant [10 x i8] c"Wednesday\00", align 1
@DATETIME_ReturnFieldWidth.fld_abbrday = internal constant [4 x i8] c"Wed\00", align 1
@DATETIME_ReturnFieldWidth.fld_mon = internal constant [10 x i8] c"September\00", align 1
@DATETIME_ReturnFieldWidth.fld_abbrmon = internal constant [4 x i8] c"Dec\00", align 1
@LOCALE_SABBREVDAYNAME1 = common dso_local global i32 0, align 4
@LOCALE_SDAYNAME1 = common dso_local global i32 0, align 4
@LOCALE_SABBREVMONTHNAME1 = common dso_local global i32 0, align 4
@LOCALE_SMONTHNAME1 = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32*)* @DATETIME_ReturnFieldWidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DATETIME_ReturnFieldWidth(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [80 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  br label %158

38:                                               ; preds = %29
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %158

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @DT_STRING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %44
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp sgt i32 %64, 79
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 79, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %56
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @DT_STRING, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %71, %76
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(i8* %68, i64 %77, i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 %84
  store i8 0, i8* %85, align 1
  %86 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  store i8* %86, i8** %11, align 8
  br label %149

87:                                               ; preds = %44
  %88 = load i32, i32* %9, align 4
  switch i32 %88, label %147 [
    i32 143, label %89
    i32 145, label %89
    i32 144, label %89
    i32 140, label %89
    i32 142, label %89
    i32 141, label %89
    i32 139, label %89
    i32 133, label %89
    i32 135, label %89
    i32 134, label %89
    i32 130, label %89
    i32 132, label %89
    i32 131, label %89
    i32 129, label %89
    i32 146, label %90
    i32 147, label %90
    i32 136, label %91
    i32 148, label %91
    i32 137, label %91
    i32 149, label %91
    i32 138, label %145
    i32 128, label %146
  ]

89:                                               ; preds = %87, %87, %87, %87, %87, %87, %87, %87, %87, %87, %87, %87, %87, %87
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @DATETIME_ReturnFieldWidth.fld_d2W, i64 0, i64 0), i8** %11, align 8
  br label %148

90:                                               ; preds = %87, %87
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @DATETIME_ReturnFieldWidth.fld_d4W, i64 0, i64 0), i8** %11, align 8
  br label %148

91:                                               ; preds = %87, %87, %87, %87
  %92 = load i32, i32* %9, align 4
  switch i32 %92, label %99 [
    i32 137, label %93
    i32 149, label %95
    i32 136, label %97
  ]

93:                                               ; preds = %91
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @DATETIME_ReturnFieldWidth.fld_abbrday, i64 0, i64 0), i8** %14, align 8
  %94 = load i32, i32* @LOCALE_SABBREVDAYNAME1, align 4
  store i32 %94, i32* %15, align 4
  store i32 7, i32* %17, align 4
  br label %101

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @DATETIME_ReturnFieldWidth.fld_day, i64 0, i64 0), i8** %14, align 8
  %96 = load i32, i32* @LOCALE_SDAYNAME1, align 4
  store i32 %96, i32* %15, align 4
  store i32 7, i32* %17, align 4
  br label %101

97:                                               ; preds = %91
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @DATETIME_ReturnFieldWidth.fld_abbrmon, i64 0, i64 0), i8** %14, align 8
  %98 = load i32, i32* @LOCALE_SABBREVMONTHNAME1, align 4
  store i32 %98, i32* %15, align 4
  store i32 12, i32* %17, align 4
  br label %101

99:                                               ; preds = %91
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @DATETIME_ReturnFieldWidth.fld_mon, i64 0, i64 0), i8** %14, align 8
  %100 = load i32, i32* @LOCALE_SMONTHNAME1, align 4
  store i32 %100, i32* %15, align 4
  store i32 12, i32* %17, align 4
  br label %101

101:                                              ; preds = %99, %97, %95, %93
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %102

102:                                              ; preds = %139, %101
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %142

106:                                              ; preds = %102
  %107 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %108, %109
  %111 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %112 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %113 = call i32 @lstrlenW(i8* %112)
  %114 = call i32 @GetLocaleInfoW(i32 %107, i32 %110, i8* %111, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %106
  %117 = load i32, i32* %6, align 4
  %118 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %119 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %120 = call i32 @lstrlenW(i8* %119)
  %121 = call i32 @GetTextExtentPoint32W(i32 %117, i8* %118, i32 %120, %struct.TYPE_5__* %12)
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %18, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %126, %116
  br label %138

130:                                              ; preds = %106
  %131 = load i32, i32* %6, align 4
  %132 = load i8*, i8** %14, align 8
  %133 = load i8*, i8** %14, align 8
  %134 = call i32 @lstrlenW(i8* %133)
  %135 = call i32 @GetTextExtentPoint32W(i32 %131, i8* %132, i32 %134, %struct.TYPE_5__* %12)
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %18, align 4
  br label %142

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  br label %102

142:                                              ; preds = %130, %102
  %143 = load i32, i32* %18, align 4
  %144 = load i32*, i32** %8, align 8
  store i32 %143, i32* %144, align 4
  br label %158

145:                                              ; preds = %87
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @DATETIME_ReturnFieldWidth.fld_am1, i64 0, i64 0), i8** %11, align 8
  br label %148

146:                                              ; preds = %87
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @DATETIME_ReturnFieldWidth.fld_am2, i64 0, i64 0), i8** %11, align 8
  br label %148

147:                                              ; preds = %87
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @DATETIME_ReturnFieldWidth.fld_d1W, i64 0, i64 0), i8** %11, align 8
  br label %148

148:                                              ; preds = %147, %146, %145, %90, %89
  br label %149

149:                                              ; preds = %148, %67
  %150 = load i32, i32* %6, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = call i32 @strlenW(i8* %152)
  %154 = call i32 @GetTextExtentPoint32W(i32 %150, i8* %151, i32 %153, %struct.TYPE_5__* %12)
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %8, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %142, %43, %32
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @GetLocaleInfoW(i32, i32, i8*, i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @strlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
