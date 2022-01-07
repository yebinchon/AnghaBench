; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_u3d.c_Get3DStreamType.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_u3d.c_Get3DStreamType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c" HPDF_U3D_Get3DStreamType\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_SEEK_SET = common dso_local global i32 0, align 4
@u3d = common dso_local global i8* null, align 8
@prc = common dso_local global i8* null, align 8
@HPDF_INVALID_U3D_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8**)* @Get3DStreamType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Get3DStreamType(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 4, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %11 = call i64 @HPDF_Stream_Read(%struct.TYPE_5__* %9, i32* %10, i32* %7)
  %12 = load i64, i64* @HPDF_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @HPDF_Error_GetCode(i32 %17)
  store i64 %18, i64* %3, align 8
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = load i32, i32* @HPDF_SEEK_SET, align 4
  %22 = call i64 @HPDF_Stream_Seek(%struct.TYPE_5__* %20, i32 0, i32 %21)
  %23 = load i64, i64* @HPDF_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @HPDF_Error_GetCode(i32 %28)
  store i64 %29, i64* %3, align 8
  br label %52

30:                                               ; preds = %19
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %32 = load i8*, i8** @u3d, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = call i64 @HPDF_MemCmp(i32* %31, i32* %33, i32 4)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** @u3d, align 8
  %38 = load i8**, i8*** %5, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i64, i64* @HPDF_OK, align 8
  store i64 %39, i64* %3, align 8
  br label %52

40:                                               ; preds = %30
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %42 = load i8*, i8** @prc, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = call i64 @HPDF_MemCmp(i32* %41, i32* %43, i32 3)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i8*, i8** @prc, align 8
  %48 = load i8**, i8*** %5, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i64, i64* @HPDF_OK, align 8
  store i64 %49, i64* %3, align 8
  br label %52

50:                                               ; preds = %40
  %51 = load i64, i64* @HPDF_INVALID_U3D_DATA, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %50, %46, %36, %25, %14
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Stream_Read(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_Stream_Seek(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @HPDF_MemCmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
