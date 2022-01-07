; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_3dmeasure.c_HPDF_Dict_AddPoint3D.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_3dmeasure.c_HPDF_Dict_AddPoint3D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_Dict_AddPoint3D(%struct.TYPE_7__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %2, i64* %12, align 4
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %3, i32* %13, align 4
  %14 = bitcast %struct.TYPE_6__* %6 to i8*
  %15 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 12, i1 false)
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  %16 = load i64, i64* @HPDF_OK, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @HPDF_Array_New(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @HPDF_Error_GetCode(i32 %26)
  store i64 %27, i64* %5, align 8
  br label %60

28:                                               ; preds = %4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @HPDF_Dict_Add(%struct.TYPE_7__* %29, i8* %30, i32 %31)
  %33 = load i64, i64* @HPDF_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @HPDF_Error_GetCode(i32 %38)
  store i64 %39, i64* %5, align 8
  br label %60

40:                                               ; preds = %28
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @HPDF_Array_AddReal(i32 %41, i32 %43)
  %45 = load i64, i64* %11, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @HPDF_Array_AddReal(i32 %47, i32 %49)
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @HPDF_Array_AddReal(i32 %53, i32 %55)
  %57 = load i64, i64* %11, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %40, %35, %23
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @HPDF_Array_New(i32) #2

declare dso_local i64 @HPDF_Error_GetCode(i32) #2

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i64 @HPDF_Array_AddReal(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
