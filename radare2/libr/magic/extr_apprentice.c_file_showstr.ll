; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_file_showstr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_file_showstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%.3o\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_showstr(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %72, %3
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %5, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %7, align 1
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 4294967295
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i8, i8* %7, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %73

19:                                               ; preds = %14
  br label %26

20:                                               ; preds = %8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %6, align 8
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %73

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sge i32 %28, 32
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sle i32 %32, 126
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8, i8* %7, align 1
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fputc(i8 signext %35, i32* %36)
  br label %72

38:                                               ; preds = %30, %26
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @fputc(i8 signext 92, i32* %39)
  %41 = load i8, i8* %7, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %64 [
    i32 7, label %43
    i32 8, label %46
    i32 12, label %49
    i32 10, label %52
    i32 13, label %55
    i32 9, label %58
    i32 11, label %61
  ]

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @fputc(i8 signext 97, i32* %44)
  br label %71

46:                                               ; preds = %38
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @fputc(i8 signext 98, i32* %47)
  br label %71

49:                                               ; preds = %38
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @fputc(i8 signext 102, i32* %50)
  br label %71

52:                                               ; preds = %38
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @fputc(i8 signext 110, i32* %53)
  br label %71

55:                                               ; preds = %38
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @fputc(i8 signext 114, i32* %56)
  br label %71

58:                                               ; preds = %38
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @fputc(i8 signext 116, i32* %59)
  br label %71

61:                                               ; preds = %38
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @fputc(i8 signext 118, i32* %62)
  br label %71

64:                                               ; preds = %38
  %65 = load i32*, i32** %4, align 8
  %66 = load i8, i8* %7, align 1
  %67 = sext i8 %66 to i32
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = call i32 @fprintf(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %69)
  br label %71

71:                                               ; preds = %64, %61, %58, %55, %52, %49, %46, %43
  br label %72

72:                                               ; preds = %71, %34
  br label %8

73:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
