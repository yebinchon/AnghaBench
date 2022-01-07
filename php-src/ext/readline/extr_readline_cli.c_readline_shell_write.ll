; ModuleID = '/home/carl/AnghaBench/php-src/ext/readline/extr_readline_cli.c_readline_shell_write.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/readline/extr_readline_cli.c_readline_shell_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prompt_str = common dso_local global i32 0, align 4
@pager = common dso_local global i32 0, align 4
@pager_pipe = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @readline_shell_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @readline_shell_write(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @prompt_str, align 4
  %7 = call i64* @CLIR_G(i32 %6)
  %8 = icmp ne i64* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* @prompt_str, align 4
  %11 = call i64* @CLIR_G(i32 %10)
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @smart_str_appendl(i64* %11, i8* %12, i64 %13)
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %3, align 8
  br label %42

16:                                               ; preds = %2
  %17 = load i32, i32* @pager, align 4
  %18 = call i64* @CLIR_G(i32 %17)
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32, i32* @pager, align 4
  %22 = call i64* @CLIR_G(i32 %21)
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i64, i64* @pager_pipe, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @pager, align 4
  %30 = call i64* @CLIR_G(i32 %29)
  %31 = call i64 @VCWD_POPEN(i64* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %31, i64* @pager_pipe, align 8
  br label %32

32:                                               ; preds = %28, %25, %20, %16
  %33 = load i64, i64* @pager_pipe, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @MIN(i64 %37, i32 16384)
  %39 = load i64, i64* @pager_pipe, align 8
  %40 = call i64 @fwrite(i8* %36, i32 1, i32 %38, i64 %39)
  store i64 %40, i64* %3, align 8
  br label %42

41:                                               ; preds = %32
  store i64 -1, i64* %3, align 8
  br label %42

42:                                               ; preds = %41, %35, %9
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i64* @CLIR_G(i32) #1

declare dso_local i32 @smart_str_appendl(i64*, i8*, i64) #1

declare dso_local i64 @VCWD_POPEN(i64*, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i64) #1

declare dso_local i32 @MIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
