; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_get_file_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_get_file_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CREATE_ALWAYS = common dso_local global i32 0, align 4
@CREATE_NEW = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_FILE_EXISTS = common dso_local global i64 0, align 8
@STRING_OVERWRITE_FILE = common dso_local global i32 0, align 4
@STRING_CANCELLED = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @get_file_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_file_handle(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @CREATE_ALWAYS, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @CREATE_NEW, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = call i64 @create_file(i32* %8, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %15
  %22 = call i64 (...) @GetLastError()
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @ERROR_FILE_EXISTS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32, i32* @STRING_OVERWRITE_FILE, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @ask_confirm(i32 %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @STRING_CANCELLED, align 4
  %33 = call i32 @output_message(i32 %32)
  %34 = call i32 @exit(i32 0) #3
  unreachable

35:                                               ; preds = %26
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @CREATE_ALWAYS, align 4
  %38 = call i64 @create_file(i32* %36, i32 %37)
  store i64 %38, i64* %5, align 8
  br label %55

39:                                               ; preds = %21
  %40 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %41 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %44 = or i32 %42, %43
  %45 = load i64, i64* %6, align 8
  %46 = bitcast i32** %7 to i32*
  %47 = call i32 @FormatMessageW(i32 %44, i32* null, i64 %45, i32 0, i32* %46, i32 0, i32* null)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @lstrlenW(i32* %49)
  %51 = call i32 @output_writeconsole(i32* %48, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @LocalFree(i32* %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %15
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local i64 @create_file(i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ask_confirm(i32, i32*) #1

declare dso_local i32 @output_message(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @FormatMessageW(i32, i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @output_writeconsole(i32*, i32) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
