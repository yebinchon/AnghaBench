; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_eval.c_nextpal_item.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_eval.c_nextpal_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%s\22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@getNext = common dso_local global i32 0, align 4
@curtheme = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @nextpal_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nextpal_item(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = call i8* @r_str_lchr(i8* %11, i8 signext 47)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %10, align 8
  br label %17

17:                                               ; preds = %15, %4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %53 [
    i32 106, label %19
    i32 108, label %26
    i32 112, label %29
    i32 110, label %30
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @r_cons_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  br label %53

26:                                               ; preds = %17
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @r_cons_println(i8* %27)
  br label %53

29:                                               ; preds = %17
  br label %53

30:                                               ; preds = %17
  %31 = load i32, i32* @getNext, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @curtheme, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @r_str_dup(i32 %34, i8* %35)
  store i32 %36, i32* @curtheme, align 4
  store i32 0, i32* @getNext, align 4
  store i32 0, i32* %5, align 4
  br label %54

37:                                               ; preds = %30
  %38 = load i32, i32* @curtheme, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* @curtheme, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strcmp(i32 %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 1, i32* @getNext, align 4
  br label %46

46:                                               ; preds = %45, %40
  br label %51

47:                                               ; preds = %37
  %48 = load i32, i32* @curtheme, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @r_str_dup(i32 %48, i8* %49)
  store i32 %50, i32* @curtheme, align 4
  store i32 0, i32* %5, align 4
  br label %54

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %17, %52, %29, %26, %19
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %47, %33
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i8* @r_str_lchr(i8*, i8 signext) #1

declare dso_local i32 @r_cons_printf(i8*, i8*, i8*) #1

declare dso_local i32 @r_cons_println(i8*) #1

declare dso_local i32 @r_str_dup(i32, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
