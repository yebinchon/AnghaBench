; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFAppendToStrip.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFAppendToStrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i64, i64* }

@TIFFAppendToStrip.module = internal constant [18 x i8] c"TIFFAppendToStrip\00", align 16
@.str = private unnamed_addr constant [27 x i8] c"Seek error at scanline %lu\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@TIFF_DIRTYSTRIP = common dso_local global i32 0, align 4
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Maximum TIFF file size exceeded\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Write error at scanline %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i32*, i64)* @TIFFAppendToStrip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFAppendToStrip(%struct.TYPE_8__* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  store i64 -1, i64* %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %111

27:                                               ; preds = %22, %4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %27
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %41
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %49
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @SeekOK(%struct.TYPE_8__* %59, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %58
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFAppendToStrip.module, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %74)
  store i32 0, i32* %5, align 4
  br label %181

76:                                               ; preds = %58
  br label %91

77:                                               ; preds = %49, %41, %27
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = load i32, i32* @SEEK_END, align 4
  %80 = call i64 @TIFFSeekFile(%struct.TYPE_8__* %78, i32 0, i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 %80, i64* %85, align 8
  %86 = load i32, i32* @TIFF_DIRTYSTRIP, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %77, %76
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %12, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %91, %22
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = add nsw i64 %114, %115
  store i64 %116, i64* %11, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TIFF_BIGTIFF, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %111
  %124 = load i64, i64* %11, align 8
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %123, %111
  %126 = load i64, i64* %11, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %125
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %9, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131, %125
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFAppendToStrip.module, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %181

140:                                              ; preds = %131
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = load i64, i64* %9, align 8
  %144 = call i32 @WriteOK(%struct.TYPE_8__* %141, i32* %142, i64 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFAppendToStrip.module, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %152)
  store i32 0, i32* %5, align 4
  br label %181

154:                                              ; preds = %140
  %155 = load i64, i64* %11, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %158
  store i64 %165, i64* %163, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* %7, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %12, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %154
  %175 = load i32, i32* @TIFF_DIRTYSTRIP, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %174, %154
  store i32 1, i32* %5, align 4
  br label %181

181:                                              ; preds = %180, %146, %135, %68
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SeekOK(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, ...) #1

declare dso_local i64 @TIFFSeekFile(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @WriteOK(%struct.TYPE_8__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
