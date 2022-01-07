; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_parse_ooaffentry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_parse_ooaffentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unrecognized state in parse_ooaffentry: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i8*)* @parse_ooaffentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ooaffentry(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 128, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %12, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %11, align 8
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %10, align 8
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %9, align 8
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %8, align 8
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %57, %6
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load i32, i32* %13, align 4
  switch i32 %26, label %42 [
    i32 128, label %27
    i32 131, label %30
    i32 132, label %33
    i32 129, label %36
    i32 130, label %39
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @get_nextfield(i8** %7, i8* %28)
  store i32 %29, i32* %15, align 4
  store i32 131, i32* %13, align 4
  br label %46

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @get_nextfield(i8** %7, i8* %31)
  store i32 %32, i32* %15, align 4
  store i32 132, i32* %13, align 4
  br label %46

33:                                               ; preds = %25
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @get_nextfield(i8** %7, i8* %34)
  store i32 %35, i32* %15, align 4
  store i32 129, i32* %13, align 4
  br label %46

36:                                               ; preds = %25
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @get_nextfield(i8** %7, i8* %37)
  store i32 %38, i32* %15, align 4
  store i32 130, i32* %13, align 4
  br label %46

39:                                               ; preds = %25
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @get_nextfield(i8** %7, i8* %40)
  store i32 %41, i32* %15, align 4
  store i32 -1, i32* %13, align 4
  br label %46

42:                                               ; preds = %25
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @elog(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %39, %36, %33, %30, %27
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %53

52:                                               ; preds = %46
  br label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %58

57:                                               ; preds = %53
  br label %21

58:                                               ; preds = %56, %52, %21
  %59 = load i32, i32* %14, align 4
  ret i32 %59
}

declare dso_local i32 @get_nextfield(i8**, i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
