; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_terminal.c_terminal_keycode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_terminal.c_terminal_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arguments = common dso_local global i32* null, align 8
@keymaps = common dso_local global i32*** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminal_keycode() #0 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca [5 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32*, i32** @arguments, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @strlen(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %0
  %13 = load i32*, i32** @arguments, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strlen(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load i32*, i32** @arguments, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strlen(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load i32*, i32** @arguments, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strtol(i32 %27, i8** null, i32 10)
  store i64 %28, i64* %3, align 8
  %29 = load i32*, i32** @arguments, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strtol(i32 %31, i8** null, i32 10)
  store i64 %32, i64* %4, align 8
  %33 = load i32*, i32** @arguments, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strtol(i32 %35, i8** null, i32 10)
  store i64 %36, i64* %5, align 8
  %37 = load i32***, i32**** @keymaps, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds i32**, i32*** %37, i64 %38
  %40 = load i32**, i32*** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i64 @pgm_read_word(i32* %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %49 = call i32 @itoa(i64 %47, i8* %48, i32 10)
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %52 = call i32 @itoa(i64 %50, i8* %51, i32 16)
  %53 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %55 = call i32 @send_string(i8* %54)
  %56 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %58 = call i32 @send_string(i8* %57)
  %59 = call i32 @SEND_STRING(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %61

60:                                               ; preds = %18, %12, %0
  br label %61

61:                                               ; preds = %60, %24
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strtol(i32, i8**, i32) #1

declare dso_local i64 @pgm_read_word(i32*) #1

declare dso_local i32 @itoa(i64, i8*, i32) #1

declare dso_local i32 @SEND_STRING(i8*) #1

declare dso_local i32 @send_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
