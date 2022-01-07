; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_flush.c_TIFFFlush.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_flush.c_TIFFFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@O_RDONLY = common dso_local global i64 0, align 8
@TIFF_DIRTYSTRIP = common dso_local global i32 0, align 4
@TIFF_DIRTYDIRECT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i64 0, align 8
@TIFFTAG_TILEOFFSETS = common dso_local global i32 0, align 4
@TIFFTAG_TILEBYTECOUNTS = common dso_local global i32 0, align 4
@TIFF_LONG8 = common dso_local global i32 0, align 4
@TIFF_BEENWRITING = common dso_local global i32 0, align 4
@TIFFTAG_STRIPOFFSETS = common dso_local global i32 0, align 4
@TIFFTAG_STRIPBYTECOUNTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFFlush(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @O_RDONLY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %149

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = call i32 @TIFFFlushData(%struct.TYPE_10__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %149

17:                                               ; preds = %12
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TIFF_DIRTYSTRIP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %134

24:                                               ; preds = %17
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TIFF_DIRTYDIRECT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %134, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @O_RDWR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %134

37:                                               ; preds = %31
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = call i64 @TIFFIsTiled(%struct.TYPE_10__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = load i32, i32* @TIFFTAG_TILEOFFSETS, align 4
  %44 = call i64 @TIFFGetField(%struct.TYPE_10__* %42, i32 %43, i32** %4)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %41
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = load i32, i32* @TIFFTAG_TILEBYTECOUNTS, align 4
  %49 = call i64 @TIFFGetField(%struct.TYPE_10__* %47, i32 %48, i32** %5)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = load i32, i32* @TIFFTAG_TILEOFFSETS, align 4
  %54 = load i32, i32* @TIFF_LONG8, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @_TIFFRewriteField(%struct.TYPE_10__* %52, i32 %53, i32 %54, i32 %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %51
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = load i32, i32* @TIFFTAG_TILEBYTECOUNTS, align 4
  %65 = load i32, i32* @TIFF_LONG8, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @_TIFFRewriteField(%struct.TYPE_10__* %63, i32 %64, i32 %65, i32 %69, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %62
  %74 = load i32, i32* @TIFF_DIRTYSTRIP, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @TIFF_BEENWRITING, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  store i32 1, i32* %2, align 4
  br label %149

86:                                               ; preds = %62, %51, %46, %41
  br label %133

87:                                               ; preds = %37
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = load i32, i32* @TIFFTAG_STRIPOFFSETS, align 4
  %90 = call i64 @TIFFGetField(%struct.TYPE_10__* %88, i32 %89, i32** %4)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %132

92:                                               ; preds = %87
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = load i32, i32* @TIFFTAG_STRIPBYTECOUNTS, align 4
  %95 = call i64 @TIFFGetField(%struct.TYPE_10__* %93, i32 %94, i32** %5)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %132

97:                                               ; preds = %92
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = load i32, i32* @TIFFTAG_STRIPOFFSETS, align 4
  %100 = load i32, i32* @TIFF_LONG8, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = call i64 @_TIFFRewriteField(%struct.TYPE_10__* %98, i32 %99, i32 %100, i32 %104, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %97
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = load i32, i32* @TIFFTAG_STRIPBYTECOUNTS, align 4
  %111 = load i32, i32* @TIFF_LONG8, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = call i64 @_TIFFRewriteField(%struct.TYPE_10__* %109, i32 %110, i32 %111, i32 %115, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %108
  %120 = load i32, i32* @TIFF_DIRTYSTRIP, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* @TIFF_BEENWRITING, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  store i32 1, i32* %2, align 4
  br label %149

132:                                              ; preds = %108, %97, %92, %87
  br label %133

133:                                              ; preds = %132, %86
  br label %134

134:                                              ; preds = %133, %31, %24, %17
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @TIFF_DIRTYDIRECT, align 4
  %139 = load i32, i32* @TIFF_DIRTYSTRIP, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %137, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %134
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = call i32 @TIFFRewriteDirectory(%struct.TYPE_10__* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %149

148:                                              ; preds = %143, %134
  store i32 1, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %147, %119, %73, %16, %11
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @TIFFFlushData(%struct.TYPE_10__*) #1

declare dso_local i64 @TIFFIsTiled(%struct.TYPE_10__*) #1

declare dso_local i64 @TIFFGetField(%struct.TYPE_10__*, i32, i32**) #1

declare dso_local i64 @_TIFFRewriteField(%struct.TYPE_10__*, i32, i32, i32, i32*) #1

declare dso_local i32 @TIFFRewriteDirectory(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
