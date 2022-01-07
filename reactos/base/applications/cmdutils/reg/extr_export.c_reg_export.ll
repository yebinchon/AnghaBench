; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_reg_export.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_export.c_reg_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@STRING_INVALID_KEY = common dso_local global i32 0, align 4
@STRING_INVALID_SYNTAX = common dso_local global i32 0, align 4
@STRING_FUNC_HELP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_export(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 5
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  br label %65

20:                                               ; preds = %16
  %21 = load i32**, i32*** %5, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @parse_registry_key(i32* %23, i32* %6, i32** %8, i32** %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %74

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32**, i32*** %5, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @is_overwrite_switch(i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %65

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @KEY_READ, align 4
  %41 = call i64 @RegOpenKeyExW(i32 %38, i32* %39, i32 0, i32 %40, i32* %7)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @STRING_INVALID_KEY, align 4
  %45 = call i32 (i32, ...) @output_message(i32 %44)
  store i32 1, i32* %3, align 4
  br label %74

46:                                               ; preds = %37
  %47 = load i32**, i32*** %5, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @get_file_handle(i32* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @export_file_header(i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @export_registry_data(i32 %54, i32 %55, i32* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @export_newline(i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @CloseHandle(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @RegCloseKey(i32 %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %36, %19
  %66 = load i32, i32* @STRING_INVALID_SYNTAX, align 4
  %67 = call i32 (i32, ...) @output_message(i32 %66)
  %68 = load i32, i32* @STRING_FUNC_HELP, align 4
  %69 = load i32**, i32*** %5, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @struprW(i32* %71)
  %73 = call i32 (i32, ...) @output_message(i32 %68, i32 %72)
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %46, %43, %26
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @parse_registry_key(i32*, i32*, i32**, i32**) #1

declare dso_local i32 @is_overwrite_switch(i32*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @output_message(i32, ...) #1

declare dso_local i32 @get_file_handle(i32*, i32) #1

declare dso_local i32 @export_file_header(i32) #1

declare dso_local i32 @export_registry_data(i32, i32, i32*) #1

declare dso_local i32 @export_newline(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @struprW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
