; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dir.c_TIFFUnlinkDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dir.c_TIFFUnlinkDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32 (%struct.TYPE_15__*)*, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@TIFFUnlinkDirectory.module = internal constant [20 x i8] c"TIFFUnlinkDirectory\00", align 16
@O_RDONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Can not unlink directory in read-only file\00", align 1
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Directory %d does not exist\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@TIFF_SWAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Error writing directory link\00", align 1
@TIFF_MYBUFFER = common dso_local global i32 0, align 4
@TIFF_BEENWRITING = common dso_local global i32 0, align 4
@TIFF_BUFFERSETUP = common dso_local global i32 0, align 4
@TIFF_POSTENCODE = common dso_local global i32 0, align 4
@TIFF_BUF4WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFUnlinkDirectory(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @O_RDONLY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @TIFFUnlinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %180

20:                                               ; preds = %2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TIFF_BIGTIFF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 13
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  store i64 4, i64* %7, align 8
  br label %39

33:                                               ; preds = %20
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 13
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  store i64 8, i64* %7, align 8
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i64, i64* %5, align 8
  %41 = sub nsw i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %60, %39
  %43 = load i64, i64* %8, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @TIFFUnlinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  store i32 0, i32* %3, align 4
  br label %180

54:                                               ; preds = %45
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = call i32 @TIFFAdvanceDirectory(%struct.TYPE_15__* %55, i64* %6, i64* %7)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %180

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %8, align 8
  br label %42

63:                                               ; preds = %42
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = call i32 @TIFFAdvanceDirectory(%struct.TYPE_15__* %64, i64* %6, i64* null)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %180

68:                                               ; preds = %63
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i32, i32* @SEEK_SET, align 4
  %72 = call i32 @TIFFSeekFile(%struct.TYPE_15__* %69, i64 %70, i32 %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TIFF_BIGTIFF, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %68
  %80 = load i64, i64* %6, align 8
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TIFF_SWAB, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = call i32 @TIFFSwabLong(i64* %9)
  br label %94

94:                                               ; preds = %92, %79
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = call i32 @WriteOK(%struct.TYPE_15__* %95, i64* %9, i32 8)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 12
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @TIFFUnlinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %180

103:                                              ; preds = %94
  br label %123

104:                                              ; preds = %68
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @TIFF_SWAB, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 @TIFFSwabLong8(i64* %6)
  br label %113

113:                                              ; preds = %111, %104
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %115 = call i32 @WriteOK(%struct.TYPE_15__* %114, i64* %6, i32 8)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 12
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @TIFFUnlinkDirectory.module, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %180

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %103
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 11
  %126 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = call i32 %126(%struct.TYPE_15__* %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @TIFF_MYBUFFER, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %123
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 10
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 10
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @_TIFFfree(i32* %143)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 10
  store i32* null, i32** %146, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 9
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 8
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 7
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %140, %135, %123
  %154 = load i32, i32* @TIFF_BEENWRITING, align 4
  %155 = load i32, i32* @TIFF_BUFFERSETUP, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @TIFF_POSTENCODE, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @TIFF_BUF4WRITE, align 4
  %160 = or i32 %158, %159
  %161 = xor i32 %160, -1
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %167 = call i32 @TIFFFreeDirectory(%struct.TYPE_15__* %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = call i32 @TIFFDefaultDirectory(%struct.TYPE_15__* %168)
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 6
  store i64 0, i64* %171, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 5
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 4
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 3
  store i64 -1, i64* %177, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 2
  store i64 -1, i64* %179, align 8
  store i32 1, i32* %3, align 4
  br label %180

180:                                              ; preds = %153, %117, %98, %67, %58, %48, %15
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, ...) #1

declare dso_local i32 @TIFFAdvanceDirectory(%struct.TYPE_15__*, i64*, i64*) #1

declare dso_local i32 @TIFFSeekFile(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TIFFSwabLong(i64*) #1

declare dso_local i32 @WriteOK(%struct.TYPE_15__*, i64*, i32) #1

declare dso_local i32 @TIFFSwabLong8(i64*) #1

declare dso_local i32 @_TIFFfree(i32*) #1

declare dso_local i32 @TIFFFreeDirectory(%struct.TYPE_15__*) #1

declare dso_local i32 @TIFFDefaultDirectory(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
