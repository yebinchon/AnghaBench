; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_write_zTXt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_write_zTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_18__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"in png_write_zTXt\00", align 1
@PNG_TEXT_COMPRESSION_NONE = common dso_local global i32 0, align 4
@PNG_TEXT_COMPRESSION_zTXt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"zTXt: invalid compression type\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"zTXt: invalid keyword\00", align 1
@PNG_COMPRESSION_TYPE_BASE = common dso_local global i32 0, align 4
@png_zTXt = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_zTXt(%struct.TYPE_17__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [81 x i32], align 16
  %11 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PNG_TEXT_COMPRESSION_NONE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @png_write_tEXt(%struct.TYPE_17__* %17, i32* %18, i32* %19, i32 0)
  br label %85

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PNG_TEXT_COMPRESSION_zTXt, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = call i32 @png_error(%struct.TYPE_17__* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds [81 x i32], [81 x i32]* %10, i64 0, i64 0
  %32 = call i64 @png_check_keyword(%struct.TYPE_17__* %29, i32* %30, i32* %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = call i32 @png_error(%struct.TYPE_17__* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32, i32* @PNG_COMPRESSION_TYPE_BASE, align 4
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  %42 = getelementptr inbounds [81 x i32], [81 x i32]* %10, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = ptrtoint i32* %45 to i32
  %47 = load i32*, i32** %7, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %53

50:                                               ; preds = %38
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @strlen(i32* %51)
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi i32 [ 0, %49 ], [ %52, %50 ]
  %55 = call i32 @png_text_compress_init(%struct.TYPE_18__* %11, i32 %46, i32 %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = load i32, i32* @png_zTXt, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @png_text_compress(%struct.TYPE_17__* %56, i32 %57, %struct.TYPE_18__* %11, i64 %58)
  %60 = load i64, i64* @Z_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @png_error(%struct.TYPE_17__* %63, i8* %67)
  br label %69

69:                                               ; preds = %62, %53
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = load i32, i32* @png_zTXt, align 4
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %72, %74
  %76 = call i32 @png_write_chunk_header(%struct.TYPE_17__* %70, i32 %71, i64 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds [81 x i32], [81 x i32]* %10, i64 0, i64 0
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @png_write_chunk_data(%struct.TYPE_17__* %77, i32* %78, i64 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = call i32 @png_write_compressed_data_out(%struct.TYPE_17__* %81, %struct.TYPE_18__* %11)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = call i32 @png_write_chunk_end(%struct.TYPE_17__* %83)
  br label %85

85:                                               ; preds = %69, %16
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_write_tEXt(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32 @png_error(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @png_check_keyword(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @png_text_compress_init(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @png_text_compress(%struct.TYPE_17__*, i32, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @png_write_chunk_header(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i32 @png_write_chunk_data(%struct.TYPE_17__*, i32*, i64) #1

declare dso_local i32 @png_write_compressed_data_out(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @png_write_chunk_end(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
