; ModuleID = '/home/carl/AnghaBench/postgres/contrib/test_decoding/extr_test_decoding.c_print_literal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/test_decoding/extr_test_decoding.c_print_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"B'%s'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @print_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_literal(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %29 [
    i32 133, label %10
    i32 132, label %10
    i32 131, label %10
    i32 129, label %10
    i32 135, label %10
    i32 134, label %10
    i32 130, label %10
    i32 137, label %14
    i32 128, label %14
    i32 136, label %18
  ]

10:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %11 = load i32, i32* %4, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @appendStringInfoString(i32 %11, i8* %12)
  br label %57

14:                                               ; preds = %3, %3
  %15 = load i32, i32* %4, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @appendStringInfo(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %57

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @appendStringInfoString(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @appendStringInfoString(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  br label %57

29:                                               ; preds = %3
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @appendStringInfoChar(i32 %30, i8 signext 39)
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %51, %29
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %8, align 1
  %40 = load i8, i8* %8, align 1
  %41 = call i32 @SQL_STR_DOUBLE(i8 signext %40, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load i8, i8* %8, align 1
  %46 = call i32 @appendStringInfoChar(i32 %44, i8 signext %45)
  br label %47

47:                                               ; preds = %43, %37
  %48 = load i32, i32* %4, align 4
  %49 = load i8, i8* %8, align 1
  %50 = call i32 @appendStringInfoChar(i32 %48, i8 signext %49)
  br label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  br label %33

54:                                               ; preds = %33
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @appendStringInfoChar(i32 %55, i8 signext 39)
  br label %57

57:                                               ; preds = %54, %28, %14, %10
  ret void
}

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32 @SQL_STR_DOUBLE(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
