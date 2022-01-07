; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image.c_HPDF_Image_LoadJpegImage.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image.c_HPDF_Image_LoadJpegImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c" HPDF_Image_LoadJpegImage\0A\00", align 1
@HPDF_OSUBCLASS_XOBJECT = common dso_local global i32 0, align 4
@HPDF_STREAM_FILTER_DCT_DECODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"XObject\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@HPDF_STREAM_BUF_SIZ = common dso_local global i32 0, align 4
@HPDF_STREAM_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @HPDF_Image_LoadJpegImage(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* @HPDF_OK, align 8
  store i64 %15, i64* %9, align 8
  %16 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_9__* @HPDF_DictStream_New(i32 %17, i32 %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %108

23:                                               ; preds = %3
  %24 = load i32, i32* @HPDF_OSUBCLASS_XOBJECT, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @HPDF_STREAM_FILTER_DCT_DECODE, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = call i64 @HPDF_Dict_AddName(%struct.TYPE_9__* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %9, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = call i64 @HPDF_Dict_AddName(%struct.TYPE_9__* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @HPDF_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %23
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %108

45:                                               ; preds = %23
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @LoadJpegHeader(%struct.TYPE_9__* %46, i32 %47)
  %49 = load i64, i64* @HPDF_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %108

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @HPDF_SEEK_SET, align 4
  %55 = call i64 @HPDF_Stream_Seek(i32 %53, i32 0, i32 %54)
  %56 = load i64, i64* @HPDF_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %108

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %105, %59
  %61 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %10, align 8
  %64 = alloca i32, i64 %62, align 16
  store i64 %62, i64* %11, align 8
  %65 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %12, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @HPDF_Stream_Read(i32 %67, i32* %64, i64* %12)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @HPDF_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %60
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @HPDF_STREAM_EOF, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i64, i64* %12, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %12, align 8
  %84 = call i64 @HPDF_Stream_Write(i32 %82, i32* %64, i64 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* @HPDF_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %102

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %76
  store i32 2, i32* %14, align 4
  br label %102

91:                                               ; preds = %72
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %102

92:                                               ; preds = %60
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @HPDF_Stream_Write(i32 %95, i32* %64, i64 %96)
  %98 = load i64, i64* @HPDF_OK, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %102

101:                                              ; preds = %92
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %101, %100, %91, %90, %88
  %103 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %14, align 4
  switch i32 %104, label %110 [
    i32 0, label %105
    i32 1, label %108
    i32 2, label %106
  ]

105:                                              ; preds = %102
  br label %60

106:                                              ; preds = %102
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %107, %struct.TYPE_9__** %4, align 8
  br label %108

108:                                              ; preds = %106, %102, %58, %51, %44, %22
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %109

110:                                              ; preds = %102
  unreachable
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_9__* @HPDF_DictStream_New(i32, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i64 @LoadJpegHeader(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @HPDF_Stream_Seek(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @HPDF_Stream_Read(i32, i32*, i64*) #1

declare dso_local i64 @HPDF_Stream_Write(i32, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
