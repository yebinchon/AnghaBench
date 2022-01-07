; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_compress.c__TIFFSetDefaultCompressionState.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_compress.c__TIFFSetDefaultCompressionState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i32 }

@_TIFFNoFixupTags = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@_TIFFtrue = common dso_local global i8* null, align 8
@_TIFFNoPreCode = common dso_local global i8* null, align 8
@_TIFFNoRowDecode = common dso_local global i32 0, align 4
@_TIFFNoStripDecode = common dso_local global i32 0, align 4
@_TIFFNoTileDecode = common dso_local global i32 0, align 4
@_TIFFNoRowEncode = common dso_local global i32 0, align 4
@_TIFFNoStripEncode = common dso_local global i32 0, align 4
@_TIFFNoTileEncode = common dso_local global i32 0, align 4
@_TIFFvoid = common dso_local global i8* null, align 8
@_TIFFNoSeek = common dso_local global i32 0, align 4
@_TIFFDefaultStripSize = common dso_local global i32 0, align 4
@_TIFFDefaultTileSize = common dso_local global i32 0, align 4
@TIFF_NOBITREV = common dso_local global i32 0, align 4
@TIFF_NOREADRAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_TIFFSetDefaultCompressionState(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @_TIFFNoFixupTags, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 19
  store i32 %3, i32* %5, align 8
  %6 = load i8*, i8** @TRUE, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 18
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @_TIFFtrue, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 17
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @_TIFFNoPreCode, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 16
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @_TIFFNoRowDecode, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 15
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @_TIFFNoStripDecode, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 14
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @_TIFFNoTileDecode, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 13
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** @TRUE, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 12
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @_TIFFtrue, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 11
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @_TIFFNoPreCode, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 10
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @_TIFFtrue, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @_TIFFNoRowEncode, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @_TIFFNoStripEncode, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @_TIFFNoTileEncode, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** @_TIFFvoid, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @_TIFFNoSeek, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @_TIFFvoid, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @_TIFFDefaultStripSize, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @_TIFFDefaultTileSize, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @TIFF_NOBITREV, align 4
  %61 = load i32, i32* @TIFF_NOREADRAW, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
