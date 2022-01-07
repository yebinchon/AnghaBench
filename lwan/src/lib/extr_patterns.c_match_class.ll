; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_match_class.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_match_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @match_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_class(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @tolower(i32 %7) #2
  switch i32 %8, label %39 [
    i32 97, label %9
    i32 99, label %12
    i32 100, label %15
    i32 103, label %18
    i32 108, label %21
    i32 112, label %24
    i32 115, label %27
    i32 117, label %30
    i32 119, label %33
    i32 120, label %36
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @isalpha(i32 %10) #2
  store i32 %11, i32* %6, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @iscntrl(i32 %13) #2
  store i32 %14, i32* %6, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @isdigit(i32 %16) #2
  store i32 %17, i32* %6, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @isgraph(i32 %19) #2
  store i32 %20, i32* %6, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @islower(i32 %22) #2
  store i32 %23, i32* %6, align 4
  br label %44

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ispunct(i32 %25) #2
  store i32 %26, i32* %6, align 4
  br label %44

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @isspace(i32 %28) #2
  store i32 %29, i32* %6, align 4
  br label %44

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @isupper(i32 %31) #2
  store i32 %32, i32* %6, align 4
  br label %44

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @isalnum(i32 %34) #2
  store i32 %35, i32* %6, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @isxdigit(i32 %37) #2
  store i32 %38, i32* %6, align 4
  br label %44

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %36, %33, %30, %27, %24, %21, %18, %15, %12, %9
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @islower(i32 %45) #2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  br label %55

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %39
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #1

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
declare dso_local i32 @ispunct(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isupper(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
