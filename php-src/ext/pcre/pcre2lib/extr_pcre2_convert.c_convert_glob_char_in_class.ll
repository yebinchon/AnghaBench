; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_convert.c_convert_glob_char_in_class.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_convert.c_convert_glob_char_in_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_HT = common dso_local global i32 0, align 4
@CHAR_SPACE = common dso_local global i32 0, align 4
@CHAR_UNDERSCORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @convert_glob_char_in_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_glob_char_in_class(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %60 [
    i32 1, label %7
    i32 2, label %10
    i32 3, label %13
    i32 4, label %14
    i32 5, label %25
    i32 6, label %28
    i32 7, label %31
    i32 8, label %34
    i32 9, label %37
    i32 10, label %40
    i32 11, label %43
    i32 12, label %46
    i32 13, label %49
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @isalnum(i32 %8) #2
  store i32 %9, i32* %3, align 4
  br label %63

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @isalpha(i32 %11) #2
  store i32 %12, i32* %3, align 4
  br label %63

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CHAR_HT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @CHAR_SPACE, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ true, %14 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %63

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @iscntrl(i32 %26) #2
  store i32 %27, i32* %3, align 4
  br label %63

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @isdigit(i32 %29) #2
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @isgraph(i32 %32) #2
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @islower(i32 %35) #2
  store i32 %36, i32* %3, align 4
  br label %63

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @isprint(i32 %38) #2
  store i32 %39, i32* %3, align 4
  br label %63

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ispunct(i32 %41) #2
  store i32 %42, i32* %3, align 4
  br label %63

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @isspace(i32 %44) #2
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %2
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @isupper(i32 %47) #2
  store i32 %48, i32* %3, align 4
  br label %63

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @isalnum(i32 %50) #2
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @CHAR_UNDERSCORE, align 4
  %56 = icmp eq i32 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ true, %49 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %2
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @isxdigit(i32 %61) #2
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %57, %46, %43, %40, %37, %34, %31, %28, %25, %22, %13, %10, %7
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalpha(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @iscntrl(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isgraph(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @islower(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @ispunct(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isupper(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
