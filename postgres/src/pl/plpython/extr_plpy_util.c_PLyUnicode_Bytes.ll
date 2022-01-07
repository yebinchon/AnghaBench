; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_util.c_PLyUnicode_Bytes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_util.c_PLyUnicode_Bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"could not convert Python Unicode object to bytes\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"could not extract bytes from encoded string\00", align 1
@PG_UTF8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PLyUnicode_Bytes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @PyUnicode_AsUTF8String(i32* %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ERROR, align 4
  %13 = call i32 @PLy_elog(i32 %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @PyBytes_AsString(i32* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @Py_DECREF(i32* %20)
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @PLy_elog(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %14
  %25 = call i64 (...) @GetDatabaseEncoding()
  %26 = load i64, i64* @PG_UTF8, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = call i32 (...) @PG_TRY()
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = load i64, i64* @PG_UTF8, align 8
  %34 = call i8* @pg_any_to_server(i8* %30, i32 %32, i64 %33)
  store i8* %34, i8** %6, align 8
  %35 = call i32 (...) @PG_CATCH()
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @Py_DECREF(i32* %36)
  %38 = call i32 (...) @PG_RE_THROW()
  %39 = call i32 (...) @PG_END_TRY()
  br label %42

40:                                               ; preds = %24
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %40, %28
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i32* @PyBytes_FromStringAndSize(i8* %43, i32 %45)
  store i32* %46, i32** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @pfree(i8* %51)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @Py_DECREF(i32* %54)
  %56 = load i32*, i32** %4, align 8
  ret i32* %56
}

declare dso_local i32* @PyUnicode_AsUTF8String(i32*) #1

declare dso_local i32 @PLy_elog(i32, i8*) #1

declare dso_local i8* @PyBytes_AsString(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @GetDatabaseEncoding(...) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i8* @pg_any_to_server(i8*, i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32* @PyBytes_FromStringAndSize(i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
