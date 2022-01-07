; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_slurp_file.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_slurp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.zip_file = type { i32 }
%struct.zip = type { i32 }
%struct.zip_stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @r_io_zip_slurp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_io_zip_slurp_file(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.zip_file*, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca %struct.zip_stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.zip_file* null, %struct.zip_file** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %2, align 4
  br label %98

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.zip* @r_io_zip_open_archive(i32 %16, i32 %19, i32 %22, i32 %25)
  store %struct.zip* %26, %struct.zip** %5, align 8
  %27 = load %struct.zip*, %struct.zip** %5, align 8
  %28 = icmp ne %struct.zip* %27, null
  br i1 %28, label %29, label %94

29:                                               ; preds = %13
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %94

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %94

37:                                               ; preds = %32
  %38 = load %struct.zip*, %struct.zip** %5, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.zip_file* @zip_fopen_index(%struct.zip* %38, i32 %41, i32 0)
  store %struct.zip_file* %42, %struct.zip_file** %4, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = call i64 (...) @r_buf_new()
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %37
  %52 = call i32 @zip_stat_init(%struct.zip_stat* %6)
  %53 = load %struct.zip_file*, %struct.zip_file** %4, align 8
  %54 = icmp ne %struct.zip_file* %53, null
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %55
  %61 = load %struct.zip*, %struct.zip** %5, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @zip_stat_index(%struct.zip* %61, i32 %64, i32 0, %struct.zip_stat* %6)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %91, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @calloc(i32 1, i32 %69)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.zip_file*, %struct.zip_file** %4, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @zip_fread(%struct.zip_file* %74, i32* %75, i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds %struct.zip_stat, %struct.zip_stat* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @r_buf_set_bytes(i64 %81, i32* %82, i32 %84)
  store i32 1, i32* %7, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @free(i32* %88)
  br label %90

90:                                               ; preds = %73, %67
  br label %91

91:                                               ; preds = %90, %60, %55, %51
  %92 = load %struct.zip_file*, %struct.zip_file** %4, align 8
  %93 = call i32 @zip_fclose(%struct.zip_file* %92)
  br label %94

94:                                               ; preds = %91, %32, %29, %13
  %95 = load %struct.zip*, %struct.zip** %5, align 8
  %96 = call i32 @zip_close(%struct.zip* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %11
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.zip* @r_io_zip_open_archive(i32, i32, i32, i32) #1

declare dso_local %struct.zip_file* @zip_fopen_index(%struct.zip*, i32, i32) #1

declare dso_local i64 @r_buf_new(...) #1

declare dso_local i32 @zip_stat_init(%struct.zip_stat*) #1

declare dso_local i32 @zip_stat_index(%struct.zip*, i32, i32, %struct.zip_stat*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @zip_fread(%struct.zip_file*, i32*, i32) #1

declare dso_local i32 @r_buf_set_bytes(i64, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @zip_fclose(%struct.zip_file*) #1

declare dso_local i32 @zip_close(%struct.zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
