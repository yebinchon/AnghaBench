; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_flush_file.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_flush_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.zip = type { i32 }
%struct.zip_source = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r_io_zip_flush_file(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.zip_source*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %93

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.zip* @r_io_zip_open_archive(i32 %16, i32 %19, i32 %22, i32 %25)
  store %struct.zip* %26, %struct.zip** %5, align 8
  %27 = load %struct.zip*, %struct.zip** %5, align 8
  %28 = icmp ne %struct.zip* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %13
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %93

31:                                               ; preds = %13
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @r_buf_data(i32 %34, i32* %6)
  store i32* %35, i32** %7, align 8
  %36 = load %struct.zip*, %struct.zip** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.zip_source* @zip_source_buffer(%struct.zip* %36, i32* %37, i32 %38, i32 0)
  store %struct.zip_source* %39, %struct.zip_source** %8, align 8
  %40 = load %struct.zip_source*, %struct.zip_source** %8, align 8
  %41 = icmp ne %struct.zip_source* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %31
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.zip*, %struct.zip** %5, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.zip_source*, %struct.zip_source** %8, align 8
  %53 = call i64 @zip_replace(%struct.zip* %48, i32 %51, %struct.zip_source* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %47
  br label %83

57:                                               ; preds = %42, %31
  %58 = load %struct.zip_source*, %struct.zip_source** %8, align 8
  %59 = icmp ne %struct.zip_source* %58, null
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load %struct.zip*, %struct.zip** %5, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.zip_source*, %struct.zip_source** %8, align 8
  %71 = call i64 @zip_add(%struct.zip* %66, i64 %69, %struct.zip_source* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.zip*, %struct.zip** %5, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @zip_name_locate(%struct.zip* %74, i64 %77, i32 0)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %73, %65
  br label %82

82:                                               ; preds = %81, %60, %57
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.zip*, %struct.zip** %5, align 8
  %85 = call i32 @zip_close(%struct.zip* %84)
  %86 = load %struct.zip_source*, %struct.zip_source** %8, align 8
  %87 = icmp ne %struct.zip_source* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.zip_source*, %struct.zip_source** %8, align 8
  %90 = call i32 @zip_source_free(%struct.zip_source* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %29, %11
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.zip* @r_io_zip_open_archive(i32, i32, i32, i32) #1

declare dso_local i32* @r_buf_data(i32, i32*) #1

declare dso_local %struct.zip_source* @zip_source_buffer(%struct.zip*, i32*, i32, i32) #1

declare dso_local i64 @zip_replace(%struct.zip*, i32, %struct.zip_source*) #1

declare dso_local i64 @zip_add(%struct.zip*, i64, %struct.zip_source*) #1

declare dso_local i32 @zip_name_locate(%struct.zip*, i64, i32) #1

declare dso_local i32 @zip_close(%struct.zip*) #1

declare dso_local i32 @zip_source_free(%struct.zip_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
