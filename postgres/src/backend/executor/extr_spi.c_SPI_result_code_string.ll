; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_result_code_string.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_result_code_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_result_code_string.buf = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c"SPI_ERROR_CONNECT\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SPI_ERROR_COPY\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SPI_ERROR_OPUNKNOWN\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SPI_ERROR_UNCONNECTED\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"SPI_ERROR_ARGUMENT\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"SPI_ERROR_PARAM\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"SPI_ERROR_TRANSACTION\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SPI_ERROR_NOATTRIBUTE\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"SPI_ERROR_NOOUTFUNC\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"SPI_ERROR_TYPUNKNOWN\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"SPI_ERROR_REL_DUPLICATE\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"SPI_ERROR_REL_NOT_FOUND\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"SPI_OK_CONNECT\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"SPI_OK_FINISH\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"SPI_OK_FETCH\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"SPI_OK_UTILITY\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"SPI_OK_SELECT\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"SPI_OK_SELINTO\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"SPI_OK_INSERT\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"SPI_OK_DELETE\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"SPI_OK_UPDATE\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"SPI_OK_CURSOR\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"SPI_OK_INSERT_RETURNING\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"SPI_OK_DELETE_RETURNING\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"SPI_OK_UPDATE_RETURNING\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"SPI_OK_REWRITTEN\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"SPI_OK_REL_REGISTER\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"SPI_OK_REL_UNREGISTER\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Unrecognized SPI code %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SPI_result_code_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %33 [
    i32 154, label %5
    i32 153, label %6
    i32 150, label %7
    i32 144, label %8
    i32 155, label %9
    i32 149, label %10
    i32 146, label %11
    i32 152, label %12
    i32 151, label %13
    i32 145, label %14
    i32 148, label %15
    i32 147, label %16
    i32 143, label %17
    i32 138, label %18
    i32 139, label %19
    i32 128, label %20
    i32 132, label %21
    i32 131, label %22
    i32 137, label %23
    i32 141, label %24
    i32 130, label %25
    i32 142, label %26
    i32 136, label %27
    i32 140, label %28
    i32 129, label %29
    i32 133, label %30
    i32 135, label %31
    i32 134, label %32
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %36

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %36

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %36

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %36

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %36

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %36

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %36

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %36

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %36

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %36

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %36

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %36

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %36

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %36

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %36

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %36

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %36

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %36

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %36

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %36

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %36

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %36

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %36

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %36

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %36

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %36

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %36

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @sprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SPI_result_code_string.buf, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i32 %34)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SPI_result_code_string.buf, i64 0, i64 0), i8** %2, align 8
  br label %36

36:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
