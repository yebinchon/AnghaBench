; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_initcurses.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_initcurses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"newterm!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"initscr!\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@stdscr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BUTTON1_PRESSED = common dso_local global i32 0, align 4
@BUTTON1_DOUBLE_CLICKED = common dso_local global i32 0, align 4
@CTX_MAX = common dso_local global i16 0, align 2
@g_ctx = common dso_local global %struct.TYPE_3__* null, align 8
@BUTTON4_PRESSED = common dso_local global i32 0, align 4
@BUTTON5_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @initcurses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initcurses(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = load i32, i32* @stdin, align 4
  %10 = call i32 @newterm(i32* null, i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %69

16:                                               ; preds = %7
  br label %27

17:                                               ; preds = %1
  %18 = call i32 (...) @initscr()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @DPRINTF_S(i32 %23)
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %69

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %16
  %28 = call i32 (...) @cbreak()
  %29 = call i32 (...) @noecho()
  %30 = call i32 (...) @nonl()
  %31 = load i32, i32* @stdscr, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @keypad(i32 %31, i32 %32)
  %34 = load i32, i32* @BUTTON1_PRESSED, align 4
  %35 = load i32, i32* @BUTTON1_DOUBLE_CLICKED, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @mousemask(i32 %36, i32* %37)
  %39 = call i32 @mouseinterval(i32 0)
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @curs_set(i32 %40)
  %42 = call i32 (...) @start_color()
  %43 = call i32 (...) @use_default_colors()
  store i16 0, i16* %4, align 2
  br label %44

44:                                               ; preds = %62, %27
  %45 = load i16, i16* %4, align 2
  %46 = sext i16 %45 to i32
  %47 = load i16, i16* @CTX_MAX, align 2
  %48 = sext i16 %47 to i32
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i16, i16* %4, align 2
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %52, 1
  %54 = trunc i32 %53 to i16
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_ctx, align 8
  %56 = load i16, i16* %4, align 2
  %57 = sext i16 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @init_pair(i16 signext %54, i32 %60, i32 -1)
  br label %62

62:                                               ; preds = %50
  %63 = load i16, i16* %4, align 2
  %64 = add i16 %63, 1
  store i16 %64, i16* %4, align 2
  br label %44

65:                                               ; preds = %44
  %66 = call i32 (...) @settimeout()
  %67 = call i32 @set_escdelay(i32 25)
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %20, %12
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @newterm(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @DPRINTF_S(i32) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @nonl(...) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @mousemask(i32, i32*) #1

declare dso_local i32 @mouseinterval(i32) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i32 @start_color(...) #1

declare dso_local i32 @use_default_colors(...) #1

declare dso_local i32 @init_pair(i16 signext, i32, i32) #1

declare dso_local i32 @settimeout(...) #1

declare dso_local i32 @set_escdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
