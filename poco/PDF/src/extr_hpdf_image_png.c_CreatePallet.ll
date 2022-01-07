; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_CreatePallet.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_CreatePallet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@PNG_INFO_PLTE = common dso_local global i64 0, align 8
@HPDF_LIBPNG_ERROR = common dso_local global i32 0, align 4
@HPDF_CANNOT_GET_PALLET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Indexed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @CreatePallet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreatePallet(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @png_get_PLTE(i32 %15, i32 %16, %struct.TYPE_7__** %9, i32* %8)
  %18 = load i64, i64* @PNG_INFO_PLTE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i32, i32* @HPDF_LIBPNG_ERROR, align 4
  %25 = load i32, i32* @HPDF_CANNOT_GET_PALLET, align 4
  %26 = call i32 @HPDF_SetError(%struct.TYPE_9__* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %113

27:                                               ; preds = %3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %31, 3
  %33 = call i32* @HPDF_GetMem(i32 %30, i32 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  br label %113

42:                                               ; preds = %27
  %43 = load i32*, i32** %10, align 8
  store i32* %43, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %64, %42
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  br label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 1
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %9, align 8
  br label %44

69:                                               ; preds = %44
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @HPDF_Array_New(i32 %72)
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %13, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %69
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @HPDF_Dict_Add(%struct.TYPE_8__* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @HPDF_Array_AddName(i64 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @HPDF_Array_AddName(i64 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i64, i64* %13, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @HPDF_Array_AddNumber(i64 %84, i32 %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %92, 3
  %94 = call i64 @HPDF_Binary_New(i32 %90, i32* %91, i32 %93)
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %76
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @HPDF_Array_Add(i64 %98, i64 %99)
  br label %101

101:                                              ; preds = %97, %76
  br label %102

102:                                              ; preds = %101, %69
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @HPDF_FreeMem(i32 %105, i32* %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %102, %36, %20
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @png_get_PLTE(i32, i32, %struct.TYPE_7__**, i32*) #1

declare dso_local i32 @HPDF_SetError(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @HPDF_GetMem(i32, i32) #1

declare dso_local i64 @HPDF_Array_New(i32) #1

declare dso_local i32 @HPDF_Dict_Add(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @HPDF_Array_AddName(i64, i8*) #1

declare dso_local i32 @HPDF_Array_AddNumber(i64, i32) #1

declare dso_local i64 @HPDF_Binary_New(i32, i32*, i32) #1

declare dso_local i32 @HPDF_Array_Add(i64, i64) #1

declare dso_local i32 @HPDF_FreeMem(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
