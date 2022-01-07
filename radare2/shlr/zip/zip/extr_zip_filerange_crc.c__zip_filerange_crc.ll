; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_filerange_crc.c__zip_filerange_crc.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_filerange_crc.c__zip_filerange_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_error = type { i32 }

@BUFSIZE = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@ZIP_ER_SEEK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZIP_ER_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_filerange_crc(i32* %0, i64 %1, i64 %2, i64* %3, %struct.zip_error* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.zip_error*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.zip_error* %4, %struct.zip_error** %11, align 8
  %16 = load i32, i32* @BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32*, i32** @Z_NULL, align 8
  %21 = call i64 @crc32(i64 0, i32* %20, i32 0)
  %22 = load i64*, i64** %10, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @SEEK_SET, align 4
  %26 = call i64 @fseeko(i32* %23, i64 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load %struct.zip_error*, %struct.zip_error** %11, align 8
  %30 = load i32, i32* @ZIP_ER_SEEK, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @_zip_error_set(%struct.zip_error* %29, i32 %30, i32 %31)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %69

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %58, %33
  %35 = load i64, i64* %9, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @BUFSIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp sgt i64 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @BUFSIZE, align 4
  %44 = sext i32 %43 to i64
  br label %47

45:                                               ; preds = %37
  %46 = load i64, i64* %9, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i64 [ %44, %42 ], [ %46, %45 ]
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @fread(i32* %19, i32 1, i64 %49, i32* %50)
  store i64 %51, i64* %14, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.zip_error*, %struct.zip_error** %11, align 8
  %55 = load i32, i32* @ZIP_ER_READ, align 4
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @_zip_error_set(%struct.zip_error* %54, i32 %55, i32 %56)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %69

58:                                               ; preds = %47
  %59 = load i64*, i64** %10, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @crc32(i64 %60, i32* %19, i32 %62)
  %64 = load i64*, i64** %10, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %9, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %9, align 8
  br label %34

68:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %69

69:                                               ; preds = %68, %53, %28
  %70 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @crc32(i64, i32*, i32) #2

declare dso_local i64 @fseeko(i32*, i64, i32) #2

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #2

declare dso_local i64 @fread(i32*, i32, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
