; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_parse_sane_timezone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_parse_sane_timezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32 }

@TZ_STRLEN_MAX = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"numeric time zone\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Numeric time zones must have \22-\22 or \22+\22 as first character.\00", align 1
@DTERR_TZDISP_OVERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"numeric time zone \22%s\22 out of range\00", align 1
@DTERR_BAD_FORMAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"time zone \22%s\22 not recognized\00", align 1
@TZ = common dso_local global i32 0, align 4
@DTZ = common dso_local global i32 0, align 4
@DYNTZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pg_tm*, i32*)* @parse_sane_timezone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_sane_timezone(%struct.pg_tm* %0, i32* %1) #0 {
  %3 = alloca %struct.pg_tm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.pg_tm* %0, %struct.pg_tm** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* @TZ_STRLEN_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = trunc i64 %15 to i32
  %20 = call i32 @text_to_cstring_buffer(i32* %18, i8* %17, i32 %19)
  %21 = load i8, i8* %17, align 16
  %22 = call i64 @isdigit(i8 zeroext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %29 = call i32 @errhint(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = call i32 @DecodeTimezone(i8* %17, i32* %8)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @DTERR_TZDISP_OVERFLOW, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  %44 = call i32 @ereport(i32 %40, i32 %43)
  br label %56

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  %54 = call i32 @ereport(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %45
  br label %56

56:                                               ; preds = %55, %39
  %57 = call i32 @strlen(i8* %17)
  %58 = call i8* @downcase_truncate_identifier(i8* %17, i32 %57, i32 0)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @DecodeTimezoneAbbrev(i32 0, i8* %59, i32* %11, i32** %12)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @TZ, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @DTZ, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %95

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @DYNTZ, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @DetermineTimeZoneAbbrevOffset(%struct.pg_tm* %76, i8* %17, i32* %77)
  store i32 %78, i32* %8, align 4
  br label %94

79:                                               ; preds = %71
  %80 = call i32* @pg_tzset(i8* %17)
  store i32* %80, i32** %12, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @DetermineTimeZoneOffset(%struct.pg_tm* %84, i32* %85)
  store i32 %86, i32* %8, align 4
  br label %93

87:                                               ; preds = %79
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  %92 = call i32 @ereport(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %83
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94, %68
  br label %96

96:                                               ; preds = %95, %31
  %97 = load i32, i32* %8, align 4
  %98 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %98)
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @text_to_cstring_buffer(i32*, i8*, i32) #2

declare dso_local i64 @isdigit(i8 zeroext) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i32 @DecodeTimezone(i8*, i32*) #2

declare dso_local i8* @downcase_truncate_identifier(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @DecodeTimezoneAbbrev(i32, i8*, i32*, i32**) #2

declare dso_local i32 @DetermineTimeZoneAbbrevOffset(%struct.pg_tm*, i8*, i32*) #2

declare dso_local i32* @pg_tzset(i8*) #2

declare dso_local i32 @DetermineTimeZoneOffset(%struct.pg_tm*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
