; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_get_by_file_idx.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_get_by_file_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_stat = type { i32 }
%struct.zip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @r_io_zip_get_by_file_idx(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.zip_stat, align 4
  %17 = alloca %struct.zip*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i64 -1, i64* %15, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.zip* @r_io_zip_open_archive(i8* %18, i64 %19, i32 %20, i32 %21)
  store %struct.zip* %22, %struct.zip** %17, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.zip*, %struct.zip** %17, align 8
  %27 = icmp ne %struct.zip* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25, %5
  %29 = load %struct.zip*, %struct.zip** %17, align 8
  %30 = call i32 @zip_close(%struct.zip* %29)
  %31 = load i8*, i8** %12, align 8
  store i8* %31, i8** %6, align 8
  br label %78

32:                                               ; preds = %25
  %33 = load %struct.zip*, %struct.zip** %17, align 8
  %34 = call i64 @zip_get_num_files(%struct.zip* %33)
  store i64 %34, i64* %14, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @atoi(i8* %35)
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 48
  br i1 %44, label %49, label %45

45:                                               ; preds = %39, %32
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %39
  %50 = load %struct.zip*, %struct.zip** %17, align 8
  %51 = call i32 @zip_close(%struct.zip* %50)
  %52 = load i8*, i8** %12, align 8
  store i8* %52, i8** %6, align 8
  br label %78

53:                                               ; preds = %45
  store i64 0, i64* %13, align 8
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = call i32 @zip_stat_init(%struct.zip_stat* %16)
  %60 = load %struct.zip*, %struct.zip** %17, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @zip_stat_index(%struct.zip* %60, i64 %61, i32 0, %struct.zip_stat* %16)
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %16, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @strdup(i32 %68)
  store i8* %69, i8** %12, align 8
  br label %74

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %13, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %13, align 8
  br label %54

74:                                               ; preds = %66, %54
  %75 = load %struct.zip*, %struct.zip** %17, align 8
  %76 = call i32 @zip_close(%struct.zip* %75)
  %77 = load i8*, i8** %12, align 8
  store i8* %77, i8** %6, align 8
  br label %78

78:                                               ; preds = %74, %49, %28
  %79 = load i8*, i8** %6, align 8
  ret i8* %79
}

declare dso_local %struct.zip* @r_io_zip_open_archive(i8*, i64, i32, i32) #1

declare dso_local i32 @zip_close(%struct.zip*) #1

declare dso_local i64 @zip_get_num_files(%struct.zip*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @zip_stat_init(%struct.zip_stat*) #1

declare dso_local i32 @zip_stat_index(%struct.zip*, i64, i32, %struct.zip_stat*) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
