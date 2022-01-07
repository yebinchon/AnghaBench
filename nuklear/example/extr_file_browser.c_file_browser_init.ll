; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_file_browser_init.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_file_browser_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_browser = type { i8*, i8*, i8*, i32, i8*, i32, i8*, %struct.media* }
%struct.media = type { i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@MAX_PATH_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"desktop/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_browser*, %struct.media*)* @file_browser_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_browser_init(%struct.file_browser* %0, %struct.media* %1) #0 {
  %3 = alloca %struct.file_browser*, align 8
  %4 = alloca %struct.media*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.file_browser* %0, %struct.file_browser** %3, align 8
  store %struct.media* %1, %struct.media** %4, align 8
  %8 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %9 = call i32 @memset(%struct.file_browser* %8, i32 0, i32 64)
  %10 = load %struct.media*, %struct.media** %4, align 8
  %11 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %12 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %11, i32 0, i32 7
  store %struct.media* %10, %struct.media** %12, align 8
  %13 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = call i32 (...) @getuid()
  %18 = call %struct.TYPE_2__* @getpwuid(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %23 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @MAX_PATH_LEN, align 4
  %27 = call i32 @strncpy(i8* %24, i8* %25, i32 %26)
  %28 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %29 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %33 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = call i32 @strcpy(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %39 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %42 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcpy(i8* %40, i8* %43)
  %45 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %46 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %49 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcpy(i8* %47, i8* %50)
  %52 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %53 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strlen(i8* %54)
  store i64 %55, i64* %7, align 8
  %56 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %57 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = call i32 @strcpy(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %63 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %66 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %65, i32 0, i32 5
  %67 = call i8* @dir_list(i8* %64, i32 0, i32* %66)
  %68 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %69 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %71 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %74 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %73, i32 0, i32 3
  %75 = call i8* @dir_list(i8* %72, i32 1, i32* %74)
  %76 = load %struct.file_browser*, %struct.file_browser** %3, align 8
  %77 = getelementptr inbounds %struct.file_browser, %struct.file_browser* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  ret void
}

declare dso_local i32 @memset(%struct.file_browser*, i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.TYPE_2__* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @dir_list(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
