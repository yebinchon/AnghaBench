; ModuleID = '/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio_ncurses.c_nmstermio_print_reveal_string.c'
source_filename = "/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio_ncurses.c_nmstermio_print_reveal_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foregroundColor = common dso_local global i32 0, align 4
@A_BOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nmstermio_print_reveal_string(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @foregroundColor, align 4
  %7 = load i32, i32* @A_BOLD, align 4
  %8 = call i32 @attron(i32 %7)
  %9 = call i64 (...) @has_colors()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 @COLOR_PAIR(i32 1)
  %13 = call i32 @attron(i32 %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @addstr(i8* %15)
  %17 = call i64 (...) @has_colors()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = call i32 @COLOR_PAIR(i32 1)
  %21 = call i32 @attroff(i32 %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* @A_BOLD, align 4
  %24 = call i32 @attroff(i32 %23)
  ret void
}

declare dso_local i32 @attron(i32) #1

declare dso_local i64 @has_colors(...) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @addstr(i8*) #1

declare dso_local i32 @attroff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
