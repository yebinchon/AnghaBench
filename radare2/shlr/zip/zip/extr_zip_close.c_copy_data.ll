; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_close.c_copy_data.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_close.c_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_error = type { i32 }

@BUFSIZE = common dso_local global i32 0, align 4
@ZIP_ER_READ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZIP_ER_EOF = common dso_local global i32 0, align 4
@ZIP_ER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, %struct.zip_error*)* @copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_data(i32* %0, i32 %1, i32* %2, %struct.zip_error* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.zip_error*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.zip_error* %3, %struct.zip_error** %9, align 8
  %15 = load i32, i32* @BUFSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %71

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %64, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %28, %16
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi i64 [ %16, %30 ], [ %33, %31 ]
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @fread(i8* %18, i32 1, i64 %36, i32* %37)
  store i64 %38, i64* %12, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @ferror(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %46 = load i32, i32* @ZIP_ER_READ, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @_zip_error_set(%struct.zip_error* %45, i32 %46, i32 %47)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %71

49:                                               ; preds = %40
  %50 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %51 = load i32, i32* @ZIP_ER_EOF, align 4
  %52 = call i32 @_zip_error_set(%struct.zip_error* %50, i32 %51, i32 0)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %71

53:                                               ; preds = %34
  %54 = load i64, i64* %12, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @fwrite(i8* %18, i32 1, i64 %54, i32* %55)
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.zip_error*, %struct.zip_error** %9, align 8
  %61 = load i32, i32* @ZIP_ER_WRITE, align 4
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @_zip_error_set(%struct.zip_error* %60, i32 %61, i32 %62)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %71

64:                                               ; preds = %53
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  br label %23

70:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %70, %59, %49, %44, %21
  %72 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @_zip_error_set(%struct.zip_error*, i32, i32) #2

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
