; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_name.c_HPDF_Name_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_name.c_HPDF_Name_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@HPDF_OCLASS_NAME = common dso_local global i32 0, align 4
@HPDF_NAME_INVALID_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @HPDF_Name_New(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = call %struct.TYPE_11__* @HPDF_GetMem(%struct.TYPE_12__* %7, i32 4)
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = call i32 @HPDF_MemSet(%struct.TYPE_13__* %13, i32 0, i32 4)
  %15 = load i32, i32* @HPDF_OCLASS_NAME, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @HPDF_Name_SetValue(%struct.TYPE_11__* %24, i8* %25)
  %27 = load i64, i64* @HPDF_NAME_INVALID_VALUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %11
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = call i32 @HPDF_FreeMem(%struct.TYPE_12__* %30, %struct.TYPE_11__* %31)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %36

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %3, align 8
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %37
}

declare dso_local %struct.TYPE_11__* @HPDF_GetMem(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @HPDF_Name_SetValue(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @HPDF_FreeMem(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
