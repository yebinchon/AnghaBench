; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_window.c_zip_source_window.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_window.c_zip_source_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32 }
%struct.zip_source = type { i32 }
%struct.window = type { i8*, i8*, i8* }

@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@window_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_source* @zip_source_window(%struct.zip* %0, %struct.zip_source* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.zip_source*, align 8
  %6 = alloca %struct.zip*, align 8
  %7 = alloca %struct.zip_source*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.window*, align 8
  store %struct.zip* %0, %struct.zip** %6, align 8
  store %struct.zip_source* %1, %struct.zip_source** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %12 = icmp eq %struct.zip_source* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.zip*, %struct.zip** %6, align 8
  %15 = getelementptr inbounds %struct.zip, %struct.zip* %14, i32 0, i32 0
  %16 = load i32, i32* @ZIP_ER_INVAL, align 4
  %17 = call i32 @_zip_error_set(i32* %15, i32 %16, i32 0)
  store %struct.zip_source* null, %struct.zip_source** %5, align 8
  br label %42

18:                                               ; preds = %4
  %19 = call i64 @malloc(i32 24)
  %20 = inttoptr i64 %19 to %struct.window*
  store %struct.window* %20, %struct.window** %10, align 8
  %21 = icmp eq %struct.window* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.zip*, %struct.zip** %6, align 8
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %23, i32 0, i32 0
  %25 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %26 = call i32 @_zip_error_set(i32* %24, i32 %25, i32 0)
  store %struct.zip_source* null, %struct.zip_source** %5, align 8
  br label %42

27:                                               ; preds = %18
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.window*, %struct.window** %10, align 8
  %30 = getelementptr inbounds %struct.window, %struct.window* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.window*, %struct.window** %10, align 8
  %33 = getelementptr inbounds %struct.window, %struct.window* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.window*, %struct.window** %10, align 8
  %36 = getelementptr inbounds %struct.window, %struct.window* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.zip*, %struct.zip** %6, align 8
  %38 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %39 = load i32, i32* @window_read, align 4
  %40 = load %struct.window*, %struct.window** %10, align 8
  %41 = call %struct.zip_source* @zip_source_layered(%struct.zip* %37, %struct.zip_source* %38, i32 %39, %struct.window* %40)
  store %struct.zip_source* %41, %struct.zip_source** %5, align 8
  br label %42

42:                                               ; preds = %27, %22, %13
  %43 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  ret %struct.zip_source* %43
}

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.zip_source* @zip_source_layered(%struct.zip*, %struct.zip_source*, i32, %struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
