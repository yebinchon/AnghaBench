; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_line_start_state.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_line_start_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }

@KEY_NAME = common dso_local global i32 0, align 4
@DEFAULT_VALUE_NAME = common dso_local global i32 0, align 4
@QUOTED_VALUE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parser*, i32*)* @line_start_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @line_start_state(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.parser*, %struct.parser** %4, align 8
  %9 = getelementptr inbounds %struct.parser, %struct.parser* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @get_line(i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %49

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %7, align 8
  br label %16

16:                                               ; preds = %44, %14
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %41 [
    i32 91, label %23
    i32 64, label %29
    i32 34, label %34
    i32 32, label %40
    i32 9, label %40
  ]

23:                                               ; preds = %20
  %24 = load %struct.parser*, %struct.parser** %4, align 8
  %25 = load i32, i32* @KEY_NAME, align 4
  %26 = call i32 @set_state(%struct.parser* %24, i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32* %28, i32** %3, align 8
  br label %49

29:                                               ; preds = %20
  %30 = load %struct.parser*, %struct.parser** %4, align 8
  %31 = load i32, i32* @DEFAULT_VALUE_NAME, align 4
  %32 = call i32 @set_state(%struct.parser* %30, i32 %31)
  %33 = load i32*, i32** %7, align 8
  store i32* %33, i32** %3, align 8
  br label %49

34:                                               ; preds = %20
  %35 = load %struct.parser*, %struct.parser** %4, align 8
  %36 = load i32, i32* @QUOTED_VALUE_NAME, align 4
  %37 = call i32 @set_state(%struct.parser* %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32* %39, i32** %3, align 8
  br label %49

40:                                               ; preds = %20, %20
  br label %43

41:                                               ; preds = %20
  %42 = load i32*, i32** %7, align 8
  store i32* %42, i32** %3, align 8
  br label %49

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  br label %16

47:                                               ; preds = %16
  %48 = load i32*, i32** %7, align 8
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %47, %41, %34, %29, %23, %13
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i32* @get_line(i32) #1

declare dso_local i32 @set_state(%struct.parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
