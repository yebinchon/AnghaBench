; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_close.c_write_cdir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_close.c_write_cdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32 }
%struct.zip_filelist = type { i32 }

@TORRENT_CRC_LEN = common dso_local global i32 0, align 4
@ZIP_AFL_TORRENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08lX\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@ZIP_ER_SEEK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZIP_ER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip*, %struct.zip_filelist*, i32, i32*)* @write_cdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_cdir(%struct.zip* %0, %struct.zip_filelist* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zip*, align 8
  %7 = alloca %struct.zip_filelist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.zip* %0, %struct.zip** %6, align 8
  store %struct.zip_filelist* %1, %struct.zip_filelist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @TORRENT_CRC_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @ftello(i32* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

27:                                               ; preds = %4
  %28 = load %struct.zip*, %struct.zip** %6, align 8
  %29 = load %struct.zip_filelist*, %struct.zip_filelist** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @_zip_cdir_write(%struct.zip* %28, %struct.zip_filelist* %29, i32 %30, i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

35:                                               ; preds = %27
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @ftello(i32* %36)
  store i64 %37, i64* %11, align 8
  %38 = load %struct.zip*, %struct.zip** %6, align 8
  %39 = load i32, i32* @ZIP_AFL_TORRENT, align 4
  %40 = call i64 @zip_get_archive_flag(%struct.zip* %38, i32 %39, i32 0)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

43:                                               ; preds = %35
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.zip*, %struct.zip** %6, align 8
  %48 = getelementptr inbounds %struct.zip, %struct.zip* %47, i32 0, i32 0
  %49 = call i64 @_zip_filerange_crc(i32* %44, i64 %45, i32 %46, i64* %13, i32* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

52:                                               ; preds = %43
  %53 = trunc i64 %19 to i32
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @snprintf(i8* %21, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i32, i32* @TORRENT_CRC_LEN, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = load i32, i32* @SEEK_SET, align 4
  %62 = call i64 @fseeko(i32* %56, i64 %60, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load %struct.zip*, %struct.zip** %6, align 8
  %66 = getelementptr inbounds %struct.zip, %struct.zip* %65, i32 0, i32 0
  %67 = load i32, i32* @ZIP_ER_SEEK, align 4
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 @_zip_error_set(i32* %66, i32 %67, i32 %68)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

70:                                               ; preds = %52
  %71 = load i32, i32* @TORRENT_CRC_LEN, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @fwrite(i8* %21, i32 %71, i32 1, i32* %72)
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.zip*, %struct.zip** %6, align 8
  %77 = getelementptr inbounds %struct.zip, %struct.zip* %76, i32 0, i32 0
  %78 = load i32, i32* @ZIP_ER_WRITE, align 4
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @_zip_error_set(i32* %77, i32 %78, i32 %79)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

81:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %82

82:                                               ; preds = %81, %75, %64, %51, %42, %34, %26
  %83 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ftello(i32*) #2

declare dso_local i32 @_zip_cdir_write(%struct.zip*, %struct.zip_filelist*, i32, i32*) #2

declare dso_local i64 @zip_get_archive_flag(%struct.zip*, i32, i32) #2

declare dso_local i64 @_zip_filerange_crc(i32*, i64, i32, i64*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i64 @fseeko(i32*, i64, i32) #2

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
