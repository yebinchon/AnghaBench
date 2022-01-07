; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_complete16.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_complete16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_UTF16NATIVE = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_complete16(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %7, i32* %6, align 4
  %8 = call i32 (...) @sqlite3_initialize()
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = call i32* @sqlite3ValueNew(i32 0)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @SQLITE_UTF16NATIVE, align 4
  %18 = load i32, i32* @SQLITE_STATIC, align 4
  %19 = call i32 @sqlite3ValueSetStr(i32* %15, i32 -1, i8* %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @SQLITE_UTF8, align 4
  %22 = call i8* @sqlite3ValueText(i32* %20, i32 %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @sqlite3_complete(i8* %26)
  store i32 %27, i32* %6, align 4
  br label %30

28:                                               ; preds = %13
  %29 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @sqlite3ValueFree(i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @sqlite3ApiExit(i32 0, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @sqlite3_initialize(...) #1

declare dso_local i32* @sqlite3ValueNew(i32) #1

declare dso_local i32 @sqlite3ValueSetStr(i32*, i32, i8*, i32, i32) #1

declare dso_local i8* @sqlite3ValueText(i32*, i32) #1

declare dso_local i32 @sqlite3_complete(i8*) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

declare dso_local i32 @sqlite3ApiExit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
