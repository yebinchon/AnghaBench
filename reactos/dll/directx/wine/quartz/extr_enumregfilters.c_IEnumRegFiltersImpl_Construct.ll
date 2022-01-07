; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_enumregfilters.c_IEnumRegFiltersImpl_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_enumregfilters.c_IEnumRegFiltersImpl_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_12__*, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_13__ = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %d, %p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@IEnumRegFiltersImpl_Vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IEnumRegFiltersImpl_Construct(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_13__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__** %2, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %11, i32 %12, %struct.TYPE_13__** %13)
  %15 = call i8* @CoTaskMemAlloc(i32 48)
  %16 = bitcast i8* %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %20, align 8
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %4, align 4
  br label %147

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 48, %27
  %29 = trunc i64 %28 to i32
  %30 = call i8* @CoTaskMemAlloc(i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %9, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = call i32 @CoTaskMemFree(%struct.TYPE_12__* %35)
  %37 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %37, align 8
  %38 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %38, i32* %4, align 4
  br label %147

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %22
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %126, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %129

45:                                               ; preds = %41
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 6
  store i32 %51, i32* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = call i32 @strlenW(%struct.TYPE_12__* %62)
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i8* @CoTaskMemAlloc(i32 %67)
  %69 = bitcast i8* %68 to %struct.TYPE_12__*
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 5
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = icmp ne %struct.TYPE_12__* %80, null
  br i1 %81, label %101, label %82

82:                                               ; preds = %45
  br label %83

83:                                               ; preds = %86, %82
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = call i32 @CoTaskMemFree(%struct.TYPE_12__* %93)
  br label %83

95:                                               ; preds = %83
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = call i32 @CoTaskMemFree(%struct.TYPE_12__* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = call i32 @CoTaskMemFree(%struct.TYPE_12__* %98)
  %100 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %100, i32* %4, align 4
  br label %147

101:                                              ; preds = %45
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = call i32 @strlenW(%struct.TYPE_12__* %119)
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = call i32 @CopyMemory(%struct.TYPE_12__* %107, %struct.TYPE_12__* %113, i32 %124)
  br label %126

126:                                              ; preds = %101
  %127 = load i32, i32* %10, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %41

129:                                              ; preds = %41
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i32* @IEnumRegFiltersImpl_Vtbl, i32** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  store %struct.TYPE_12__* %137, %struct.TYPE_12__** %139, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %144, %struct.TYPE_13__** %145, align 8
  %146 = load i32, i32* @S_OK, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %129, %95, %34, %19
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_12__*, i32, %struct.TYPE_13__**) #1

declare dso_local i8* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_12__*) #1

declare dso_local i32 @strlenW(%struct.TYPE_12__*) #1

declare dso_local i32 @CopyMemory(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
