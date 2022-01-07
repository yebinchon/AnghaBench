; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_win32-console-wrapper.c_cr_runproc.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_win32-console-wrapper.c_cr_runproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@STD_INPUT_HANDLE = common dso_local global i32 0, align 4
@STD_OUTPUT_HANDLE = common dso_local global i32 0, align 4
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@INFINITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @cr_runproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr_runproc(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %8, align 4
  %9 = call i32 @ZeroMemory(%struct.TYPE_7__* %5, i32 48)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 48, i32* %10, align 8
  %11 = load i32, i32* @STD_INPUT_HANDLE, align 4
  %12 = call i8* @GetStdHandle(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 8
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* @STD_OUTPUT_HANDLE, align 4
  %15 = call i8* @GetStdHandle(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 7
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %18 = call i8* @GetStdHandle(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 6
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 48, i32* %24, align 8
  %25 = call i32 @GetStartupInfoW(%struct.TYPE_7__* %6)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = call i32 @ZeroMemory(%struct.TYPE_7__* %7, i32 48)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @CreateProcessW(i32* %33, i32* %34, i32* null, i32* null, i32 %35, i32 0, i32* null, i32* null, %struct.TYPE_7__* %5, %struct.TYPE_7__* %7)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %2
  %39 = call i32 @cr_perror(i8* bitcast ([14 x i32]* @.str to i8*))
  br label %54

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @INFINITE, align 4
  %44 = call i32 @WaitForSingleObject(i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @GetExitCodeProcess(i32 %46, i32* %8)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @CloseHandle(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CloseHandle(i32 %52)
  br label %54

54:                                               ; preds = %40, %38
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @GetStdHandle(i32) #1

declare dso_local i32 @GetStartupInfoW(%struct.TYPE_7__*) #1

declare dso_local i32 @CreateProcessW(i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @cr_perror(i8*) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @GetExitCodeProcess(i32, i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
