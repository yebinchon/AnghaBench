; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirinfo.c__TIFFCreateAnonField.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirinfo.c__TIFFCreateAnonField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32*, i8*, i8*, i32, i8*, i8*, i64, i8*, i8*, i64 }

@TIFF_VARIABLE2 = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_UINT8 = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_ASCII = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_UINT16 = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_UINT32 = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_FLOAT = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_SINT8 = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_SINT16 = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_SINT32 = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_DOUBLE = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_IFD8 = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_UINT64 = common dso_local global i8* null, align 8
@TIFF_SETGET_C32_SINT64 = common dso_local global i8* null, align 8
@TIFF_SETGET_UNDEFINED = common dso_local global i8* null, align 8
@FIELD_CUSTOM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Tag %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @_TIFFCreateAnonField(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @_TIFFmalloc(i32 96)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %155

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = call i32 @_TIFFmemset(%struct.TYPE_5__* %16, i32 0, i32 96)
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 11
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** @TIFF_VARIABLE2, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 10
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @TIFF_VARIABLE2, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 9
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 8
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %117 [
    i32 142, label %33
    i32 128, label %33
    i32 143, label %40
    i32 133, label %47
    i32 137, label %54
    i32 135, label %61
    i32 130, label %61
    i32 140, label %61
    i32 134, label %68
    i32 129, label %75
    i32 132, label %82
    i32 141, label %89
    i32 139, label %96
    i32 138, label %96
    i32 136, label %103
    i32 131, label %110
  ]

33:                                               ; preds = %15, %15
  %34 = load i8*, i8** @TIFF_SETGET_C32_UINT8, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @TIFF_SETGET_C32_UINT8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  br label %124

40:                                               ; preds = %15
  %41 = load i8*, i8** @TIFF_SETGET_C32_ASCII, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @TIFF_SETGET_C32_ASCII, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  br label %124

47:                                               ; preds = %15
  %48 = load i8*, i8** @TIFF_SETGET_C32_UINT16, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @TIFF_SETGET_C32_UINT16, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  br label %124

54:                                               ; preds = %15
  %55 = load i8*, i8** @TIFF_SETGET_C32_UINT32, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @TIFF_SETGET_C32_UINT32, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  br label %124

61:                                               ; preds = %15, %15, %15
  %62 = load i8*, i8** @TIFF_SETGET_C32_FLOAT, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @TIFF_SETGET_C32_FLOAT, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  br label %124

68:                                               ; preds = %15
  %69 = load i8*, i8** @TIFF_SETGET_C32_SINT8, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @TIFF_SETGET_C32_SINT8, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  br label %124

75:                                               ; preds = %15
  %76 = load i8*, i8** @TIFF_SETGET_C32_SINT16, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 7
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @TIFF_SETGET_C32_SINT16, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  br label %124

82:                                               ; preds = %15
  %83 = load i8*, i8** @TIFF_SETGET_C32_SINT32, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 7
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @TIFF_SETGET_C32_SINT32, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  br label %124

89:                                               ; preds = %15
  %90 = load i8*, i8** @TIFF_SETGET_C32_DOUBLE, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 7
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @TIFF_SETGET_C32_DOUBLE, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 6
  store i8* %93, i8** %95, align 8
  br label %124

96:                                               ; preds = %15, %15
  %97 = load i8*, i8** @TIFF_SETGET_C32_IFD8, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 7
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** @TIFF_SETGET_C32_IFD8, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 6
  store i8* %100, i8** %102, align 8
  br label %124

103:                                              ; preds = %15
  %104 = load i8*, i8** @TIFF_SETGET_C32_UINT64, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @TIFF_SETGET_C32_UINT64, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  br label %124

110:                                              ; preds = %15
  %111 = load i8*, i8** @TIFF_SETGET_C32_SINT64, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 7
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @TIFF_SETGET_C32_SINT64, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  br label %124

117:                                              ; preds = %15
  %118 = load i8*, i8** @TIFF_SETGET_UNDEFINED, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 7
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** @TIFF_SETGET_UNDEFINED, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %117, %110, %103, %96, %89, %82, %75, %68, %61, %54, %47, %40, %33
  %125 = load i32, i32* @FIELD_CUSTOM, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load i8*, i8** @TRUE, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** @TRUE, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = call i64 @_TIFFmalloc(i32 32)
  %135 = inttoptr i64 %134 to i8*
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %124
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %144 = call i32 @_TIFFfree(%struct.TYPE_5__* %143)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %155

145:                                              ; preds = %124
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* %6, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @snprintf(i8* %150, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %154, %struct.TYPE_5__** %4, align 8
  br label %155

155:                                              ; preds = %145, %142, %14
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %156
}

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @_TIFFmemset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @_TIFFfree(%struct.TYPE_5__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
