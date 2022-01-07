; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_latex_escaped_print.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_latex_escaped_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\#\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\$\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\%\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\&\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\\textless{}\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\\textgreater{}\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\\textbackslash{}\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\\^{}\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\_\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\{\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"\\textbar{}\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\\}\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\\~{}\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @latex_escaped_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @latex_escaped_print(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  br label %7

7:                                                ; preds = %63, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %7
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %57 [
    i32 35, label %15
    i32 36, label %18
    i32 37, label %21
    i32 38, label %24
    i32 60, label %27
    i32 62, label %30
    i32 92, label %33
    i32 94, label %36
    i32 95, label %39
    i32 123, label %42
    i32 124, label %45
    i32 125, label %48
    i32 126, label %51
    i32 10, label %54
  ]

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %16)
  br label %62

18:                                               ; preds = %11
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %19)
  br label %62

21:                                               ; preds = %11
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  br label %62

24:                                               ; preds = %11
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %25)
  br label %62

27:                                               ; preds = %11
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %28)
  br label %62

30:                                               ; preds = %11
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %31)
  br label %62

33:                                               ; preds = %11
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %34)
  br label %62

36:                                               ; preds = %11
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %37)
  br label %62

39:                                               ; preds = %11
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* %40)
  br label %62

42:                                               ; preds = %11
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %43)
  br label %62

45:                                               ; preds = %11
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* %46)
  br label %62

48:                                               ; preds = %11
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* %49)
  br label %62

51:                                               ; preds = %11
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* %52)
  br label %62

54:                                               ; preds = %11
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32* %55)
  br label %62

57:                                               ; preds = %11
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @fputc(i8 signext %59, i32* %60)
  br label %62

62:                                               ; preds = %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15
  br label %63

63:                                               ; preds = %62
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  br label %7

66:                                               ; preds = %7
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
