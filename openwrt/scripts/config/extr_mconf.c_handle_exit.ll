; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_mconf.c_handle_exit.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_mconf.c_handle_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@save_and_exit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Do you wish to save your new configuration?\0A(Press <ESC><ESC> to continue kernel configuration.)\00", align 1
@saved_x = common dso_local global i32 0, align 4
@saved_y = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"\0A\0AError while writing of the configuration.\0AYour configuration changes were NOT saved.\0A\0A\00", align 1
@silent = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"\0A\0A*** End of the configuration.\0A*** Execute 'make' to start the build or try 'make help'.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\0A\0AYour configuration changes were NOT saved.\0A\0A\00", align 1
@KEY_ESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @handle_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_exit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* @save_and_exit, align 4
  %3 = call i32 (...) @reset_subtitle()
  %4 = call i32 (...) @dialog_clear()
  %5 = call i64 (...) @conf_get_changed()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i8* @_(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @dialog_yesno(i32* null, i8* %8, i32 6, i32 60)
  store i32 %9, i32* %2, align 4
  br label %11

10:                                               ; preds = %0
  store i32 -1, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = load i32, i32* @saved_x, align 4
  %13 = load i32, i32* @saved_y, align 4
  %14 = call i32 @end_dialog(i32 %12, i32 %13)
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %32 [
    i32 0, label %16
    i32 -1, label %25
  ]

16:                                               ; preds = %11
  %17 = load i32, i32* @filename, align 4
  %18 = call i32 @conf_write(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = call i8* @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @fprintf(i32 %21, i8* %22)
  store i32 1, i32* %1, align 4
  br label %47

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %11, %24
  %26 = load i32, i32* @silent, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = call i8* @_(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @printf(i8* %29)
  br label %31

31:                                               ; preds = %28, %25
  store i32 0, i32* %2, align 4
  br label %45

32:                                               ; preds = %11
  %33 = load i32, i32* @silent, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %38 = call i32 @fprintf(i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @KEY_ESC, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %39
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i32 @reset_subtitle(...) #1

declare dso_local i32 @dialog_clear(...) #1

declare dso_local i64 @conf_get_changed(...) #1

declare dso_local i32 @dialog_yesno(i32*, i8*, i32, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @end_dialog(i32, i32) #1

declare dso_local i32 @conf_write(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
