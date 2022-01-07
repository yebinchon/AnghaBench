; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFReadRGBATileExt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFReadRGBATileExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"Can't use TIFFReadRGBATile() with stripped file.\00", align 1
@TIFFTAG_TILEWIDTH = common dso_local global i32 0, align 4
@TIFFTAG_TILELENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"Row/col passed to TIFFReadRGBATile() must be topleft corner of a tile.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFReadRGBATileExt(%struct.TYPE_13__* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [1024 x i8], align 16
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = bitcast [1024 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 1024, i1 false)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = call i32 @TIFFIsTiled(%struct.TYPE_13__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %5
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = call i32 @TIFFFileName(%struct.TYPE_13__* %28)
  %30 = call i32 (i32, i32, i8*, ...) @TIFFErrorExt(i32 %27, i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %188

31:                                               ; preds = %5
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = load i32, i32* @TIFFTAG_TILEWIDTH, align 4
  %34 = call i32 @TIFFGetFieldDefaulted(%struct.TYPE_13__* %32, i32 %33, i64* %15)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = load i32, i32* @TIFFTAG_TILELENGTH, align 4
  %37 = call i32 @TIFFGetFieldDefaulted(%struct.TYPE_13__* %35, i32 %36, i64* %16)
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %15, align 8
  %40 = srem i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %31
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %16, align 8
  %45 = srem i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42, %31
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = call i32 @TIFFFileName(%struct.TYPE_13__* %51)
  %53 = call i32 (i32, i32, i8*, ...) @TIFFErrorExt(i32 %50, i32 %52, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %188

54:                                               ; preds = %42
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %57 = call i32 @TIFFRGBAImageOK(%struct.TYPE_13__* %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %63 = call i32 @TIFFRGBAImageBegin(%struct.TYPE_12__* %13, %struct.TYPE_13__* %60, i32 %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = call i32 @TIFFFileName(%struct.TYPE_13__* %69)
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %72 = call i32 (i32, i32, i8*, ...) @TIFFErrorExt(i32 %68, i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  store i32 0, i32* %6, align 4
  br label %188

73:                                               ; preds = %59
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %16, align 8
  %76 = add nsw i64 %74, %75
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %76, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %18, align 8
  br label %87

85:                                               ; preds = %73
  %86 = load i64, i64* %16, align 8
  store i64 %86, i64* %18, align 8
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %15, align 8
  %90 = add nsw i64 %88, %89
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %90, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = sub nsw i64 %96, %97
  store i64 %98, i64* %17, align 8
  br label %101

99:                                               ; preds = %87
  %100 = load i64, i64* %15, align 8
  store i64 %100, i64* %17, align 8
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  store i64 %102, i64* %103, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i64 %104, i64* %105, align 8
  %106 = load i64*, i64** %10, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %18, align 8
  %109 = call i32 @TIFFRGBAImageGet(%struct.TYPE_12__* %13, i64* %106, i64 %107, i64 %108)
  store i32 %109, i32* %14, align 4
  %110 = call i32 @TIFFRGBAImageEnd(%struct.TYPE_12__* %13)
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* %15, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %101
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %16, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %6, align 4
  br label %188

120:                                              ; preds = %114, %101
  store i64 0, i64* %19, align 8
  br label %121

121:                                              ; preds = %161, %120
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* %18, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %164

125:                                              ; preds = %121
  %126 = load i64*, i64** %10, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %19, align 8
  %129 = sub nsw i64 %127, %128
  %130 = sub nsw i64 %129, 1
  %131 = load i64, i64* %15, align 8
  %132 = mul nsw i64 %130, %131
  %133 = getelementptr inbounds i64, i64* %126, i64 %132
  %134 = load i64*, i64** %10, align 8
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %19, align 8
  %137 = sub nsw i64 %135, %136
  %138 = sub nsw i64 %137, 1
  %139 = load i64, i64* %17, align 8
  %140 = mul nsw i64 %138, %139
  %141 = getelementptr inbounds i64, i64* %134, i64 %140
  %142 = load i64, i64* %17, align 8
  %143 = mul i64 %142, 8
  %144 = call i32 @memmove(i64* %133, i64* %141, i64 %143)
  %145 = load i64*, i64** %10, align 8
  %146 = load i64, i64* %16, align 8
  %147 = load i64, i64* %19, align 8
  %148 = sub nsw i64 %146, %147
  %149 = sub nsw i64 %148, 1
  %150 = load i64, i64* %15, align 8
  %151 = mul nsw i64 %149, %150
  %152 = getelementptr inbounds i64, i64* %145, i64 %151
  %153 = load i64, i64* %17, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %15, align 8
  %156 = load i64, i64* %17, align 8
  %157 = sub nsw i64 %155, %156
  %158 = mul i64 8, %157
  %159 = trunc i64 %158 to i32
  %160 = call i32 @_TIFFmemset(i64* %154, i32 0, i32 %159)
  br label %161

161:                                              ; preds = %125
  %162 = load i64, i64* %19, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %19, align 8
  br label %121

164:                                              ; preds = %121
  %165 = load i64, i64* %18, align 8
  store i64 %165, i64* %19, align 8
  br label %166

166:                                              ; preds = %183, %164
  %167 = load i64, i64* %19, align 8
  %168 = load i64, i64* %16, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %166
  %171 = load i64*, i64** %10, align 8
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %19, align 8
  %174 = sub nsw i64 %172, %173
  %175 = sub nsw i64 %174, 1
  %176 = load i64, i64* %15, align 8
  %177 = mul nsw i64 %175, %176
  %178 = getelementptr inbounds i64, i64* %171, i64 %177
  %179 = load i64, i64* %15, align 8
  %180 = mul i64 8, %179
  %181 = trunc i64 %180 to i32
  %182 = call i32 @_TIFFmemset(i64* %178, i32 0, i32 %181)
  br label %183

183:                                              ; preds = %170
  %184 = load i64, i64* %19, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %19, align 8
  br label %166

186:                                              ; preds = %166
  %187 = load i32, i32* %14, align 4
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %186, %118, %65, %47, %24
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TIFFIsTiled(%struct.TYPE_13__*) #2

declare dso_local i32 @TIFFErrorExt(i32, i32, i8*, ...) #2

declare dso_local i32 @TIFFFileName(%struct.TYPE_13__*) #2

declare dso_local i32 @TIFFGetFieldDefaulted(%struct.TYPE_13__*, i32, i64*) #2

declare dso_local i32 @TIFFRGBAImageOK(%struct.TYPE_13__*, i8*) #2

declare dso_local i32 @TIFFRGBAImageBegin(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i8*) #2

declare dso_local i32 @TIFFRGBAImageGet(%struct.TYPE_12__*, i64*, i64, i64) #2

declare dso_local i32 @TIFFRGBAImageEnd(%struct.TYPE_12__*) #2

declare dso_local i32 @memmove(i64*, i64*, i64) #2

declare dso_local i32 @_TIFFmemset(i64*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
