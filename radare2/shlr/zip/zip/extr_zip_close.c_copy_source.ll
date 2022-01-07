; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_close.c_copy_source.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_close.c_copy_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32 }
%struct.zip_source = type { i32 }

@BUFSIZE = common dso_local global i32 0, align 4
@ZIP_ER_WRITE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip*, %struct.zip_source*, i32*)* @copy_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_source(%struct.zip* %0, %struct.zip_source* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zip*, align 8
  %6 = alloca %struct.zip_source*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.zip* %0, %struct.zip** %5, align 8
  store %struct.zip_source* %1, %struct.zip_source** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.zip_source*, %struct.zip_source** %6, align 8
  %18 = call i64 @zip_source_open(%struct.zip_source* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.zip*, %struct.zip** %5, align 8
  %22 = getelementptr inbounds %struct.zip, %struct.zip* %21, i32 0, i32 0
  %23 = load %struct.zip_source*, %struct.zip_source** %6, align 8
  %24 = call i32 @_zip_error_set_from_source(i32* %22, %struct.zip_source* %23)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %60

25:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load %struct.zip_source*, %struct.zip_source** %6, align 8
  %28 = trunc i64 %14 to i32
  %29 = call i64 @zip_source_read(%struct.zip_source* %27, i8* %16, i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i64, i64* %10, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @fwrite(i8* %16, i32 1, i64 %32, i32* %33)
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.zip*, %struct.zip** %5, align 8
  %39 = getelementptr inbounds %struct.zip, %struct.zip* %38, i32 0, i32 0
  %40 = load i32, i32* @ZIP_ER_WRITE, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @_zip_error_set(i32* %39, i32 %40, i32 %41)
  store i32 -1, i32* %11, align 4
  br label %44

43:                                               ; preds = %31
  br label %26

44:                                               ; preds = %37, %26
  %45 = load i64, i64* %10, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.zip*, %struct.zip** %5, align 8
  %52 = getelementptr inbounds %struct.zip, %struct.zip* %51, i32 0, i32 0
  %53 = load %struct.zip_source*, %struct.zip_source** %6, align 8
  %54 = call i32 @_zip_error_set_from_source(i32* %52, %struct.zip_source* %53)
  br label %55

55:                                               ; preds = %50, %47
  store i32 -1, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %44
  %57 = load %struct.zip_source*, %struct.zip_source** %6, align 8
  %58 = call i32 @zip_source_close(%struct.zip_source* %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %20
  %61 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @zip_source_open(%struct.zip_source*) #2

declare dso_local i32 @_zip_error_set_from_source(i32*, %struct.zip_source*) #2

declare dso_local i64 @zip_source_read(%struct.zip_source*, i8*, i32) #2

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #2

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #2

declare dso_local i32 @zip_source_close(%struct.zip_source*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
