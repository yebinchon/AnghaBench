; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc.c_USBH_MSC_Write.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc.c_USBH_MSC_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@HOST_CLASS = common dso_local global i64 0, align 8
@MSC_IDLE = common dso_local global i64 0, align 8
@USBH_FAIL = common dso_local global i32 0, align 4
@MSC_WRITE = common dso_local global i8* null, align 8
@USBH_BUSY = common dso_local global i64 0, align 8
@USBH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_MSC_Write(%struct.TYPE_12__* %0, i64 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %13, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %5
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HOST_CLASS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MSC_IDLE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30, %24, %5
  %41 = load i32, i32* @USBH_FAIL, align 4
  store i32 %41, i32* %6, align 4
  br label %100

42:                                               ; preds = %30
  %43 = load i8*, i8** @MSC_WRITE, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @MSC_WRITE, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i64 %47, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i64*, i64** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @USBH_MSC_SCSI_Write(%struct.TYPE_12__* %57, i64 %58, i32 %59, i64* %60, i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 10000, %66
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %93, %42
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @USBH_MSC_RdWrProcess(%struct.TYPE_12__* %70, i64 %71)
  %73 = load i64, i64* @USBH_BUSY, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81, %75
  %88 = load i64, i64* @MSC_IDLE, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @USBH_FAIL, align 4
  store i32 %92, i32* %6, align 4
  br label %100

93:                                               ; preds = %81
  br label %69

94:                                               ; preds = %69
  %95 = load i64, i64* @MSC_IDLE, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* @USBH_OK, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %94, %87, %40
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @USBH_MSC_SCSI_Write(%struct.TYPE_12__*, i64, i32, i64*, i32) #1

declare dso_local i64 @USBH_MSC_RdWrProcess(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
