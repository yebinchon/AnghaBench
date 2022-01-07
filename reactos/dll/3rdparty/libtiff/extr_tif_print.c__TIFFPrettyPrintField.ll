; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_print.c__TIFFPrettyPrintField.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_print.c__TIFFPrettyPrintField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"Tag \00", align 1
@TIFF_SHORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"  Ink Set: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"CMYK\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%u (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"  Dot Range: %u-%u\0A\00", align 1
@TIFF_RATIONAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"  White Point: %g-%g\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"  XMLPacket (XMP Metadata):\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"  RichTIFFIPTC Data: <present>, %lu bytes\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"  Photoshop Data: <present>, %lu bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"  ICC Profile: <present>, %lu bytes\0A\00", align 1
@TIFF_DOUBLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"  Sample to Nits conversion factor: %.4e\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32, i32, i8*)* @_TIFFPrettyPrintField to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_TIFFPrettyPrintField(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strncmp(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %151

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  switch i32 %23, label %150 [
    i32 133, label %24
    i32 135, label %53
    i32 129, label %74
    i32 128, label %97
    i32 131, label %118
    i32 132, label %124
    i32 134, label %129
    i32 130, label %134
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %52

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TIFF_SHORT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %13, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %42 [
    i32 136, label %39
  ]

39:                                               ; preds = %33
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %51

42:                                               ; preds = %33
  %43 = load i32*, i32** %10, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %39
  store i32 1, i32* %7, align 4
  br label %151

52:                                               ; preds = %27, %24
  store i32 0, i32* %7, align 4
  br label %151

53:                                               ; preds = %22
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TIFF_SHORT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i32*, i32** %10, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %71)
  store i32 1, i32* %7, align 4
  br label %151

73:                                               ; preds = %56, %53
  store i32 0, i32* %7, align 4
  br label %151

74:                                               ; preds = %22
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TIFF_RATIONAL, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load i32*, i32** %10, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = bitcast i8* %85 to float*
  %87 = getelementptr inbounds float, float* %86, i64 0
  %88 = load float, float* %87, align 4
  %89 = fpext float %88 to double
  %90 = load i8*, i8** %13, align 8
  %91 = bitcast i8* %90 to float*
  %92 = getelementptr inbounds float, float* %91, i64 1
  %93 = load float, float* %92, align 4
  %94 = fpext float %93 to double
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), double %89, double %94)
  store i32 1, i32* %7, align 4
  br label %151

96:                                               ; preds = %77, %74
  store i32 0, i32* %7, align 4
  br label %151

97:                                               ; preds = %22
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %100

100:                                              ; preds = %112, %97
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @fputc(i8 signext %109, i32* %110)
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %100

115:                                              ; preds = %100
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %151

118:                                              ; preds = %22
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i64 %122)
  store i32 1, i32* %7, align 4
  br label %151

124:                                              ; preds = %22
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 %127)
  store i32 1, i32* %7, align 4
  br label %151

129:                                              ; preds = %22
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i64 %132)
  store i32 1, i32* %7, align 4
  br label %151

134:                                              ; preds = %22
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TIFF_DOUBLE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32*, i32** %10, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = bitcast i8* %145 to double*
  %147 = load double, double* %146, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), double %147)
  store i32 1, i32* %7, align 4
  br label %151

149:                                              ; preds = %137, %134
  store i32 0, i32* %7, align 4
  br label %151

150:                                              ; preds = %22
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %150, %149, %143, %129, %124, %118, %115, %96, %83, %73, %62, %52, %51, %21
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
