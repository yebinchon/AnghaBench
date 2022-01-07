; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_cache_locale_time.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_cache_locale_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@MAX_L10N_DATA = common dso_local global i32 0, align 4
@CurrentLCTimeValid = common dso_local global i32 0, align 4
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cache_locale_time() executed; locale: \22%s\22\00", align 1
@locale_time = common dso_local global i8* null, align 8
@LC_TIME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"setlocale(NULL) failed\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%b\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%B\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to restore LC_TIME to \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"strftime() failed: %m\00", align 1
@PG_SQL_ASCII = common dso_local global i32 0, align 4
@localized_abbrev_days = common dso_local global i32* null, align 8
@localized_full_days = common dso_local global i32* null, align 8
@localized_abbrev_months = common dso_local global i32* null, align 8
@localized_full_months = common dso_local global i32* null, align 8
@LC_CTYPE = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_locale_time() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_L10N_DATA, align 4
  %12 = mul nsw i32 38, %11
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %1, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %2, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* @CurrentLCTimeValid, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  store i32 1, i32* %10, align 4
  br label %190

19:                                               ; preds = %0
  %20 = load i32, i32* @DEBUG3, align 4
  %21 = load i8*, i8** @locale_time, align 8
  %22 = call i32 (i32, i8*, ...) @elog(i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @LC_TIME, align 4
  %24 = call i8* @setlocale(i32 %23, i8* null)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 (i32, i8*, ...) @elog(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @pstrdup(i8* %31)
  store i8* %32, i8** %9, align 8
  %33 = load i32, i32* @LC_TIME, align 4
  %34 = load i8*, i8** @locale_time, align 8
  %35 = call i8* @setlocale(i32 %33, i8* %34)
  %36 = call i32 @time(i32* null)
  store i32 %36, i32* %4, align 4
  %37 = call %struct.tm* @localtime(i32* %4)
  store %struct.tm* %37, %struct.tm** %5, align 8
  store i8* %15, i8** %3, align 8
  store i64 0, i64* @errno, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %67, %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 7
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.tm*, %struct.tm** %5, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @MAX_L10N_DATA, align 4
  %47 = load %struct.tm*, %struct.tm** %5, align 8
  %48 = call i64 @strftime(i8* %45, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %47)
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, i32* @MAX_L10N_DATA, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* @MAX_L10N_DATA, align 4
  %58 = load %struct.tm*, %struct.tm** %5, align 8
  %59 = call i64 @strftime(i8* %56, i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %58)
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i32, i32* @MAX_L10N_DATA, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %38

70:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %102, %70
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 12
  br i1 %73, label %74, label %105

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.tm*, %struct.tm** %5, align 8
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.tm*, %struct.tm** %5, align 8
  %79 = getelementptr inbounds %struct.tm, %struct.tm* %78, i32 0, i32 2
  store i32 1, i32* %79, align 4
  %80 = load i8*, i8** %3, align 8
  %81 = load i32, i32* @MAX_L10N_DATA, align 4
  %82 = load %struct.tm*, %struct.tm** %5, align 8
  %83 = call i64 @strftime(i8* %80, i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %82)
  %84 = icmp sle i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i32 1, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i32, i32* @MAX_L10N_DATA, align 4
  %88 = load i8*, i8** %3, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %3, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load i32, i32* @MAX_L10N_DATA, align 4
  %93 = load %struct.tm*, %struct.tm** %5, align 8
  %94 = call i64 @strftime(i8* %91, i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.tm* %93)
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 1, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %86
  %98 = load i32, i32* @MAX_L10N_DATA, align 4
  %99 = load i8*, i8** %3, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %71

105:                                              ; preds = %71
  %106 = load i32, i32* @LC_TIME, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = call i8* @setlocale(i32 %106, i8* %107)
  %109 = icmp ne i8* %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @FATAL, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 (i32, i8*, ...) @elog(i32 %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @ERROR, align 4
  %119 = call i32 (i32, i8*, ...) @elog(i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @pfree(i8* %121)
  %123 = load i8*, i8** @locale_time, align 8
  %124 = call i32 @pg_get_encoding_from_locale(i8* %123, i32 1)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @PG_SQL_ASCII, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %120
  store i8* %15, i8** %3, align 8
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %156, %129
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 7
  br i1 %132, label %133, label %159

133:                                              ; preds = %130
  %134 = load i32*, i32** @localized_abbrev_days, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i8*, i8** %3, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @cache_single_string(i32* %137, i8* %138, i32 %139)
  %141 = load i32, i32* @MAX_L10N_DATA, align 4
  %142 = load i8*, i8** %3, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %3, align 8
  %145 = load i32*, i32** @localized_full_days, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i8*, i8** %3, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @cache_single_string(i32* %148, i8* %149, i32 %150)
  %152 = load i32, i32* @MAX_L10N_DATA, align 4
  %153 = load i8*, i8** %3, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %3, align 8
  br label %156

156:                                              ; preds = %133
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %130

159:                                              ; preds = %130
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %186, %159
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 12
  br i1 %162, label %163, label %189

163:                                              ; preds = %160
  %164 = load i32*, i32** @localized_abbrev_months, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i8*, i8** %3, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @cache_single_string(i32* %167, i8* %168, i32 %169)
  %171 = load i32, i32* @MAX_L10N_DATA, align 4
  %172 = load i8*, i8** %3, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %3, align 8
  %175 = load i32*, i32** @localized_full_months, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i8*, i8** %3, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @cache_single_string(i32* %178, i8* %179, i32 %180)
  %182 = load i32, i32* @MAX_L10N_DATA, align 4
  %183 = load i8*, i8** %3, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %3, align 8
  br label %186

186:                                              ; preds = %163
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %160

189:                                              ; preds = %160
  store i32 1, i32* @CurrentLCTimeValid, align 4
  store i32 0, i32* %10, align 4
  br label %190

190:                                              ; preds = %189, %18
  %191 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %10, align 4
  switch i32 %192, label %194 [
    i32 0, label %193
    i32 1, label %193
  ]

193:                                              ; preds = %190, %190
  ret void

194:                                              ; preds = %190
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @elog(i32, i8*, ...) #2

declare dso_local i8* @setlocale(i32, i8*) #2

declare dso_local i8* @pstrdup(i8*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i32 @pg_get_encoding_from_locale(i8*, i32) #2

declare dso_local i32 @cache_single_string(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
