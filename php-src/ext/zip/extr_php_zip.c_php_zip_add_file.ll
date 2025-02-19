; ModuleID = '/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_add_file.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32 }
%struct.zip_source = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@FS_EXISTS = common dso_local global i32 0, align 4
@IS_FALSE = common dso_local global i64 0, align 8
@ZIP_FL_OVERWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip*, i8*, i64, i8*, i64, i64, i64)* @php_zip_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zip_add_file(%struct.zip* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.zip*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.zip_source*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.zip* %0, %struct.zip** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i64 @ZIP_OPENBASEDIR_CHECKPATH(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %64

29:                                               ; preds = %7
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @expand_filepath(i8* %30, i8* %24)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %64

34:                                               ; preds = %29
  %35 = call i32 @strlen(i8* %24)
  %36 = load i32, i32* @FS_EXISTS, align 4
  %37 = call i32 @php_stat(i8* %24, i32 %35, i32 %36, i32* %19)
  %38 = load i32, i32* %19, align 4
  %39 = call i64 @Z_TYPE(i32 %38)
  %40 = load i64, i64* @IS_FALSE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %64

43:                                               ; preds = %34
  %44 = load %struct.zip*, %struct.zip** %9, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %15, align 8
  %47 = call %struct.zip_source* @zip_source_file(%struct.zip* %44, i8* %24, i64 %45, i64 %46)
  store %struct.zip_source* %47, %struct.zip_source** %16, align 8
  %48 = load %struct.zip_source*, %struct.zip_source** %16, align 8
  %49 = icmp ne %struct.zip_source* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %64

51:                                               ; preds = %43
  %52 = load %struct.zip*, %struct.zip** %9, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.zip_source*, %struct.zip_source** %16, align 8
  %55 = load i32, i32* @ZIP_FL_OVERWRITE, align 4
  %56 = call i64 @zip_file_add(%struct.zip* %52, i8* %53, %struct.zip_source* %54, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.zip_source*, %struct.zip_source** %16, align 8
  %60 = call i32 @zip_source_free(%struct.zip_source* %59)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %64

61:                                               ; preds = %51
  %62 = load %struct.zip*, %struct.zip** %9, align 8
  %63 = call i32 @zip_error_clear(%struct.zip* %62)
  store i32 1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %64

64:                                               ; preds = %61, %58, %50, %42, %33, %28
  %65 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ZIP_OPENBASEDIR_CHECKPATH(i8*) #2

declare dso_local i32 @expand_filepath(i8*, i8*) #2

declare dso_local i32 @php_stat(i8*, i32, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @Z_TYPE(i32) #2

declare dso_local %struct.zip_source* @zip_source_file(%struct.zip*, i8*, i64, i64) #2

declare dso_local i64 @zip_file_add(%struct.zip*, i8*, %struct.zip_source*, i32) #2

declare dso_local i32 @zip_source_free(%struct.zip_source*) #2

declare dso_local i32 @zip_error_clear(%struct.zip*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
