; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image.c_HPDF_Image_Validate.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image.c_HPDF_Image_Validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c" HPDF_Image_Validate\0A\00", align 1
@HPDF_FALSE = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_XOBJECT = common dso_local global i32 0, align 4
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@HPDF_INVALID_IMAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@HPDF_OCLASS_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@HPDF_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Image_Validate(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HPDF_OSUBCLASS_XOBJECT, align 4
  %16 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %17 = or i32 %15, %16
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HPDF_INVALID_IMAGE, align 4
  %24 = call i32 @HPDF_RaiseError(i32 %22, i32 %23, i32 0)
  %25 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %47

26:                                               ; preds = %10
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load i32, i32* @HPDF_OCLASS_NAME, align 4
  %29 = call %struct.TYPE_8__* @HPDF_Dict_GetItem(%struct.TYPE_9__* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %4, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @HPDF_StrCmp(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32, %26
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HPDF_INVALID_IMAGE, align 4
  %43 = call i32 @HPDF_RaiseError(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* @HPDF_FALSE, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @HPDF_TRUE, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %38, %19, %8
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_RaiseError(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @HPDF_Dict_GetItem(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i64 @HPDF_StrCmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
