; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_mkdir.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MKDIR_ERROR = common dso_local global i32 0, align 4
@ERROR_ALREADY_EXISTS = common dso_local global i64 0, align 8
@MKDIR_EXISTS = common dso_local global i32 0, align 4
@MKDIR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_mkdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @os_utf8_to_wcs_ptr(i8* %6, i32 0, i32** %4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @MKDIR_ERROR, align 4
  store i32 %10, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @CreateDirectory(i32* %12, i32* null)
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @bfree(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = call i64 (...) @GetLastError()
  %20 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @MKDIR_EXISTS, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @MKDIR_ERROR, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %11
  %29 = load i32, i32* @MKDIR_SUCCESS, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %26, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @os_utf8_to_wcs_ptr(i8*, i32, i32**) #1

declare dso_local i32 @CreateDirectory(i32*, i32*) #1

declare dso_local i32 @bfree(i32*) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
