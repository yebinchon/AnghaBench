; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_deflate.c_zip_source_deflate.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_deflate.c_zip_source_deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32 }
%struct.zip_source = type { i32 }
%struct.deflate = type { i32, i64, i64* }

@ZIP_CM_DEFLATE = common dso_local global i64 0, align 8
@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@ZIP_CODEC_ENCODE = common dso_local global i32 0, align 4
@ZIP_AFL_TORRENT = common dso_local global i32 0, align 4
@TORRENT_MEM_LEVEL = common dso_local global i32 0, align 4
@MAX_MEM_LEVEL = common dso_local global i32 0, align 4
@deflate_compress = common dso_local global i32 0, align 4
@deflate_decompress = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_source* @zip_source_deflate(%struct.zip* %0, %struct.zip_source* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.zip_source*, align 8
  %6 = alloca %struct.zip*, align 8
  %7 = alloca %struct.zip_source*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.deflate*, align 8
  %11 = alloca %struct.zip_source*, align 8
  store %struct.zip* %0, %struct.zip** %6, align 8
  store %struct.zip_source* %1, %struct.zip_source** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %13 = icmp eq %struct.zip_source* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @ZIP_CM_DEFLATE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @ZIP_CM_IS_DEFAULT(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.zip*, %struct.zip** %6, align 8
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %23, i32 0, i32 0
  %25 = load i32, i32* @ZIP_ER_INVAL, align 4
  %26 = call i32 @_zip_error_set(i32* %24, i32 %25, i32 0)
  store %struct.zip_source* null, %struct.zip_source** %5, align 8
  br label %86

27:                                               ; preds = %18, %14
  %28 = call i64 @malloc(i32 24)
  %29 = inttoptr i64 %28 to %struct.deflate*
  store %struct.deflate* %29, %struct.deflate** %10, align 8
  %30 = icmp eq %struct.deflate* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.zip*, %struct.zip** %6, align 8
  %33 = getelementptr inbounds %struct.zip, %struct.zip* %32, i32 0, i32 0
  %34 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %35 = call i32 @_zip_error_set(i32* %33, i32 %34, i32 0)
  store %struct.zip_source* null, %struct.zip_source** %5, align 8
  br label %86

36:                                               ; preds = %27
  %37 = load %struct.deflate*, %struct.deflate** %10, align 8
  %38 = getelementptr inbounds %struct.deflate, %struct.deflate* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.deflate*, %struct.deflate** %10, align 8
  %42 = getelementptr inbounds %struct.deflate, %struct.deflate* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.deflate*, %struct.deflate** %10, align 8
  %46 = getelementptr inbounds %struct.deflate, %struct.deflate* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ZIP_CODEC_ENCODE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %36
  %52 = load %struct.zip*, %struct.zip** %6, align 8
  %53 = load i32, i32* @ZIP_AFL_TORRENT, align 4
  %54 = call i64 @zip_get_archive_flag(%struct.zip* %52, i32 %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @TORRENT_MEM_LEVEL, align 4
  %58 = load %struct.deflate*, %struct.deflate** %10, align 8
  %59 = getelementptr inbounds %struct.deflate, %struct.deflate* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @MAX_MEM_LEVEL, align 4
  %62 = load %struct.deflate*, %struct.deflate** %10, align 8
  %63 = getelementptr inbounds %struct.deflate, %struct.deflate* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.zip*, %struct.zip** %6, align 8
  %67 = load %struct.zip_source*, %struct.zip_source** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @ZIP_CODEC_ENCODE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @deflate_compress, align 4
  br label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @deflate_decompress, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.deflate*, %struct.deflate** %10, align 8
  %79 = call %struct.zip_source* @zip_source_layered(%struct.zip* %66, %struct.zip_source* %67, i32 %77, %struct.deflate* %78)
  store %struct.zip_source* %79, %struct.zip_source** %11, align 8
  %80 = icmp eq %struct.zip_source* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.deflate*, %struct.deflate** %10, align 8
  %83 = call i32 @deflate_free(%struct.deflate* %82)
  store %struct.zip_source* null, %struct.zip_source** %5, align 8
  br label %86

84:                                               ; preds = %76
  %85 = load %struct.zip_source*, %struct.zip_source** %11, align 8
  store %struct.zip_source* %85, %struct.zip_source** %5, align 8
  br label %86

86:                                               ; preds = %84, %81, %31, %22
  %87 = load %struct.zip_source*, %struct.zip_source** %5, align 8
  ret %struct.zip_source* %87
}

declare dso_local i32 @ZIP_CM_IS_DEFAULT(i64) #1

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @zip_get_archive_flag(%struct.zip*, i32, i32) #1

declare dso_local %struct.zip_source* @zip_source_layered(%struct.zip*, %struct.zip_source*, i32, %struct.deflate*) #1

declare dso_local i32 @deflate_free(%struct.deflate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
