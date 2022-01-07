; ModuleID = '/home/carl/AnghaBench/os-tutorial/23-fixes/drivers/extr_keyboard.c_keyboard_callback.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/23-fixes/drivers/extr_keyboard.c_keyboard_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_MAX = common dso_local global i64 0, align 8
@BACKSPACE = common dso_local global i64 0, align 8
@key_buffer = common dso_local global i8* null, align 8
@ENTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sc_ascii = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @keyboard_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboard_callback(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  store i32* %0, i32** %2, align 8
  %6 = call i64 @port_byte_in(i32 96)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @SC_MAX, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @BACKSPACE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8*, i8** @key_buffer, align 8
  %17 = call i32 @backspace(i8* %16)
  %18 = call i32 (...) @kprint_backspace()
  br label %45

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @ENTER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = call i32 @kprint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** @key_buffer, align 8
  %26 = call i32 @user_input(i8* %25)
  %27 = load i8*, i8** @key_buffer, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  br label %44

29:                                               ; preds = %19
  %30 = load i8*, i8** @sc_ascii, align 8
  %31 = load i64, i64* %3, align 8
  %32 = trunc i64 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %4, align 1
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %37 = load i8, i8* %4, align 1
  store i8 %37, i8* %36, align 1
  %38 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** @key_buffer, align 8
  %40 = load i8, i8* %4, align 1
  %41 = call i32 @append(i8* %39, i8 signext %40)
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %43 = call i32 @kprint(i8* %42)
  br label %44

44:                                               ; preds = %29, %23
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @UNUSED(i32* %46)
  br label %48

48:                                               ; preds = %45, %10
  ret void
}

declare dso_local i64 @port_byte_in(i32) #1

declare dso_local i32 @backspace(i8*) #1

declare dso_local i32 @kprint_backspace(...) #1

declare dso_local i32 @kprint(i8*) #1

declare dso_local i32 @user_input(i8*) #1

declare dso_local i32 @append(i8*, i8 signext) #1

declare dso_local i32 @UNUSED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
