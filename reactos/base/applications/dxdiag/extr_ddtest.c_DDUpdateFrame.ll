; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_ddtest.c_DDUpdateFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_ddtest.c_DDUpdateFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 (%struct.TYPE_23__*, i32*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32, %struct.TYPE_24__*)*, i32 (%struct.TYPE_23__*, i32*, i32)*, i32 (%struct.TYPE_23__*, i32)* }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_22__ = type { i64, i64, i64, i64 }

@DDBLT_COLORFILL = common dso_local global i32 0, align 4
@DDBLT_WAIT = common dso_local global i32 0, align 4
@DD_OK = common dso_local global i64 0, align 8
@DD_SQUARE_SIZE = common dso_local global i64 0, align 8
@DD_TEST_WIDTH = common dso_local global i64 0, align 8
@DD_TEST_HEIGHT = common dso_local global i64 0, align 8
@DDFLIP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DDUpdateFrame(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, i64 %2, i64* %3, i64* %4, i64* %5, i64* %6, %struct.TYPE_22__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_24__, align 8
  %20 = alloca %struct.TYPE_22__, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store %struct.TYPE_22__* %7, %struct.TYPE_22__** %17, align 8
  %22 = call i32 @ZeroMemory(%struct.TYPE_24__* %19, i32 16)
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  store i32 16, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32, %struct.TYPE_24__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32, %struct.TYPE_24__*)** %28, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %31 = load i32, i32* @DDBLT_COLORFILL, align 4
  %32 = load i32, i32* @DDBLT_WAIT, align 4
  %33 = or i32 %31, %32
  %34 = call i32 %29(%struct.TYPE_23__* %30, %struct.TYPE_22__* null, %struct.TYPE_23__* null, i32* null, i32 %33, %struct.TYPE_24__* %19)
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i64 (%struct.TYPE_23__*, i32*)*, i64 (%struct.TYPE_23__*, i32*)** %38, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %41 = call i64 %39(%struct.TYPE_23__* %40, i32* %18)
  %42 = load i64, i64* @DD_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %149

44:                                               ; preds = %8
  %45 = load i64*, i64** %13, align 8
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 3
  store i64 %46, i64* %47, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DD_SQUARE_SIZE, align 8
  %51 = add nsw i64 %49, %50
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  store i64 %51, i64* %52, align 8
  %53 = load i64*, i64** %14, align 8
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  store i64 %54, i64* %55, align 8
  %56 = load i64*, i64** %14, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DD_SQUARE_SIZE, align 8
  %59 = add nsw i64 %57, %58
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = call i32 @RGB(i32 255, i32 255, i32 255)
  %62 = call i32 @CreateSolidBrush(i32 %61)
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %21, align 4
  %65 = call i32 @FillRect(i32 %63, %struct.TYPE_22__* %20, i32 %64)
  %66 = load i64*, i64** %13, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DD_TEST_WIDTH, align 8
  %69 = load i64, i64* @DD_SQUARE_SIZE, align 8
  %70 = sub nsw i64 %68, %69
  %71 = icmp sge i64 %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %44
  %73 = load i64*, i64** %15, align 8
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 0, %74
  %76 = load i64*, i64** %15, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %44
  %78 = load i64*, i64** %14, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DD_TEST_HEIGHT, align 8
  %81 = load i64, i64* @DD_SQUARE_SIZE, align 8
  %82 = sub nsw i64 %80, %81
  %83 = icmp sge i64 %79, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i64*, i64** %16, align 8
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 0, %86
  %88 = load i64*, i64** %16, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %84, %77
  %90 = load i64*, i64** %13, align 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i64*, i64** %15, align 8
  %95 = load i64, i64* %94, align 8
  %96 = mul nsw i64 -1, %95
  %97 = load i64*, i64** %15, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i64*, i64** %14, align 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i64*, i64** %16, align 8
  %104 = load i64, i64* %103, align 8
  %105 = mul nsw i64 -1, %104
  %106 = load i64*, i64** %16, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %102, %98
  %108 = load i64*, i64** %15, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %13, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %109
  store i64 %112, i64* %110, align 8
  %113 = load i64*, i64** %16, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %14, align 8
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %114
  store i64 %117, i64* %115, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 3
  %122 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %121, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call i32 %122(%struct.TYPE_23__* %123, i32 %124)
  %126 = load i64, i64* %12, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %107
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load i32 (%struct.TYPE_23__*, i32*, i32)*, i32 (%struct.TYPE_23__*, i32*, i32)** %132, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %135 = load i32, i32* @DDFLIP_WAIT, align 4
  %136 = call i32 %133(%struct.TYPE_23__* %134, i32* null, i32 %135)
  br label %148

137:                                              ; preds = %107
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = load i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32, %struct.TYPE_24__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32, %struct.TYPE_24__*)** %141, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %146 = load i32, i32* @DDBLT_WAIT, align 4
  %147 = call i32 %142(%struct.TYPE_23__* %143, %struct.TYPE_22__* %144, %struct.TYPE_23__* %145, i32* null, i32 %146, %struct.TYPE_24__* null)
  br label %148

148:                                              ; preds = %137, %128
  br label %149

149:                                              ; preds = %148, %8
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
