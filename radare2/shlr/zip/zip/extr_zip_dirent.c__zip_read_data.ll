; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_read_data.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_error = type { i32 }

@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@ZIP_ER_READ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZIP_ER_INCONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_zip_read_data(i8** %0, i32* %1, i64 %2, i32 %3, %struct.zip_error* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zip_error*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.zip_error* %4, %struct.zip_error** %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8* null, i8** %6, align 8
  br label %103

20:                                               ; preds = %16, %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, 1
  br label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %9, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i64 [ %25, %23 ], [ %27, %26 ]
  %30 = call i64 @malloc(i64 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.zip_error*, %struct.zip_error** %11, align 8
  %36 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %37 = call i32 @_zip_error_set(%struct.zip_error* %35, i32 %36, i32 0)
  store i8* null, i8** %6, align 8
  br label %103

38:                                               ; preds = %28
  %39 = load i8**, i8*** %7, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i8*, i8** %12, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @memcpy(i8* %42, i8* %44, i64 %45)
  %47 = load i64, i64* %9, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %47
  store i8* %50, i8** %48, align 8
  br label %75

51:                                               ; preds = %38
  %52 = load i8*, i8** %12, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @fread(i8* %52, i32 1, i64 %53, i32* %54)
  %56 = load i64, i64* %9, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = call i64 @ferror(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.zip_error*, %struct.zip_error** %11, align 8
  %66 = load i32, i32* @ZIP_ER_READ, align 4
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @_zip_error_set(%struct.zip_error* %65, i32 %66, i32 %67)
  br label %73

69:                                               ; preds = %58
  %70 = load %struct.zip_error*, %struct.zip_error** %11, align 8
  %71 = load i32, i32* @ZIP_ER_INCONS, align 4
  %72 = call i32 @_zip_error_set(%struct.zip_error* %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %69, %64
  store i8* null, i8** %6, align 8
  br label %103

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74, %41
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load i8*, i8** %12, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %12, align 8
  store i8* %82, i8** %13, align 8
  br label %83

83:                                               ; preds = %97, %78
  %84 = load i8*, i8** %13, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = icmp ult i8* %84, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load i8*, i8** %13, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i8*, i8** %13, align 8
  store i8 32, i8* %95, align 1
  br label %96

96:                                               ; preds = %94, %89
  br label %97

97:                                               ; preds = %96
  %98 = load i8*, i8** %13, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %13, align 8
  br label %83

100:                                              ; preds = %83
  br label %101

101:                                              ; preds = %100, %75
  %102 = load i8*, i8** %12, align 8
  store i8* %102, i8** %6, align 8
  br label %103

103:                                              ; preds = %101, %73, %34, %19
  %104 = load i8*, i8** %6, align 8
  ret i8* %104
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
