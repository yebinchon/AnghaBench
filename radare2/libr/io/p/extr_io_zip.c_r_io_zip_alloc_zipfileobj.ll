; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_alloc_zipfileobj.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_alloc_zipfileobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_stat = type { i32* }
%struct.zip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @r_io_zip_alloc_zipfileobj(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.zip_stat, align 8
  %16 = alloca %struct.zip*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.zip* @r_io_zip_open_archive(i8* %17, i32 %18, i32 %19, i32 %20)
  store %struct.zip* %21, %struct.zip** %16, align 8
  %22 = load %struct.zip*, %struct.zip** %16, align 8
  %23 = icmp ne %struct.zip* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %74

25:                                               ; preds = %5
  %26 = load %struct.zip*, %struct.zip** %16, align 8
  %27 = call i64 @zip_get_num_files(%struct.zip* %26)
  store i64 %27, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %28

28:                                               ; preds = %57, %25
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = call i32 @zip_stat_init(%struct.zip_stat* %15)
  %34 = load %struct.zip*, %struct.zip** %16, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @zip_stat_index(%struct.zip* %34, i64 %35, i32 0, %struct.zip_stat* %15)
  %37 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %15, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %15, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strcmp(i32* %42, i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32* @r_io_zip_create_new_file(i8* %47, i8* %48, %struct.zip_stat* %15, i32 %49, i32 %50, i32 %51)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @r_io_zip_slurp_file(i32* %53)
  br label %60

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %13, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %13, align 8
  br label %28

60:                                               ; preds = %46, %28
  %61 = load i32*, i32** %12, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32* @r_io_zip_create_new_file(i8* %64, i8* %65, %struct.zip_stat* null, i32 %66, i32 %67, i32 %68)
  store i32* %69, i32** %12, align 8
  br label %70

70:                                               ; preds = %63, %60
  %71 = load %struct.zip*, %struct.zip** %16, align 8
  %72 = call i32 @zip_close(%struct.zip* %71)
  %73 = load i32*, i32** %12, align 8
  store i32* %73, i32** %6, align 8
  br label %74

74:                                               ; preds = %70, %24
  %75 = load i32*, i32** %6, align 8
  ret i32* %75
}

declare dso_local %struct.zip* @r_io_zip_open_archive(i8*, i32, i32, i32) #1

declare dso_local i64 @zip_get_num_files(%struct.zip*) #1

declare dso_local i32 @zip_stat_init(%struct.zip_stat*) #1

declare dso_local i32 @zip_stat_index(%struct.zip*, i64, i32, %struct.zip_stat*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32* @r_io_zip_create_new_file(i8*, i8*, %struct.zip_stat*, i32, i32, i32) #1

declare dso_local i32 @r_io_zip_slurp_file(i32*) #1

declare dso_local i32 @zip_close(%struct.zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
