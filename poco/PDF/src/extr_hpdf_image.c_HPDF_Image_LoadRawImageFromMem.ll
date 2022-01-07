; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image.c_HPDF_Image_LoadRawImageFromMem.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image.c_HPDF_Image_LoadRawImageFromMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c" HPDF_Image_LoadRawImageFromMem\0A\00", align 1
@HPDF_INVALID_COLOR_SPACE = common dso_local global i32 0, align 4
@HPDF_INVALID_IMAGE = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_XOBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"XObject\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@COL_GRAY = common dso_local global i8* null, align 8
@COL_RGB = common dso_local global i8* null, align 8
@COL_CMYK = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @HPDF_Image_LoadRawImageFromMem(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i64, i64* @HPDF_OK, align 8
  store i64 %19, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %20 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 129
  br i1 %22, label %23, label %35

23:                                               ; preds = %7
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 128
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 130
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HPDF_INVALID_COLOR_SPACE, align 4
  %34 = call i32 @HPDF_SetError(i32 %32, i32 %33, i32 0)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %163

35:                                               ; preds = %26, %23, %7
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 4
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 8
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HPDF_INVALID_IMAGE, align 4
  %52 = call i32 @HPDF_SetError(i32 %50, i32 %51, i32 0)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %163

53:                                               ; preds = %44, %41, %38, %35
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.TYPE_13__* @HPDF_DictStream_New(%struct.TYPE_12__* %54, i32 %55)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %16, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %58 = icmp ne %struct.TYPE_13__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %163

60:                                               ; preds = %53
  %61 = load i32, i32* @HPDF_OSUBCLASS_XOBJECT, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %68 = call i64 @HPDF_Dict_AddName(%struct.TYPE_13__* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i64, i64* %17, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %17, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %72 = call i64 @HPDF_Dict_AddName(%struct.TYPE_13__* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i64, i64* %17, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* @HPDF_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %60
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %163

79:                                               ; preds = %60
  %80 = load i32, i32* %14, align 4
  switch i32 %80, label %124 [
    i32 129, label %81
    i32 128, label %94
    i32 130, label %109
  ]

81:                                               ; preds = %79
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %15, align 4
  %86 = sdiv i32 8, %85
  %87 = sdiv i32 %84, %86
  %88 = sitofp i32 %87 to double
  %89 = fadd double %88, 8.760000e-01
  %90 = fptosi double %89 to i32
  store i32 %90, i32* %18, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %92 = load i8*, i8** @COL_GRAY, align 8
  %93 = call i64 @HPDF_Dict_AddName(%struct.TYPE_13__* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  store i64 %93, i64* %17, align 8
  br label %125

94:                                               ; preds = %79
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %15, align 4
  %99 = sdiv i32 8, %98
  %100 = sdiv i32 %97, %99
  %101 = sitofp i32 %100 to double
  %102 = fadd double %101, 8.760000e-01
  %103 = fptosi double %102 to i32
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = mul nsw i32 %104, 3
  store i32 %105, i32* %18, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %107 = load i8*, i8** @COL_RGB, align 8
  %108 = call i64 @HPDF_Dict_AddName(%struct.TYPE_13__* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %107)
  store i64 %108, i64* %17, align 8
  br label %125

109:                                              ; preds = %79
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %15, align 4
  %114 = sdiv i32 8, %113
  %115 = sdiv i32 %112, %114
  %116 = sitofp i32 %115 to double
  %117 = fadd double %116, 8.760000e-01
  %118 = fptosi double %117 to i32
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = mul nsw i32 %119, 4
  store i32 %120, i32* %18, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %122 = load i8*, i8** @COL_CMYK, align 8
  %123 = call i64 @HPDF_Dict_AddName(%struct.TYPE_13__* %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  store i64 %123, i64* %17, align 8
  br label %125

124:                                              ; preds = %79
  br label %125

125:                                              ; preds = %124, %109, %94, %81
  %126 = load i64, i64* %17, align 8
  %127 = load i64, i64* @HPDF_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %163

130:                                              ; preds = %125
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_13__* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load i64, i64* @HPDF_OK, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %163

137:                                              ; preds = %130
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_13__* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* @HPDF_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %163

144:                                              ; preds = %137
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %146 = load i32, i32* %15, align 4
  %147 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_13__* %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  %148 = load i64, i64* @HPDF_OK, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %163

151:                                              ; preds = %144
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %18, align 4
  %157 = call i64 @HPDF_Stream_Write(i32 %154, i32* %155, i32 %156)
  %158 = load i64, i64* @HPDF_OK, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %163

161:                                              ; preds = %151
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %162, %struct.TYPE_13__** %8, align 8
  br label %163

163:                                              ; preds = %161, %160, %150, %143, %136, %129, %78, %59, %47, %29
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  ret %struct.TYPE_13__* %164
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @HPDF_DictStream_New(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @HPDF_Stream_Write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
