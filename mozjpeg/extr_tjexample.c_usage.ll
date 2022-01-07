; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjexample.c_usage.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjexample.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"\0AUSAGE: %s <Input image> <Output image> [options]\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"Input and output images can be in Windows BMP or PBMPLUS (PPM/PGM) format.  If\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"either filename ends in a .jpg extension, then the TurboJPEG API will be used\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"to compress or decompress the image.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Compression Options (used if the output image is a JPEG image)\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"--------------------------------------------------------------\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"-subsamp <444|422|420|gray> = Apply this level of chrominance subsampling when\0A\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"     compressing the output image.  The default is to use the same level of\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"     subsampling as in the input image, if the input image is also a JPEG\0A\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"     image, or to use grayscale if the input image is a grayscale non-JPEG\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"     image, or to use %s subsampling otherwise.\0A\0A\00", align 1
@subsampName = common dso_local global i8** null, align 8
@DEFAULT_SUBSAMP = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [69 x i8] c"-q <1-100> = Compress the output image with this JPEG quality level\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"     (default = %d).\0A\0A\00", align 1
@DEFAULT_QUALITY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [65 x i8] c"Decompression Options (used if the input image is a JPEG image)\0A\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"---------------------------------------------------------------\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"-scale M/N = Scale the input image by a factor of M/N when decompressing it.\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"(M/N = \00", align 1
@numScalingFactors = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@scalingFactors = common dso_local global %struct.TYPE_2__* null, align 8
@.str.18 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"or \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c")\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [69 x i8] c"-hflip, -vflip, -transpose, -transverse, -rot90, -rot180, -rot270 =\0A\00", align 1
@.str.23 = private unnamed_addr constant [76 x i8] c"     Perform one of these lossless transform operations on the input image\0A\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"     prior to decompressing it (these options are mutually exclusive.)\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"-grayscale = Perform lossless grayscale conversion on the input image prior\0A\00", align 1
@.str.26 = private unnamed_addr constant [79 x i8] c"     to decompressing it (can be combined with the other transform operations\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"     above.)\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"-crop WxH+X+Y = Perform lossless cropping on the input image prior to\0A\00", align 1
@.str.29 = private unnamed_addr constant [79 x i8] c"     decompressing it.  X and Y specify the upper left corner of the cropping\0A\00", align 1
@.str.30 = private unnamed_addr constant [79 x i8] c"     region, and W and H specify the width and height of the cropping region.\0A\00", align 1
@.str.31 = private unnamed_addr constant [77 x i8] c"     X and Y must be evenly divible by the MCU block size (8x8 if the input\0A\00", align 1
@.str.32 = private unnamed_addr constant [77 x i8] c"     image was compressed using no subsampling or grayscale, 16x8 if it was\0A\00", align 1
@.str.33 = private unnamed_addr constant [78 x i8] c"     compressed using 4:2:2 subsampling, or 16x16 if it was compressed using\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"     4:2:0 subsampling.)\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"General Options\0A\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"---------------\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [79 x i8] c"-fastupsample = Use the fastest chrominance upsampling algorithm available in\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"     the underlying codec.\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [76 x i8] c"-fastdct = Use the fastest DCT/IDCT algorithms available in the underlying\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"     codec.\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [75 x i8] c"-accuratedct = Use the most accurate DCT/IDCT algorithms available in the\0A\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"     underlying codec.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0))
  %15 = load i8**, i8*** @subsampName, align 8
  %16 = load i64, i64* @DEFAULT_SUBSAMP, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i8* %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0))
  %21 = load i32, i32* @DEFAULT_QUALITY, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.14, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.15, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %74, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @numScalingFactors, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scalingFactors, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scalingFactors, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %37, i32 %43)
  %45 = load i32, i32* @numScalingFactors, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %54

47:                                               ; preds = %31
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @numScalingFactors, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %73

54:                                               ; preds = %47, %31
  %55 = load i32, i32* @numScalingFactors, align 4
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @numScalingFactors, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @numScalingFactors, align 4
  %67 = sub nsw i32 %66, 2
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %27

77:                                               ; preds = %27
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.22, i64 0, i64 0))
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.23, i64 0, i64 0))
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.24, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.25, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.26, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0))
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.30, i64 0, i64 0))
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.31, i64 0, i64 0))
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.32, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.33, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0))
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.37, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.39, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.41, i64 0, i64 0))
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0))
  %100 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
