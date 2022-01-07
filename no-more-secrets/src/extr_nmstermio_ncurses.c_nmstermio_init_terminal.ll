; ModuleID = '/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio_ncurses.c_nmstermio_init_terminal.c'
source_filename = "/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio_ncurses.c_nmstermio_init_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@foregroundColor = common dso_local global i32 0, align 4
@COLOR_BLACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nmstermio_init_terminal() #0 {
  %1 = load i32, i32* @STDIN_FILENO, align 4
  %2 = call i32 @isatty(i32 %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @stdin, align 4
  %6 = call i32 @freopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  store i32 %6, i32* @stdin, align 4
  br label %7

7:                                                ; preds = %4, %0
  %8 = call i32 (...) @initscr()
  %9 = call i32 (...) @cbreak()
  %10 = call i32 (...) @noecho()
  %11 = call i32 @curs_set(i32 0)
  %12 = call i32 @move(i32 0, i32 0)
  %13 = call i64 (...) @has_colors()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = call i32 (...) @start_color()
  %17 = load i32, i32* @foregroundColor, align 4
  %18 = load i32, i32* @COLOR_BLACK, align 4
  %19 = call i32 @init_pair(i32 1, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %7
  ret void
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @freopen(i8*, i8*, i32) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i64 @has_colors(...) #1

declare dso_local i32 @start_color(...) #1

declare dso_local i32 @init_pair(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
