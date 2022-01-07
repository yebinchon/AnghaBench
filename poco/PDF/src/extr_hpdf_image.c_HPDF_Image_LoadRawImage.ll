; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image.c_HPDF_Image_LoadRawImage.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image.c_HPDF_Image_LoadRawImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c" HPDF_Image_LoadRawImage\0A\00", align 1
@HPDF_CS_DEVICE_GRAY = common dso_local global i64 0, align 8
@HPDF_CS_DEVICE_RGB = common dso_local global i64 0, align 8
@HPDF_CS_DEVICE_CMYK = common dso_local global i64 0, align 8
@HPDF_INVALID_COLOR_SPACE = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_XOBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"XObject\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@COL_GRAY = common dso_local global i8* null, align 8
@COL_CMYK = common dso_local global i8* null, align 8
@COL_RGB = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1
@HPDF_INVALID_IMAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @HPDF_Image_LoadRawImage(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* @HPDF_OK, align 8
  store i64 %17, i64* %15, align 8
  %18 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @HPDF_CS_DEVICE_GRAY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %6
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @HPDF_CS_DEVICE_RGB, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @HPDF_CS_DEVICE_CMYK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HPDF_INVALID_COLOR_SPACE, align 4
  %35 = call i32 @HPDF_SetError(i32 %33, i32 %34, i32 0)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %144

36:                                               ; preds = %26, %22, %6
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.TYPE_14__* @HPDF_DictStream_New(%struct.TYPE_13__* %37, i32 %38)
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %14, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %41 = icmp ne %struct.TYPE_14__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %144

43:                                               ; preds = %36
  %44 = load i32, i32* @HPDF_OSUBCLASS_XOBJECT, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %51 = call i64 @HPDF_Dict_AddName(%struct.TYPE_14__* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i64, i64* %15, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %15, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %55 = call i64 @HPDF_Dict_AddName(%struct.TYPE_14__* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i64, i64* %15, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @HPDF_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %144

62:                                               ; preds = %43
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @HPDF_CS_DEVICE_GRAY, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %16, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %71 = load i8*, i8** @COL_GRAY, align 8
  %72 = call i64 @HPDF_Dict_AddName(%struct.TYPE_14__* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  store i64 %72, i64* %15, align 8
  br label %94

73:                                               ; preds = %62
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @HPDF_CS_DEVICE_CMYK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %78, %79
  %81 = mul nsw i32 %80, 4
  store i32 %81, i32* %16, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %83 = load i8*, i8** @COL_CMYK, align 8
  %84 = call i64 @HPDF_Dict_AddName(%struct.TYPE_14__* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  store i64 %84, i64* %15, align 8
  br label %93

85:                                               ; preds = %73
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = mul nsw i32 %86, %87
  %89 = mul nsw i32 %88, 3
  store i32 %89, i32* %16, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %91 = load i8*, i8** @COL_RGB, align 8
  %92 = call i64 @HPDF_Dict_AddName(%struct.TYPE_14__* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %91)
  store i64 %92, i64* %15, align 8
  br label %93

93:                                               ; preds = %85, %77
  br label %94

94:                                               ; preds = %93, %66
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* @HPDF_OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %144

99:                                               ; preds = %94
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_14__* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  %103 = load i64, i64* @HPDF_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %144

106:                                              ; preds = %99
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_14__* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  %110 = load i64, i64* @HPDF_OK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %144

113:                                              ; preds = %106
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %115 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_14__* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %116 = load i64, i64* @HPDF_OK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %144

119:                                              ; preds = %113
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = call i64 @HPDF_Stream_WriteToStream(i32 %120, %struct.TYPE_15__* %123, i32 0, i32* null)
  %125 = load i64, i64* @HPDF_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %144

128:                                              ; preds = %119
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @HPDF_INVALID_IMAGE, align 4
  %141 = call i32 @HPDF_SetError(i32 %139, i32 %140, i32 0)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %144

142:                                              ; preds = %128
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %143, %struct.TYPE_14__** %7, align 8
  br label %144

144:                                              ; preds = %142, %136, %127, %118, %112, %105, %98, %61, %42, %30
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  ret %struct.TYPE_14__* %145
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @HPDF_DictStream_New(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i64 @HPDF_Stream_WriteToStream(i32, %struct.TYPE_15__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
