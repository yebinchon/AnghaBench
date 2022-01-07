; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_complete16.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_sqlite3_complete16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_UTF16NATIVE = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_complete16(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i32 (...) @sqlite3_initialize()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = call i32* @sqlite3ValueNew(i32 0)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @SQLITE_UTF16NATIVE, align 4
  %17 = load i32, i32* @SQLITE_STATIC, align 4
  %18 = call i32 @sqlite3ValueSetStr(i32* %14, i32 -1, i8* %15, i32 %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @SQLITE_UTF8, align 4
  %21 = call i8* @sqlite3ValueText(i32* %19, i32 %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @sqlite3_complete(i8* %25)
  store i32 %26, i32* %6, align 4
  br label %29

27:                                               ; preds = %12
  %28 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @sqlite3ValueFree(i32* %30)
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @sqlite3_initialize(...) #1

declare dso_local i32* @sqlite3ValueNew(i32) #1

declare dso_local i32 @sqlite3ValueSetStr(i32*, i32, i8*, i32, i32) #1

declare dso_local i8* @sqlite3ValueText(i32*, i32) #1

declare dso_local i32 @sqlite3_complete(i8*) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
