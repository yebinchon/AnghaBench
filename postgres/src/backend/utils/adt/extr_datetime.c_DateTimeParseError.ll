; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DateTimeParseError.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DateTimeParseError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATETIME_FIELD_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"date/time field value out of range: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Perhaps you need a different \22datestyle\22 setting.\00", align 1
@ERRCODE_INTERVAL_FIELD_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"interval field value out of range: \22%s\22\00", align 1
@ERRCODE_INVALID_TIME_ZONE_DISPLACEMENT_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"time zone displacement out of range: \22%s\22\00", align 1
@ERRCODE_INVALID_DATETIME_FORMAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DateTimeParseError(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %38 [
    i32 131, label %8
    i32 129, label %15
    i32 130, label %23
    i32 128, label %30
    i32 132, label %37
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @ERROR, align 4
  %10 = load i32, i32* @ERRCODE_DATETIME_FIELD_OVERFLOW, align 4
  %11 = call i32 @errcode(i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @ereport(i32 %9, i32 %13)
  br label %46

15:                                               ; preds = %3
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_DATETIME_FIELD_OVERFLOW, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @errhint(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @ereport(i32 %16, i32 %21)
  br label %46

23:                                               ; preds = %3
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_INTERVAL_FIELD_OVERFLOW, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = call i32 @ereport(i32 %24, i32 %28)
  br label %46

30:                                               ; preds = %3
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_INVALID_TIME_ZONE_DISPLACEMENT_VALUE, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = call i32 @ereport(i32 %31, i32 %35)
  br label %46

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %3, %37
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_INVALID_DATETIME_FORMAT, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %42, i8* %43)
  %45 = call i32 @ereport(i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %38, %30, %23, %15, %8
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
