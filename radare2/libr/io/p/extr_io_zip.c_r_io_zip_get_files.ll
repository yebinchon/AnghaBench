; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_get_files.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_get_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32 }
%struct.zip_stat = type { i32 }

@free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @r_io_zip_get_files(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.zip_stat, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.zip* @r_io_zip_open_archive(i8* %16, i32 %17, i32 %18, i32 %19)
  store %struct.zip* %20, %struct.zip** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %21 = load %struct.zip*, %struct.zip** %10, align 8
  %22 = icmp ne %struct.zip* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %4
  %24 = load i32, i32* @free, align 4
  %25 = call i32* @r_list_newf(i32 %24)
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.zip*, %struct.zip** %10, align 8
  %30 = call i32 @zip_close(%struct.zip* %29)
  store i32* null, i32** %5, align 8
  br label %60

31:                                               ; preds = %23
  %32 = load %struct.zip*, %struct.zip** %10, align 8
  %33 = call i64 @zip_get_num_files(%struct.zip* %32)
  store i64 %33, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %52, %31
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = call i32 @zip_stat_init(%struct.zip_stat* %14)
  %40 = load %struct.zip*, %struct.zip** %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @zip_stat_index(%struct.zip* %40, i64 %41, i32 0, %struct.zip_stat* %14)
  %43 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %14, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @strdup(i32 %44)
  store i8* %45, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32*, i32** %13, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @r_list_append(i32* %48, i8* %49)
  br label %51

51:                                               ; preds = %47, %38
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %12, align 8
  br label %34

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %4
  %57 = load %struct.zip*, %struct.zip** %10, align 8
  %58 = call i32 @zip_close(%struct.zip* %57)
  %59 = load i32*, i32** %13, align 8
  store i32* %59, i32** %5, align 8
  br label %60

60:                                               ; preds = %56, %28
  %61 = load i32*, i32** %5, align 8
  ret i32* %61
}

declare dso_local %struct.zip* @r_io_zip_open_archive(i8*, i32, i32, i32) #1

declare dso_local i32* @r_list_newf(i32) #1

declare dso_local i32 @zip_close(%struct.zip*) #1

declare dso_local i64 @zip_get_num_files(%struct.zip*) #1

declare dso_local i32 @zip_stat_init(%struct.zip_stat*) #1

declare dso_local i32 @zip_stat_index(%struct.zip*, i64, i32, %struct.zip_stat*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @r_list_append(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
