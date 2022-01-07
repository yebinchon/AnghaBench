; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniModifySettingValue.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniModifySettingValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }

@INI_SECTION_ITEM = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@TAG_INI_VALUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IniModifySettingValue(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @INI_SECTION_ITEM, align 4
  %19 = load i32, i32* @ListEntry, align 4
  %20 = call %struct.TYPE_6__* @CONTAINING_RECORD(i32 %17, i32 %18, i32 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %9, align 8
  br label %21

21:                                               ; preds = %35, %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = icmp ne %struct.TYPE_5__* %23, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @_stricmp(i32 %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %43

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @INI_SECTION_ITEM, align 4
  %41 = load i32, i32* @ListEntry, align 4
  %42 = call %struct.TYPE_6__* @CONTAINING_RECORD(i32 %39, i32 %40, i32 %41)
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %9, align 8
  br label %21

43:                                               ; preds = %34, %21
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = icmp eq %struct.TYPE_5__* %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @IniAddSettingValueToSection(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %79

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @strlen(i32 %55)
  %57 = add nsw i64 %56, 1
  %58 = load i32, i32* @TAG_INI_VALUE, align 4
  %59 = call i64 @FrLdrTempAlloc(i64 %57, i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %4, align 4
  br label %79

64:                                               ; preds = %54
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @TAG_INI_VALUE, align 4
  %69 = call i32 @FrLdrTempFree(i64 %67, i32 %68)
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @strcpy(i64 %75, i32 %76)
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %64, %62, %49
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_6__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i64 @_stricmp(i32, i32) #1

declare dso_local i32 @IniAddSettingValueToSection(i32, i32, i32) #1

declare dso_local i64 @FrLdrTempAlloc(i64, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @FrLdrTempFree(i64, i32) #1

declare dso_local i32 @strcpy(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
