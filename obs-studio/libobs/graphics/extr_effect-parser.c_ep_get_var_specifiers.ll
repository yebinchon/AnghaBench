; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_get_var_specifiers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_get_var_specifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"property\00", align 1
@PARSE_EOF = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, i32*, i32*, i32*)* @ep_get_var_specifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_get_var_specifiers(%struct.effect_parser* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.effect_parser*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  br label %11

11:                                               ; preds = %4, %23, %37, %51
  %12 = load %struct.effect_parser*, %struct.effect_parser** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @ep_check_for_keyword(%struct.effect_parser* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @PARSE_EOF, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %55

19:                                               ; preds = %11
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PARSE_CONTINUE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %11

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.effect_parser*, %struct.effect_parser** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @ep_check_for_keyword(%struct.effect_parser* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @PARSE_EOF, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %55

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @PARSE_CONTINUE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %11

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.effect_parser*, %struct.effect_parser** %6, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @ep_check_for_keyword(%struct.effect_parser* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @PARSE_EOF, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %55

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @PARSE_CONTINUE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %11

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %46, %32, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @ep_check_for_keyword(%struct.effect_parser*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
