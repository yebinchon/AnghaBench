; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjDecompressHeader3.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjDecompressHeader3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@this = common dso_local global %struct.TYPE_9__* null, align 8
@DECOMPRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"tjDecompressHeader3(): Instance has not been initialized for decompression\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"tjDecompressHeader3(): Invalid argument\00", align 1
@dinfo = common dso_local global %struct.TYPE_10__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@TJCS_GRAY = common dso_local global i32 0, align 4
@TJCS_RGB = common dso_local global i32 0, align 4
@TJCS_YCbCr = common dso_local global i32 0, align 4
@TJCS_CMYK = common dso_local global i32 0, align 4
@TJCS_YCCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"tjDecompressHeader3(): Could not determine subsampling type for JPEG image\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"tjDecompressHeader3(): Could not determine colorspace of JPEG image\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"tjDecompressHeader3(): Invalid data returned in header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tjDecompressHeader3(i32 %0, i8* %1, i64 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @getdinstance(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @this, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DECOMPRESS, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = call i32 @_throw(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %7
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %11, align 8
  %32 = icmp ule i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %12, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %13, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %14, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %15, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %39, %36, %33, %30, %27
  %46 = call i32 @_throw(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @this, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @setjmp(i32 %51) #3
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 -1, i32* %8, align 4
  br label %128

55:                                               ; preds = %47
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dinfo, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @jpeg_mem_src_tj(%struct.TYPE_10__* %56, i8* %57, i64 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dinfo, align 8
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @jpeg_read_header(%struct.TYPE_10__* %60, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dinfo, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dinfo, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %13, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dinfo, align 8
  %72 = call i32 @getSubsamp(%struct.TYPE_10__* %71)
  %73 = load i32*, i32** %14, align 8
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dinfo, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %92 [
    i32 131, label %77
    i32 130, label %80
    i32 128, label %83
    i32 132, label %86
    i32 129, label %89
  ]

77:                                               ; preds = %55
  %78 = load i32, i32* @TJCS_GRAY, align 4
  %79 = load i32*, i32** %15, align 8
  store i32 %78, i32* %79, align 4
  br label %94

80:                                               ; preds = %55
  %81 = load i32, i32* @TJCS_RGB, align 4
  %82 = load i32*, i32** %15, align 8
  store i32 %81, i32* %82, align 4
  br label %94

83:                                               ; preds = %55
  %84 = load i32, i32* @TJCS_YCbCr, align 4
  %85 = load i32*, i32** %15, align 8
  store i32 %84, i32* %85, align 4
  br label %94

86:                                               ; preds = %55
  %87 = load i32, i32* @TJCS_CMYK, align 4
  %88 = load i32*, i32** %15, align 8
  store i32 %87, i32* %88, align 4
  br label %94

89:                                               ; preds = %55
  %90 = load i32, i32* @TJCS_YCCK, align 4
  %91 = load i32*, i32** %15, align 8
  store i32 %90, i32* %91, align 4
  br label %94

92:                                               ; preds = %55
  %93 = load i32*, i32** %15, align 8
  store i32 -1, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %89, %86, %83, %80, %77
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dinfo, align 8
  %96 = call i32 @jpeg_abort_decompress(%struct.TYPE_10__* %95)
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = call i32 @_throw(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %94
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 @_throw(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %102
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %112, %108
  %117 = call i32 @_throw(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %112
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @this, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 -1, i32* %16, align 4
  br label %126

126:                                              ; preds = %125, %119
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %126, %54
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i32 @getdinstance(i32) #1

declare dso_local i32 @_throw(i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @jpeg_mem_src_tj(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @jpeg_read_header(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @getSubsamp(%struct.TYPE_10__*) #1

declare dso_local i32 @jpeg_abort_decompress(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
