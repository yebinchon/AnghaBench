; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_PngBeforeWrite.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_PngBeforeWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@HPDF_PNG_BYTES_TO_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" PngBeforeWrite\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"_FILE_NAME\00", align 1
@HPDF_OCLASS_STRING = common dso_local global i32 0, align 4
@HPDF_MISSING_FILE_NAME_ENTRY = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_INVALID_PNG_IMAGE = common dso_local global i32 0, align 4
@HPDF_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @PngBeforeWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PngBeforeWrite(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %11 = load i32, i32* @HPDF_PNG_BYTES_TO_CHECK, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @HPDF_PNG_BYTES_TO_CHECK, align 4
  store i32 %15, i32* %7, align 4
  %16 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @HPDF_MemStream_FreeData(i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = load i32, i32* @HPDF_OCLASS_STRING, align 4
  %23 = call %struct.TYPE_8__* @HPDF_Dict_GetItem(%struct.TYPE_9__* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %9, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load i32, i32* @HPDF_MISSING_FILE_NAME_ENTRY, align 4
  %31 = call i64 @HPDF_SetError(%struct.TYPE_10__* %29, i32 %30, i32 0)
  store i64 %31, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %85

32:                                               ; preds = %1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @HPDF_FileReader_New(i32 %35, i8* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @HPDF_Stream_Validate(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %85

50:                                               ; preds = %32
  %51 = load i32, i32* @HPDF_PNG_BYTES_TO_CHECK, align 4
  %52 = call i32 @HPDF_MemSet(i32* %14, i32 0, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @HPDF_Stream_Read(i32 %53, i32* %14, i32* %7)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @HPDF_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @HPDF_PNG_BYTES_TO_CHECK, align 4
  %60 = call i64 @png_sig_cmp(i32* %14, i32 0, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58, %50
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @HPDF_Stream_Free(i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* @HPDF_INVALID_PNG_IMAGE, align 4
  %69 = call i64 @HPDF_SetError(%struct.TYPE_10__* %67, i32 %68, i32 0)
  store i64 %69, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %85

70:                                               ; preds = %58
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @HPDF_FALSE, align 4
  %74 = call i64 @LoadPngData(%struct.TYPE_9__* %71, i32* null, i32 %72, i32 %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* @HPDF_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @HPDF_Stream_Free(i32 %78)
  %80 = load i64, i64* %4, align 8
  store i64 %80, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %85

81:                                               ; preds = %70
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @HPDF_Stream_Free(i32 %82)
  %84 = load i64, i64* @HPDF_OK, align 8
  store i64 %84, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %81, %77, %62, %44, %26
  %86 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i64, i64* %2, align 8
  ret i64 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i32 @HPDF_MemStream_FreeData(i32) #2

declare dso_local %struct.TYPE_8__* @HPDF_Dict_GetItem(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i64 @HPDF_SetError(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @HPDF_FileReader_New(i32, i8*) #2

declare dso_local i32 @HPDF_Stream_Validate(i32) #2

declare dso_local i32 @HPDF_MemSet(i32*, i32, i32) #2

declare dso_local i64 @HPDF_Stream_Read(i32, i32*, i32*) #2

declare dso_local i64 @png_sig_cmp(i32*, i32, i32) #2

declare dso_local i32 @HPDF_Stream_Free(i32) #2

declare dso_local i64 @LoadPngData(%struct.TYPE_9__*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
