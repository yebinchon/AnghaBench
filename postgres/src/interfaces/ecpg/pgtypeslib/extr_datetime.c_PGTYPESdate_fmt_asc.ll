; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_datetime.c_PGTYPESdate_fmt_asc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_datetime.c_PGTYPESdate_fmt_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }
%union.un_fmt_comb = type { i8* }
%struct.tm = type { i32, i32, i32 }

@PGTYPESdate_fmt_asc.mapping = internal global [7 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 137 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 138 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 135 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 136 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 134 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 133 }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"ddd\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mmm\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"yyyy\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@pgtypes_date_weekdays_short = common dso_local global i8** null, align 8
@months = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PGTYPES_DATE_NUM_MAX_DIGITS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02u\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%04u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGTYPESdate_fmt_asc(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.un_fmt_comb, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tm, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcpy(i8* %17, i8* %18)
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @date2j(i32 2000, i32 1, i32 1)
  %22 = add nsw i64 %20, %21
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %26 = call i32 @j2date(i64 %22, i32* %23, i32* %24, i32* %25)
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @PGTYPESdate_dayofweek(i64 %27)
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %164, %3
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @PGTYPESdate_fmt_asc.mapping, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 16
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %167

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %162, %36
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @PGTYPESdate_fmt_asc.mapping, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 16
  %44 = call i8* @strstr(i8* %38, i8* %43)
  store i8* %44, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %163

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @PGTYPESdate_fmt_asc.mapping, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %85 [
    i32 137, label %52
    i32 138, label %59
    i32 135, label %63
    i32 136, label %72
    i32 134, label %76
    i32 133, label %80
  ]

52:                                               ; preds = %46
  %53 = load i8**, i8*** @pgtypes_date_weekdays_short, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast %union.un_fmt_comb* %8 to i8**
  store i8* %57, i8** %58, align 8
  store i32 132, i32* %9, align 4
  br label %87

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = bitcast %union.un_fmt_comb* %8 to i32*
  store i32 %61, i32* %62, align 8
  store i32 129, i32* %9, align 4
  br label %87

63:                                               ; preds = %46
  %64 = load i8**, i8*** @months, align 8
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %64, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = bitcast %union.un_fmt_comb* %8 to i8**
  store i8* %70, i8** %71, align 8
  store i32 132, i32* %9, align 4
  br label %87

72:                                               ; preds = %46
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = bitcast %union.un_fmt_comb* %8 to i32*
  store i32 %74, i32* %75, align 8
  store i32 129, i32* %9, align 4
  br label %87

76:                                               ; preds = %46
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = bitcast %union.un_fmt_comb* %8 to i32*
  store i32 %78, i32* %79, align 8
  store i32 128, i32* %9, align 4
  br label %87

80:                                               ; preds = %46
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = srem i32 %82, 100
  %84 = bitcast %union.un_fmt_comb* %8 to i32*
  store i32 %83, i32* %84, align 8
  store i32 129, i32* %9, align 4
  br label %87

85:                                               ; preds = %46
  %86 = bitcast %union.un_fmt_comb* %8 to i8**
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %86, align 8
  store i32 132, i32* %9, align 4
  br label %87

87:                                               ; preds = %85, %80, %76, %72, %63, %59, %52
  %88 = load i32, i32* %9, align 4
  switch i32 %88, label %161 [
    i32 131, label %89
    i32 132, label %89
    i32 130, label %104
    i32 129, label %123
    i32 128, label %142
  ]

89:                                               ; preds = %87, %87
  %90 = load i8*, i8** %12, align 8
  %91 = bitcast %union.un_fmt_comb* %8 to i8**
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast %union.un_fmt_comb* %8 to i8**
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = call i32 @memcpy(i8* %90, i8* %92, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 131
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = bitcast %union.un_fmt_comb* %8 to i8**
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %99, %89
  br label %162

104:                                              ; preds = %87
  %105 = load i32, i32* @PGTYPES_DATE_NUM_MAX_DIGITS, align 4
  %106 = call i8* @pgtypes_alloc(i32 %105)
  store i8* %106, i8** %14, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i32 -1, i32* %4, align 4
  br label %168

110:                                              ; preds = %104
  %111 = load i8*, i8** %14, align 8
  %112 = load i32, i32* @PGTYPES_DATE_NUM_MAX_DIGITS, align 4
  %113 = bitcast %union.un_fmt_comb* %8 to i32*
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @snprintf(i8* %111, i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = call i32 @memcpy(i8* %116, i8* %117, i32 %119)
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 @free(i8* %121)
  br label %162

123:                                              ; preds = %87
  %124 = load i32, i32* @PGTYPES_DATE_NUM_MAX_DIGITS, align 4
  %125 = call i8* @pgtypes_alloc(i32 %124)
  store i8* %125, i8** %15, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  store i32 -1, i32* %4, align 4
  br label %168

129:                                              ; preds = %123
  %130 = load i8*, i8** %15, align 8
  %131 = load i32, i32* @PGTYPES_DATE_NUM_MAX_DIGITS, align 4
  %132 = bitcast %union.un_fmt_comb* %8 to i32*
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @snprintf(i8* %130, i32 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  %135 = load i8*, i8** %12, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = call i32 @strlen(i8* %137)
  %139 = call i32 @memcpy(i8* %135, i8* %136, i32 %138)
  %140 = load i8*, i8** %15, align 8
  %141 = call i32 @free(i8* %140)
  br label %162

142:                                              ; preds = %87
  %143 = load i32, i32* @PGTYPES_DATE_NUM_MAX_DIGITS, align 4
  %144 = call i8* @pgtypes_alloc(i32 %143)
  store i8* %144, i8** %16, align 8
  %145 = load i8*, i8** %16, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  store i32 -1, i32* %4, align 4
  br label %168

148:                                              ; preds = %142
  %149 = load i8*, i8** %16, align 8
  %150 = load i32, i32* @PGTYPES_DATE_NUM_MAX_DIGITS, align 4
  %151 = bitcast %union.un_fmt_comb* %8 to i32*
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @snprintf(i8* %149, i32 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  %154 = load i8*, i8** %12, align 8
  %155 = load i8*, i8** %16, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = call i32 @strlen(i8* %156)
  %158 = call i32 @memcpy(i8* %154, i8* %155, i32 %157)
  %159 = load i8*, i8** %16, align 8
  %160 = call i32 @free(i8* %159)
  br label %162

161:                                              ; preds = %87
  br label %162

162:                                              ; preds = %161, %148, %129, %110, %103
  br label %37

163:                                              ; preds = %37
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %29

167:                                              ; preds = %29
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %147, %128, %109
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @j2date(i64, i32*, i32*, i32*) #1

declare dso_local i64 @date2j(i32, i32, i32) #1

declare dso_local i32 @PGTYPESdate_dayofweek(i64) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @pgtypes_alloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
