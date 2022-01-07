; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_parser.c_Parser_AddPin.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_parser.c_Parser_AddPin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32**, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i64, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@Parser_OutputPin_Vtbl = common dso_local global i32 0, align 4
@output_BaseOutputFuncTable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed with error %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Parser_AddPin(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  store i32** %15, i32*** %9, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i8* @CoTaskMemAlloc(i32 %22)
  %24 = bitcast i8* %23 to i32**
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  store i32** %24, i32*** %26, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32**, i32*** %9, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(i32** %29, i32** %30, i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %45, i64 %50
  %52 = call i32 @BaseOutputPin_Construct(i32* @Parser_OutputPin_Vtbl, i32 32, i32* %39, i32* @output_BaseOutputFuncTable, i32* %42, i32** %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @SUCCEEDED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %59, i64 %64
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %11, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call %struct.TYPE_12__* @unsafe_impl_Parser_OutputPin_from_IPin(i32* %67)
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %12, align 8
  %69 = call i8* @CoTaskMemAlloc(i32 4)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @CopyMediaType(i8* %74, i32* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32* %81, i32** %86, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = call i32 @BaseFilterImpl_IncrementPinVersion(%struct.TYPE_14__* %96)
  %98 = load i32**, i32*** %9, align 8
  %99 = call i32 @CoTaskMemFree(i32** %98)
  br label %110

100:                                              ; preds = %4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32**, i32*** %102, align 8
  %104 = call i32 @CoTaskMemFree(i32** %103)
  %105 = load i32**, i32*** %9, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  store i32** %105, i32*** %107, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %100, %56
  %111 = load i32, i32* %10, align 4
  ret i32 %111
}

declare dso_local i8* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

declare dso_local i32 @BaseOutputPin_Construct(i32*, i32, i32*, i32*, i32*, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local %struct.TYPE_12__* @unsafe_impl_Parser_OutputPin_from_IPin(i32*) #1

declare dso_local i32 @CopyMediaType(i8*, i32*) #1

declare dso_local i32 @BaseFilterImpl_IncrementPinVersion(%struct.TYPE_14__*) #1

declare dso_local i32 @CoTaskMemFree(i32**) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
