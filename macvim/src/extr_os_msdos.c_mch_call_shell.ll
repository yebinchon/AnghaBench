; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_msdos.c_mch_call_shell.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_msdos.c_mch_call_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_tmode = common dso_local global i32 0, align 4
@SHELL_COOKED = common dso_local global i32 0, align 4
@TMODE_COOK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@p_sh = common dso_local global i8* null, align 8
@p_shcf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@TMODE_RAW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SHELL_SILENT = common dso_local global i32 0, align 4
@emsg_silent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"\0Ashell returned \00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_call_shell(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @cur_tmode, align 4
  store i32 %8, i32* %6, align 4
  %9 = call i32 (...) @out_flush()
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SHELL_COOKED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @TMODE_COOK, align 4
  %16 = call i32 @settmode(i32 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @set_interrupts(i32 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** @p_sh, align 8
  %24 = call i32 @system(i8* %23)
  store i32 %24, i32* %5, align 4
  br label %50

25:                                               ; preds = %17
  %26 = load i8*, i8** @p_sh, align 8
  %27 = call i64 @STRLEN(i8* %26)
  %28 = load i8*, i8** @p_shcf, align 8
  %29 = call i64 @STRLEN(i8* %28)
  %30 = add nsw i64 %27, %29
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @STRLEN(i8* %31)
  %33 = add nsw i64 %30, %32
  %34 = add nsw i64 %33, 3
  %35 = call i8* @alloc(i64 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %49

39:                                               ; preds = %25
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** @p_sh, align 8
  %42 = load i8*, i8** @p_shcf, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42, i8* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @system(i8* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @vim_free(i8* %47)
  br label %49

49:                                               ; preds = %39, %38
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @TMODE_RAW, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @TMODE_RAW, align 4
  %56 = call i32 @settmode(i32 %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @set_interrupts(i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SHELL_SILENT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @emsg_silent, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = call i32 @MSG_PUTS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = call i32 @msg_outnum(i64 %73)
  %75 = call i32 @msg_putchar(i8 signext 10)
  br label %76

76:                                               ; preds = %70, %67, %62, %57
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @settmode(i32) #1

declare dso_local i32 @set_interrupts(i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i8* @alloc(i64) #1

declare dso_local i64 @STRLEN(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @vim_free(i8*) #1

declare dso_local i32 @MSG_PUTS(i8*) #1

declare dso_local i32 @msg_outnum(i64) #1

declare dso_local i32 @msg_putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
