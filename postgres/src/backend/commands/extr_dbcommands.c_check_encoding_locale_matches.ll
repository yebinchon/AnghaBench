; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_check_encoding_locale_matches.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_check_encoding_locale_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_SQL_ASCII = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"encoding \22%s\22 does not match locale \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"The chosen LC_CTYPE setting requires encoding \22%s\22.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"The chosen LC_COLLATE setting requires encoding \22%s\22.\00", align 1
@PG_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_encoding_locale_matches(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @pg_get_encoding_from_locale(i8* %9, i32 1)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @pg_get_encoding_from_locale(i8* %11, i32 1)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %42, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PG_SQL_ASCII, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PG_SQL_ASCII, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = call i64 (...) @superuser()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @pg_encoding_to_char(i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @pg_encoding_to_char(i32 %38)
  %40 = call i32 @errdetail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @ereport(i32 %31, i32 %40)
  br label %42

42:                                               ; preds = %30, %27, %20, %16, %3
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %72, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @PG_SQL_ASCII, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %72, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %72, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PG_SQL_ASCII, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = call i64 (...) @superuser()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @pg_encoding_to_char(i32 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %65, i8* %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @pg_encoding_to_char(i32 %68)
  %70 = call i32 @errdetail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = call i32 @ereport(i32 %61, i32 %70)
  br label %72

72:                                               ; preds = %60, %57, %50, %46, %42
  ret void
}

declare dso_local i32 @pg_get_encoding_from_locale(i8*, i32) #1

declare dso_local i64 @superuser(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*) #1

declare dso_local i32 @pg_encoding_to_char(i32) #1

declare dso_local i32 @errdetail(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
