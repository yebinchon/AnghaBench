; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/table/extr_tableamapi.c_check_default_table_access_method.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/table/extr_tableamapi.c_check_default_table_access_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"%s cannot be empty.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"default_table_access_method\00", align 1
@NAMEDATALEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"%s is too long (maximum %d characters).\00", align 1
@MyDatabaseId = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@PGC_S_TEST = common dso_local global i64 0, align 8
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"table access method \22%s\22 does not exist\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Table access method \22%s\22 does not exist.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_default_table_access_method(i8** %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 (i8*, i8*, ...) @GUC_check_errdetail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %57

15:                                               ; preds = %3
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = load i64, i64* @NAMEDATALEN, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i64, i64* @NAMEDATALEN, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 (i8*, i8*, ...) @GUC_check_errdetail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  store i32 0, i32* %4, align 4
  br label %57

25:                                               ; preds = %15
  %26 = call i64 (...) @IsTransactionState()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = load i64, i64* @MyDatabaseId, align 8
  %30 = load i64, i64* @InvalidOid, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @get_table_am_oid(i8* %34, i32 1)
  %36 = call i32 @OidIsValid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @PGC_S_TEST, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32, i32* @NOTICE, align 4
  %44 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  %49 = call i32 @ereport(i32 %43, i32 %48)
  br label %54

50:                                               ; preds = %38
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i8*, ...) @GUC_check_errdetail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  store i32 0, i32* %4, align 4
  br label %57

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55, %28, %25
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %50, %21, %13
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @GUC_check_errdetail(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @get_table_am_oid(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
