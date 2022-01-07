; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_win32-console-wrapper.c_wmain.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_win32-console-wrapper.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 101, i32 120, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [22 x i32] [i32 95, i32 115, i32 116, i32 97, i32 114, i32 116, i32 101, i32 100, i32 95, i32 102, i32 114, i32 111, i32 109, i32 95, i32 99, i32 111, i32 110, i32 115, i32 111, i32 108, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 121, i32 101, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = call i32* (...) @GetCommandLineW()
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = call i32 @GetModuleFileNameW(i32* null, i32* %13, i32 %15)
  %17 = call i64 @wcsrchr(i32* %13, i8 signext 46)
  %18 = add nsw i64 %17, 1
  %19 = call i32 @wcscpy(i64 %18, i8* bitcast ([4 x i32]* @.str to i8*))
  %20 = call i32 @SetEnvironmentVariableW(i8* bitcast ([22 x i32]* @.str.1 to i8*), i8* bitcast ([4 x i32]* @.str.2 to i8*))
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @cr_runproc(i32* %13, i32* %21)
  %23 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %23)
  ret i32 %22
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @GetCommandLineW(...) #2

declare dso_local i32 @GetModuleFileNameW(i32*, i32*, i32) #2

declare dso_local i32 @wcscpy(i64, i8*) #2

declare dso_local i64 @wcsrchr(i32*, i8 signext) #2

declare dso_local i32 @SetEnvironmentVariableW(i8*, i8*) #2

declare dso_local i32 @cr_runproc(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
