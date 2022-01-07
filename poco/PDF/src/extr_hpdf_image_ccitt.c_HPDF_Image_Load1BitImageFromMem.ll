; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_Image_Load1BitImageFromMem.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_Image_Load1BitImageFromMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c" HPDF_Image_Load1BitImage\0A\00", align 1
@HPDF_OSUBCLASS_XOBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"XObject\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @HPDF_Image_Load1BitImageFromMem(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* @HPDF_OK, align 8
  store i64 %18, i64* %17, align 8
  %19 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.TYPE_9__* @HPDF_DictStream_New(i32 %20, i32 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %16, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %87

26:                                               ; preds = %7
  %27 = load i32, i32* @HPDF_OSUBCLASS_XOBJECT, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %34 = call i64 @HPDF_Dict_AddName(%struct.TYPE_9__* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i64, i64* %17, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %17, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %38 = call i64 @HPDF_Dict_AddName(%struct.TYPE_9__* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i64, i64* %17, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* @HPDF_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %87

45:                                               ; preds = %26
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %47 = call i64 @HPDF_Dict_AddName(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i64 %47, i64* %17, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* @HPDF_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %87

52:                                               ; preds = %45
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_9__* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = load i64, i64* @HPDF_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %87

59:                                               ; preds = %52
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_9__* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* @HPDF_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %87

66:                                               ; preds = %59
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %68 = call i64 @HPDF_Dict_AddNumber(%struct.TYPE_9__* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %69 = load i64, i64* @HPDF_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %87

72:                                               ; preds = %66
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @HPDF_Stream_CcittToStream(i32* %73, i32 %76, i32* null, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i64, i64* @HPDF_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %87

85:                                               ; preds = %72
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %8, align 8
  br label %87

87:                                               ; preds = %85, %84, %71, %65, %58, %51, %44, %25
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  ret %struct.TYPE_9__* %88
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_9__* @HPDF_DictStream_New(i32, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_AddNumber(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i64 @HPDF_Stream_CcittToStream(i32*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
