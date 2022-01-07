; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_HPDF_Image_LoadPngImage.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_HPDF_Image_LoadPngImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@HPDF_PNG_BYTES_TO_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c" HPDF_Image_LoadPngImage\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_INVALID_PNG_IMAGE = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_XOBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"XObject\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Image\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @HPDF_Image_LoadPngImage(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @HPDF_PNG_BYTES_TO_CHECK, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @HPDF_PNG_BYTES_TO_CHECK, align 4
  store i32 %20, i32* %14, align 4
  %21 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @HPDF_PNG_BYTES_TO_CHECK, align 4
  %23 = call i32 @HPDF_MemSet(i32* %19, i32 0, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @HPDF_Stream_Read(i32 %24, i32* %19, i32* %14)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @HPDF_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @HPDF_PNG_BYTES_TO_CHECK, align 4
  %31 = call i64 @png_sig_cmp(i32* %19, i32 0, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HPDF_INVALID_PNG_IMAGE, align 4
  %38 = call i32 @HPDF_SetError(i32 %36, i32 %37, i32 0)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store i32 1, i32* %15, align 4
  br label %76

39:                                               ; preds = %29
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.TYPE_13__* @HPDF_DictStream_New(%struct.TYPE_12__* %40, i32 %41)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %11, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %44 = icmp ne %struct.TYPE_13__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store i32 1, i32* %15, align 4
  br label %76

46:                                               ; preds = %39
  %47 = load i32, i32* @HPDF_OSUBCLASS_XOBJECT, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = call i64 @HPDF_Dict_AddName(%struct.TYPE_13__* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %10, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %58 = call i64 @HPDF_Dict_AddName(%struct.TYPE_13__* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @HPDF_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store i32 1, i32* %15, align 4
  br label %76

65:                                               ; preds = %46
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @LoadPngData(%struct.TYPE_13__* %66, i32 %67, i32 %68, i32 %69)
  %71 = load i64, i64* @HPDF_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store i32 1, i32* %15, align 4
  br label %76

74:                                               ; preds = %65
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %5, align 8
  store i32 1, i32* %15, align 4
  br label %76

76:                                               ; preds = %74, %73, %64, %45, %33
  %77 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i32 @HPDF_MemSet(i32*, i32, i32) #2

declare dso_local i64 @HPDF_Stream_Read(i32, i32*, i32*) #2

declare dso_local i64 @png_sig_cmp(i32*, i32, i32) #2

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #2

declare dso_local %struct.TYPE_13__* @HPDF_DictStream_New(%struct.TYPE_12__*, i32) #2

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_13__*, i8*, i8*) #2

declare dso_local i64 @LoadPngData(%struct.TYPE_13__*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
