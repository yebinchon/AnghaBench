; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_file_browser_reload_directory_content.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_file_browser_reload_directory_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_browser = type { i32, i8*, i32, i8*, i32 }

@MAX_PATH_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_browser*, i8*)* @file_browser_reload_directory_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_browser_reload_directory_content(%struct.file_browser* %0, i8* %1) #0 {
  %3 = alloca %struct.file_browser*, align 8
  %4 = alloca i8*, align 8
  store %struct.file_browser* %0, %struct.file_browser** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %6 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @MAX_PATH_LEN, align 4
  %10 = call i32 @strncpy(i32 %7, i8* %8, i32 %9)
  %11 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %12 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %15 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dir_free_list(i8* %13, i32 %16)
  %18 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %19 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %22 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dir_free_list(i8* %20, i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %27 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %26, i32 0, i32 2
  %28 = call i8* @dir_list(i8* %25, i32 0, i32* %27)
  %29 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %30 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %33 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %32, i32 0, i32 0
  %34 = call i8* @dir_list(i8* %31, i32 1, i32* %33)
  %35 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %36 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @dir_free_list(i8*, i32) #1

declare dso_local i8* @dir_list(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
