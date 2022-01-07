; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc1.c_vim_beep.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc1.c_vim_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@emsg_silent = common dso_local global i64 0, align 8
@p_vb = common dso_local global i64 0, align 8
@T_VB = common dso_local global i32 0, align 4
@BELL = common dso_local global i32 0, align 4
@p_debug = common dso_local global i32 0, align 4
@HLF_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Beep!\00", align 1
@beep_count = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vim_beep() #0 {
  %1 = load i64, i64* @emsg_silent, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %26

3:                                                ; preds = %0
  %4 = load i64, i64* @p_vb, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, i32* @T_VB, align 4
  %8 = call i32 @out_str(i32 %7)
  br label %12

9:                                                ; preds = %3
  %10 = load i32, i32* @BELL, align 4
  %11 = call i32 @out_char(i32 %10)
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* @p_debug, align 4
  %14 = call i32* @vim_strchr(i32 %13, i8 signext 101)
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* @HLF_W, align 4
  %18 = call i32 @hl_attr(i32 %17)
  %19 = call i32 @msg_source(i32 %18)
  %20 = call i64 @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* @HLF_W, align 4
  %23 = call i32 @hl_attr(i32 %22)
  %24 = call i32 @msg_attr(i32* %21, i32 %23)
  br label %25

25:                                               ; preds = %16, %12
  br label %26

26:                                               ; preds = %25, %0
  ret void
}

declare dso_local i32 @out_str(i32) #1

declare dso_local i32 @out_char(i32) #1

declare dso_local i32* @vim_strchr(i32, i8 signext) #1

declare dso_local i32 @msg_source(i32) #1

declare dso_local i32 @hl_attr(i32) #1

declare dso_local i32 @msg_attr(i32*, i32) #1

declare dso_local i64 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
