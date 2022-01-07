; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_terminal.c_terminal_keymap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_terminal.c_terminal_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arguments = common dso_local global i32* null, align 8
@MATRIX_ROWS = common dso_local global i32 0, align 4
@MATRIX_COLS = common dso_local global i32 0, align 4
@keymaps = common dso_local global i32*** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"0x%04x,\00", align 1
@newline = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminal_keymap() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [8 x i8], align 1
  %6 = load i32*, i32** @arguments, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @strlen(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %0
  %12 = load i32*, i32** @arguments, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strtol(i32 %14, i8** null, i32 10)
  store i64 %15, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %49, %11
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @MATRIX_ROWS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @MATRIX_COLS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load i32***, i32**** @keymaps, align 8
  %27 = load i64, i64* %1, align 8
  %28 = getelementptr inbounds i32**, i32*** %26, i64 %27
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i64 @pgm_read_word(i32* %36)
  store i64 %37, i64* %4, align 8
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %42 = call i32 @send_string(i8* %41)
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load i8*, i8** @newline, align 8
  %48 = call i32 @send_string(i8* %47)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %16

52:                                               ; preds = %16
  br label %54

53:                                               ; preds = %0
  br label %54

54:                                               ; preds = %53, %52
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strtol(i32, i8**, i32) #1

declare dso_local i64 @pgm_read_word(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @send_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
