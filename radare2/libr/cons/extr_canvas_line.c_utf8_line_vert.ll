; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_canvas_line.c_utf8_line_vert.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_canvas_line.c_utf8_line_vert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@RUNECODESTR_LINE_VERT = common dso_local global i8* null, align 8
@DOTTED_LINE_VERT = common dso_local global i8* null, align 8
@DASHED_LINE_VERT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @utf8_line_vert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @utf8_line_vert(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call %struct.TYPE_2__* (...) @r_cons_singleton()
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %16 [
    i32 128, label %10
    i32 129, label %12
    i32 130, label %14
  ]

10:                                               ; preds = %8
  %11 = load i8*, i8** @RUNECODESTR_LINE_VERT, align 8
  store i8* %11, i8** %2, align 8
  br label %19

12:                                               ; preds = %8
  %13 = load i8*, i8** @DOTTED_LINE_VERT, align 8
  store i8* %13, i8** %2, align 8
  br label %19

14:                                               ; preds = %8
  %15 = load i8*, i8** @DASHED_LINE_VERT, align 8
  store i8* %15, i8** %2, align 8
  br label %19

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i8*, i8** @RUNECODESTR_LINE_VERT, align 8
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %17, %14, %12, %10
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

declare dso_local %struct.TYPE_2__* @r_cons_singleton(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
