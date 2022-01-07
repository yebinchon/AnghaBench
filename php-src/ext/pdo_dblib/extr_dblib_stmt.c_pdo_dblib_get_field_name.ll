; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_stmt.c_pdo_dblib_get_field_name.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_stmt.c_pdo_dblib_get_field_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"nvarchar\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"uniqueidentifier\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"varbinary\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"bigint\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"varchar\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"datetime2\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"datetimeoffset\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"tinyint\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"smallint\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"decimal\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"smalldatetime\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"money\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"datetime\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"sql_variant\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"ntext\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"smallmoney\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"nchar\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"geometry\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @pdo_dblib_get_field_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pdo_dblib_get_field_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %45 [
    i32 31, label %5
    i32 34, label %6
    i32 35, label %7
    i32 36, label %8
    i32 37, label %9
    i32 38, label %10
    i32 39, label %11
    i32 40, label %12
    i32 41, label %13
    i32 42, label %14
    i32 43, label %15
    i32 45, label %16
    i32 47, label %17
    i32 48, label %18
    i32 50, label %19
    i32 52, label %20
    i32 55, label %21
    i32 56, label %22
    i32 58, label %23
    i32 59, label %24
    i32 60, label %25
    i32 61, label %26
    i32 62, label %27
    i32 63, label %28
    i32 98, label %29
    i32 99, label %30
    i32 104, label %31
    i32 106, label %32
    i32 108, label %33
    i32 122, label %34
    i32 127, label %35
    i32 165, label %36
    i32 167, label %37
    i32 173, label %38
    i32 175, label %39
    i32 189, label %40
    i32 231, label %41
    i32 239, label %42
    i32 240, label %43
    i32 241, label %44
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %46

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %46

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %46

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %46

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %46

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %46

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %46

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %46

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %46

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %46

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %46

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %46

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %46

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %46

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %46

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %46

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %46

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %46

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %46

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %46

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %46

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %46

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %46

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %46

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %46

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %46

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %46

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %46

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %46

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %46

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %46

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %46

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %46

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %46

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %46

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %46

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %46

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %46

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %46

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %46

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %46

46:                                               ; preds = %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
