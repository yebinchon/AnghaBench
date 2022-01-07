; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_filep.c__zip_source_file_or_p.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_filep.c__zip_source_file_or_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32 }
%struct.zip = type { i32 }
%struct.zip_stat = type { i32 }
%struct.read_file = type { i32, i32, i32, i32*, i32, i32* }

@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@read_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_source* @_zip_source_file_or_p(%struct.zip* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.zip_stat* %6) #0 {
  %8 = alloca %struct.zip_source*, align 8
  %9 = alloca %struct.zip*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.zip_stat*, align 8
  %16 = alloca %struct.read_file*, align 8
  %17 = alloca %struct.zip_source*, align 8
  store %struct.zip* %0, %struct.zip** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.zip_stat* %6, %struct.zip_stat** %15, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %7
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.zip*, %struct.zip** %9, align 8
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 0
  %26 = load i32, i32* @ZIP_ER_INVAL, align 4
  %27 = call i32 @_zip_error_set(i32* %25, i32 %26, i32 0)
  store %struct.zip_source* null, %struct.zip_source** %8, align 8
  br label %105

28:                                               ; preds = %20, %7
  %29 = call i64 @malloc(i32 40)
  %30 = inttoptr i64 %29 to %struct.read_file*
  store %struct.read_file* %30, %struct.read_file** %16, align 8
  %31 = icmp eq %struct.read_file* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.zip*, %struct.zip** %9, align 8
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 0
  %35 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %36 = call i32 @_zip_error_set(i32* %34, i32 %35, i32 0)
  store %struct.zip_source* null, %struct.zip_source** %8, align 8
  br label %105

37:                                               ; preds = %28
  %38 = load %struct.read_file*, %struct.read_file** %16, align 8
  %39 = getelementptr inbounds %struct.read_file, %struct.read_file* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = call i32* @strdup(i8* %43)
  %45 = load %struct.read_file*, %struct.read_file** %16, align 8
  %46 = getelementptr inbounds %struct.read_file, %struct.read_file* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = icmp eq i32* %44, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.zip*, %struct.zip** %9, align 8
  %50 = getelementptr inbounds %struct.zip, %struct.zip* %49, i32 0, i32 0
  %51 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %52 = call i32 @_zip_error_set(i32* %50, i32 %51, i32 0)
  %53 = load %struct.read_file*, %struct.read_file** %16, align 8
  %54 = call i32 @free(%struct.read_file* %53)
  store %struct.zip_source* null, %struct.zip_source** %8, align 8
  br label %105

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32*, i32** %11, align 8
  %58 = load %struct.read_file*, %struct.read_file** %16, align 8
  %59 = getelementptr inbounds %struct.read_file, %struct.read_file* %58, i32 0, i32 5
  store i32* %57, i32** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.read_file*, %struct.read_file** %16, align 8
  %62 = getelementptr inbounds %struct.read_file, %struct.read_file* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %13, align 4
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ -1, %67 ]
  %70 = load %struct.read_file*, %struct.read_file** %16, align 8
  %71 = getelementptr inbounds %struct.read_file, %struct.read_file* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.read_file*, %struct.read_file** %16, align 8
  %73 = getelementptr inbounds %struct.read_file, %struct.read_file* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %14, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ 1, %76 ], [ %78, %77 ]
  %81 = load %struct.read_file*, %struct.read_file** %16, align 8
  %82 = getelementptr inbounds %struct.read_file, %struct.read_file* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %84 = icmp ne %struct.zip_stat* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.read_file*, %struct.read_file** %16, align 8
  %87 = getelementptr inbounds %struct.read_file, %struct.read_file* %86, i32 0, i32 2
  %88 = load %struct.zip_stat*, %struct.zip_stat** %15, align 8
  %89 = call i32 @memcpy(i32* %87, %struct.zip_stat* %88, i32 4)
  br label %94

90:                                               ; preds = %79
  %91 = load %struct.read_file*, %struct.read_file** %16, align 8
  %92 = getelementptr inbounds %struct.read_file, %struct.read_file* %91, i32 0, i32 2
  %93 = call i32 @zip_stat_init(i32* %92)
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.zip*, %struct.zip** %9, align 8
  %96 = load i32, i32* @read_file, align 4
  %97 = load %struct.read_file*, %struct.read_file** %16, align 8
  %98 = call %struct.zip_source* @zip_source_function(%struct.zip* %95, i32 %96, %struct.read_file* %97)
  store %struct.zip_source* %98, %struct.zip_source** %17, align 8
  %99 = icmp eq %struct.zip_source* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.read_file*, %struct.read_file** %16, align 8
  %102 = call i32 @free(%struct.read_file* %101)
  store %struct.zip_source* null, %struct.zip_source** %8, align 8
  br label %105

103:                                              ; preds = %94
  %104 = load %struct.zip_source*, %struct.zip_source** %17, align 8
  store %struct.zip_source* %104, %struct.zip_source** %8, align 8
  br label %105

105:                                              ; preds = %103, %100, %48, %32, %23
  %106 = load %struct.zip_source*, %struct.zip_source** %8, align 8
  ret %struct.zip_source* %106
}

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.read_file*) #1

declare dso_local i32 @memcpy(i32*, %struct.zip_stat*, i32) #1

declare dso_local i32 @zip_stat_init(i32*) #1

declare dso_local %struct.zip_source* @zip_source_function(%struct.zip*, i32, %struct.read_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
