; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dir.c_TIFFFreeDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dir.c_TIFFFreeDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i64 }

@FIELD_SETLONGS = common dso_local global i32 0, align 4
@td_sminsamplevalue = common dso_local global i32 0, align 4
@td_smaxsamplevalue = common dso_local global i32 0, align 4
@td_colormap = common dso_local global i32* null, align 8
@td_sampleinfo = common dso_local global i32 0, align 4
@td_subifd = common dso_local global i32 0, align 4
@td_inknames = common dso_local global i32 0, align 4
@td_refblackwhite = common dso_local global i32 0, align 4
@td_transferfunction = common dso_local global i32* null, align 8
@td_stripoffset = common dso_local global i32 0, align 4
@td_stripbytecount = common dso_local global i32 0, align 4
@FIELD_YCBCRSUBSAMPLING = common dso_local global i32 0, align 4
@FIELD_YCBCRPOSITIONING = common dso_local global i32 0, align 4
@td_customValues = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIFFFreeDirectory(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* @FIELD_SETLONGS, align 4
  %11 = call i32 @_TIFFmemset(i32* %9, i32 0, i32 %10)
  %12 = load i32, i32* @td_sminsamplevalue, align 4
  %13 = call i32 @CleanupField(i32 %12)
  %14 = load i32, i32* @td_smaxsamplevalue, align 4
  %15 = call i32 @CleanupField(i32 %14)
  %16 = load i32*, i32** @td_colormap, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CleanupField(i32 %18)
  %20 = load i32*, i32** @td_colormap, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CleanupField(i32 %22)
  %24 = load i32*, i32** @td_colormap, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CleanupField(i32 %26)
  %28 = load i32, i32* @td_sampleinfo, align 4
  %29 = call i32 @CleanupField(i32 %28)
  %30 = load i32, i32* @td_subifd, align 4
  %31 = call i32 @CleanupField(i32 %30)
  %32 = load i32, i32* @td_inknames, align 4
  %33 = call i32 @CleanupField(i32 %32)
  %34 = load i32, i32* @td_refblackwhite, align 4
  %35 = call i32 @CleanupField(i32 %34)
  %36 = load i32*, i32** @td_transferfunction, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CleanupField(i32 %38)
  %40 = load i32*, i32** @td_transferfunction, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @CleanupField(i32 %42)
  %44 = load i32*, i32** @td_transferfunction, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CleanupField(i32 %46)
  %48 = load i32, i32* @td_stripoffset, align 4
  %49 = call i32 @CleanupField(i32 %48)
  %50 = load i32, i32* @td_stripbytecount, align 4
  %51 = call i32 @CleanupField(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = load i32, i32* @FIELD_YCBCRSUBSAMPLING, align 4
  %54 = call i32 @TIFFClrFieldBit(%struct.TYPE_8__* %52, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = load i32, i32* @FIELD_YCBCRPOSITIONING, align 4
  %57 = call i32 @TIFFClrFieldBit(%struct.TYPE_8__* %55, i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %85, %1
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %58
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %64
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @_TIFFfree(i64 %82)
  br label %84

84:                                               ; preds = %74, %64
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %58

88:                                               ; preds = %58
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load i32, i32* @td_customValues, align 4
  %92 = call i32 @CleanupField(i32 %91)
  ret void
}

declare dso_local i32 @_TIFFmemset(i32*, i32, i32) #1

declare dso_local i32 @CleanupField(i32) #1

declare dso_local i32 @TIFFClrFieldBit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_TIFFfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
