; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_enum_files.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_enum_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32 (i8*, i32*)*, i8*)* @enum_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_files(i32* %0, i32 (i8*, i32*)* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32 (i8*, i32*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 (i8*, i32*)* %1, i32 (i8*, i32*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @obs_data_get_array(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %44

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @obs_data_array_count(i32* %18)
  store i64 %19, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %38, %17
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32* @obs_data_array_item(i32* %25, i64 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 %28(i8* %29, i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @obs_data_release(i32* %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %41

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %20

41:                                               ; preds = %36, %20
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @obs_data_array_release(i32* %42)
  br label %44

44:                                               ; preds = %41, %16
  ret void
}

declare dso_local i32* @obs_data_get_array(i32*, i8*) #1

declare dso_local i64 @obs_data_array_count(i32*) #1

declare dso_local i32* @obs_data_array_item(i32*, i64) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @obs_data_array_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
