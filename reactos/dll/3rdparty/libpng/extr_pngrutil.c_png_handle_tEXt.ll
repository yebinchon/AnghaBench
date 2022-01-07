; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_tEXt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_tEXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64*, i64, i32*, i32*, i64*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"in png_handle_tEXt\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@PNG_AFTER_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@PNG_TEXT_COMPRESSION_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Insufficient memory to process text chunk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_tEXt(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %12 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = call i32 @png_chunk_error(%struct.TYPE_13__* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  %39 = call i32* @png_read_buffer(%struct.TYPE_13__* %36, i32 %38, i32 1)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = call i32 @png_chunk_benign_error(%struct.TYPE_13__* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %101

45:                                               ; preds = %35
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @png_crc_read(%struct.TYPE_13__* %46, i32* %47, i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @png_crc_finish(%struct.TYPE_13__* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %101

55:                                               ; preds = %45
  %56 = load i32*, i32** %8, align 8
  %57 = bitcast i32* %56 to i64*
  store i64* %57, i64** %9, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load i64*, i64** %9, align 8
  store i64* %62, i64** %10, align 8
  br label %63

63:                                               ; preds = %68, %55
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67
  %69 = load i64*, i64** %10, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %10, align 8
  br label %63

71:                                               ; preds = %63
  %72 = load i64*, i64** %10, align 8
  %73 = load i64*, i64** %9, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = icmp ne i64* %72, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i64*, i64** %10, align 8
  %80 = getelementptr inbounds i64, i64* %79, i32 1
  store i64* %80, i64** %10, align 8
  br label %81

81:                                               ; preds = %78, %71
  %82 = load i32, i32* @PNG_TEXT_COMPRESSION_NONE, align 4
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 6
  store i32 %82, i32* %83, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 5
  store i64* %84, i64** %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  store i32* null, i32** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  store i32* null, i32** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i64* %89, i64** %90, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = call i32 @strlen(i64* %91)
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @png_set_text_2(%struct.TYPE_13__* %94, i32 %95, %struct.TYPE_12__* %7, i32 1)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %81
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = call i32 @png_warning(%struct.TYPE_13__* %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %42, %54, %98, %81
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_13__*, i8*) #1

declare dso_local i32* @png_read_buffer(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i64 @png_set_text_2(%struct.TYPE_13__*, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @png_warning(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
