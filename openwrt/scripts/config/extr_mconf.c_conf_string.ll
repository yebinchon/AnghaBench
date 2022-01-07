; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_mconf.c_conf_string.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_mconf.c_conf_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }

@inputbox_instructions_int = common dso_local global i8* null, align 8
@inputbox_instructions_hex = common dso_local global i8* null, align 8
@inputbox_instructions_string = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Internal mconf error!\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Main Menu\00", align 1
@dialog_input_result = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"You have made an invalid entry.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @conf_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf_string(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.menu* %0, %struct.menu** %2, align 8
  %6 = load %struct.menu*, %struct.menu** %2, align 8
  %7 = call i8* @menu_get_prompt(%struct.menu* %6)
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %1, %57
  %9 = load %struct.menu*, %struct.menu** %2, align 8
  %10 = getelementptr inbounds %struct.menu, %struct.menu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sym_get_type(i32 %11)
  switch i32 %12, label %22 [
    i32 129, label %13
    i32 130, label %16
    i32 128, label %19
  ]

13:                                               ; preds = %8
  %14 = load i8*, i8** @inputbox_instructions_int, align 8
  %15 = call i8* @_(i8* %14)
  store i8* %15, i8** %5, align 8
  br label %24

16:                                               ; preds = %8
  %17 = load i8*, i8** @inputbox_instructions_hex, align 8
  %18 = call i8* @_(i8* %17)
  store i8* %18, i8** %5, align 8
  br label %24

19:                                               ; preds = %8
  %20 = load i8*, i8** @inputbox_instructions_string, align 8
  %21 = call i8* @_(i8* %20)
  store i8* %21, i8** %5, align 8
  br label %24

22:                                               ; preds = %8
  %23 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %22, %19, %16, %13
  %25 = call i32 (...) @dialog_clear()
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = call i8* @_(i8* %29)
  br label %33

31:                                               ; preds = %24
  %32 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i8* [ %30, %28 ], [ %32, %31 ]
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.menu*, %struct.menu** %2, align 8
  %37 = getelementptr inbounds %struct.menu, %struct.menu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sym_get_string_value(i32 %38)
  %40 = call i32 @dialog_inputbox(i8* %34, i8* %35, i32 10, i32 75, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  switch i32 %41, label %57 [
    i32 0, label %42
    i32 1, label %53
    i32 131, label %56
  ]

42:                                               ; preds = %33
  %43 = load %struct.menu*, %struct.menu** %2, align 8
  %44 = getelementptr inbounds %struct.menu, %struct.menu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @dialog_input_result, align 4
  %47 = call i32 @sym_set_string_value(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %58

50:                                               ; preds = %42
  %51 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @show_textbox(i32* null, i8* %51, i32 5, i32 43)
  br label %57

53:                                               ; preds = %33
  %54 = load %struct.menu*, %struct.menu** %2, align 8
  %55 = call i32 @show_help(%struct.menu* %54)
  br label %57

56:                                               ; preds = %33
  br label %58

57:                                               ; preds = %33, %53, %50
  br label %8

58:                                               ; preds = %56, %49
  ret void
}

declare dso_local i8* @menu_get_prompt(%struct.menu*) #1

declare dso_local i32 @sym_get_type(i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @dialog_clear(...) #1

declare dso_local i32 @dialog_inputbox(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @sym_get_string_value(i32) #1

declare dso_local i32 @sym_set_string_value(i32, i32) #1

declare dso_local i32 @show_textbox(i32*, i8*, i32, i32) #1

declare dso_local i32 @show_help(%struct.menu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
