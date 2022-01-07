; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_char2wchar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_pg_locale.c_char2wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@COLLPROVIDER_LIBC = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mbstowcs_l is not available\00", align 1
@ERRCODE_CHARACTER_NOT_IN_REPERTOIRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid multibyte character for locale\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"The server's LC_CTYPE locale is probably incompatible with the database encoding.\00", align 1
@CP_UTF8 = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @char2wchar(i64* %0, i64 %1, i8* %2, i64 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @COLLPROVIDER_LIBC, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %16, %5
  %23 = phi i1 [ true, %5 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i64 0, i64* %6, align 8
  br label %60

29:                                               ; preds = %22
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i8* @pnstrdup(i8* %30, i64 %31)
  store i8* %32, i8** %13, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %34 = icmp eq %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i64*, i64** %7, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @mbstowcs(i64* %36, i8* %37, i64 %38)
  store i64 %39, i64* %12, align 8
  br label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @ERROR, align 4
  %42 = call i32 @elog(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @pfree(i8* %44)
  %46 = load i64, i64* %12, align 8
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @pg_verifymbstr(i8* %49, i64 %50, i32 0)
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_CHARACTER_NOT_IN_REPERTOIRE, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @errhint(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = load i64, i64* %12, align 8
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %58, %28
  %61 = load i64, i64* %6, align 8
  ret i64 %61
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @pnstrdup(i8*, i64) #1

declare dso_local i64 @mbstowcs(i64*, i8*, i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @pg_verifymbstr(i8*, i64, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
