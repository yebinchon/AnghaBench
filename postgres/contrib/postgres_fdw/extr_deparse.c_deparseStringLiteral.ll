; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseStringLiteral.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseStringLiteral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESCAPE_STRING_SYNTAX = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deparseStringLiteral(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32* @strchr(i8* %7, i8 signext 92)
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i8, i8* @ESCAPE_STRING_SYNTAX, align 1
  %13 = call i32 @appendStringInfoChar(i32 %11, i8 signext %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @appendStringInfoChar(i32 %15, i8 signext 39)
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %36, %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %6, align 1
  %25 = load i8, i8* %6, align 1
  %26 = call i64 @SQL_STR_DOUBLE(i8 signext %25, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = load i8, i8* %6, align 1
  %31 = call i32 @appendStringInfoChar(i32 %29, i8 signext %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %3, align 4
  %34 = load i8, i8* %6, align 1
  %35 = call i32 @appendStringInfoChar(i32 %33, i8 signext %34)
  br label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %18

39:                                               ; preds = %18
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @appendStringInfoChar(i32 %40, i8 signext 39)
  ret void
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i64 @SQL_STR_DOUBLE(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
