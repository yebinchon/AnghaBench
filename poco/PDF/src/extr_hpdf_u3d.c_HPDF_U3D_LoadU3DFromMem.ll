; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_u3d.c_HPDF_U3D_LoadU3DFromMem.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_u3d.c_HPDF_U3D_LoadU3DFromMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c" HPDF_U3D_LoadU3DFromMem\0A\00", align 1
@HPDF_OSUBCLASS_XOBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"XObject\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Image\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @HPDF_U3D_LoadU3DFromMem(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* @HPDF_OK, align 8
  store i64 %12, i64* %11, align 8
  %13 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.TYPE_9__* @HPDF_DictStream_New(i32 %14, i32 %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %58

20:                                               ; preds = %4
  %21 = load i32, i32* @HPDF_OSUBCLASS_XOBJECT, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %28 = call i64 @HPDF_Dict_AddName(%struct.TYPE_9__* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @HPDF_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = call i32 @HPDF_Dict_Free(%struct.TYPE_9__* %33)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %58

35:                                               ; preds = %20
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = call i64 @HPDF_Dict_AddName(%struct.TYPE_9__* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @HPDF_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = call i32 @HPDF_Dict_Free(%struct.TYPE_9__* %42)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %58

44:                                               ; preds = %35
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @HPDF_Stream_Write(i32 %47, i32* %48, i32 %49)
  %51 = load i64, i64* @HPDF_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = call i32 @HPDF_Dict_Free(%struct.TYPE_9__* %54)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %58

56:                                               ; preds = %44
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %5, align 8
  br label %58

58:                                               ; preds = %56, %53, %41, %32, %19
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %59
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_9__* @HPDF_DictStream_New(i32, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @HPDF_Dict_Free(%struct.TYPE_9__*) #1

declare dso_local i64 @HPDF_Stream_Write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
