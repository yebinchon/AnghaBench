; ModuleID = '/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_layer.c_SdbpBuildSignMediaId.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_layer.c_SdbpBuildSignMediaId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@SIGN_MEDIA_FMT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SdbpBuildSignMediaId(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = call i32 @SdbpInitTempStr(%struct.TYPE_13__* %4)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = add i64 %15, 30
  %17 = trunc i64 %16 to i32
  %18 = call i32 @SdbpResizeTempStr(%struct.TYPE_13__* %4, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @StringCbCopyNW(i64 %21, i32 %24, i64 %28, i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @wcsrchr(i64 %37, i8 signext 92)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %117

41:                                               ; preds = %1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 42, i8* %43, align 1
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8 0, i8* %45, align 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @FindFirstFileW(i64 %49, %struct.TYPE_12__* %7)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %116

54:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %72, %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %67, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %65, %61, %55
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @FindNextFileW(i64 %73, %struct.TYPE_12__* %7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %55, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @FindClose(i64 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 1
  %85 = add nsw i32 %84, 20
  %86 = call i32 @SdbpResizeTempStr(%struct.TYPE_13__* %79, i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SIGN_MEDIA_FMT, align 4
  %96 = load i32, i32* %8, align 4
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 3
  %101 = call i32 @StringCbPrintfW(i64 %90, i32 %94, i32 %95, i32 %96, i64 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @SdbpStrlen(i64 %105)
  %107 = trunc i64 %106 to i32
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = call i32 @SdbpFreeTempStr(%struct.TYPE_13__* %4)
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %2, align 4
  br label %122

116:                                              ; preds = %41
  br label %117

117:                                              ; preds = %116, %1
  %118 = call i32 @SdbpFreeTempStr(%struct.TYPE_13__* %4)
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %120 = call i32 @SdbpFreeTempStr(%struct.TYPE_13__* %119)
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %76
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @SdbpInitTempStr(%struct.TYPE_13__*) #1

declare dso_local i32 @SdbpResizeTempStr(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @StringCbCopyNW(i64, i32, i64, i32) #1

declare dso_local i8* @wcsrchr(i64, i8 signext) #1

declare dso_local i64 @FindFirstFileW(i64, %struct.TYPE_12__*) #1

declare dso_local i64 @FindNextFileW(i64, %struct.TYPE_12__*) #1

declare dso_local i32 @FindClose(i64) #1

declare dso_local i32 @StringCbPrintfW(i64, i32, i32, i32, i64) #1

declare dso_local i64 @SdbpStrlen(i64) #1

declare dso_local i32 @SdbpFreeTempStr(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
