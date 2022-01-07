; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_subprocess-win.c_create_handle_list.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_subprocess-win.c_create_handle_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@delete_handle_list = common dso_local global i32 0, align 4
@PROC_THREAD_ATTRIBUTE_HANDLE_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32)* @create_handle_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_handle_list(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call i32 @InitializeProcThreadAttributeList(i32* null, i32 1, i32 0, i32* %8)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = call i64 (...) @GetLastError()
  %14 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32* null, i32** %4, align 8
  br label %45

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32* @talloc_size(i8* %19, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @InitializeProcThreadAttributeList(i32* %22, i32 1, i32 0, i32* %8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %42

26:                                               ; preds = %18
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* @delete_handle_list, align 4
  %29 = call i32 @talloc_set_destructor(i32* %27, i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* @PROC_THREAD_ATTRIBUTE_HANDLE_LIST, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @UpdateProcThreadAttribute(i32* %30, i32 0, i32 %31, i32* %32, i32 %36, i32* null, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %42

40:                                               ; preds = %26
  %41 = load i32*, i32** %9, align 8
  store i32* %41, i32** %4, align 8
  br label %45

42:                                               ; preds = %39, %25
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @talloc_free(i32* %43)
  store i32* null, i32** %4, align 8
  br label %45

45:                                               ; preds = %42, %40, %16
  %46 = load i32*, i32** %4, align 8
  ret i32* %46
}

declare dso_local i32 @InitializeProcThreadAttributeList(i32*, i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @talloc_size(i8*, i32) #1

declare dso_local i32 @talloc_set_destructor(i32*, i32) #1

declare dso_local i32 @UpdateProcThreadAttribute(i32*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @talloc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
