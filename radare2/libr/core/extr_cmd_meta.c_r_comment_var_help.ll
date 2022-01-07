; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_r_comment_var_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_meta.c_r_comment_var_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@help_msg_Cvb = common dso_local global i32 0, align 4
@help_msg_Cvs = common dso_local global i32 0, align 4
@help_msg_Cvr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"See Cvb?, Cvs? and Cvr?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r_comment_var_help(i32* %0, i8 signext %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  switch i32 %6, label %21 [
    i32 98, label %7
    i32 115, label %11
    i32 114, label %15
    i32 63, label %19
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @help_msg_Cvb, align 4
  %10 = call i32 @r_core_cmd_help(i32* %8, i32 %9)
  br label %21

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @help_msg_Cvs, align 4
  %14 = call i32 @r_core_cmd_help(i32* %12, i32 %13)
  br label %21

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @help_msg_Cvr, align 4
  %18 = call i32 @r_core_cmd_help(i32* %16, i32 %17)
  br label %21

19:                                               ; preds = %2
  %20 = call i32 @r_cons_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2, %15, %11, %7
  ret void
}

declare dso_local i32 @r_core_cmd_help(i32*, i32) #1

declare dso_local i32 @r_cons_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
