; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniAddSettingValueToSection.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniAddSettingValueToSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@TAG_INI_SECTION_ITEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TAG_INI_NAME = common dso_local global i32 0, align 4
@TAG_INI_VALUE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IniAddSettingValueToSection(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load i32, i32* @TAG_INI_SECTION_ITEM, align 4
  %14 = call i8* @FrLdrTempAlloc(i32 4, i32 %13)
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = call i32 @RtlZeroMemory(%struct.TYPE_6__* %21, i32 4)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @strlen(i32 %23)
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* @TAG_INI_NAME, align 4
  %27 = call i8* @FrLdrTempAlloc(i32 %25, i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_6__*
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %20
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = load i32, i32* @TAG_INI_SECTION_ITEM, align 4
  %38 = call i32 @FrLdrTempFree(%struct.TYPE_6__* %36, i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %4, align 4
  br label %84

40:                                               ; preds = %20
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @strlen(i32 %41)
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @TAG_INI_VALUE, align 4
  %45 = call i8* @FrLdrTempAlloc(i32 %43, i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_6__*
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %40
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* @TAG_INI_NAME, align 4
  %58 = call i32 @FrLdrTempFree(%struct.TYPE_6__* %56, i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = load i32, i32* @TAG_INI_SECTION_ITEM, align 4
  %61 = call i32 @FrLdrTempFree(%struct.TYPE_6__* %59, i32 %60)
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %4, align 4
  br label %84

63:                                               ; preds = %40
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @strcpy(%struct.TYPE_6__* %66, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @strcpy(%struct.TYPE_6__* %71, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = call i32 @InsertTailList(i32* %79, i32* %81)
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %63, %53, %35, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i8* @FrLdrTempAlloc(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @FrLdrTempFree(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @strcpy(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
