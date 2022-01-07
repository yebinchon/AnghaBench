; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniReadSettingByName.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniReadSettingByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"IniReadSettingByName() SectionId = 0x%x\0A\00", align 1
@INI_SECTION_ITEM = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"IniReadSettingByName() Setting '%s' found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"IniReadSettingByName() Setting value = %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"IniReadSettingByName() Setting '%s' not found.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IniReadSettingByName(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @INI_SECTION_ITEM, align 4
  %22 = load i32, i32* @ListEntry, align 4
  %23 = call %struct.TYPE_6__* @CONTAINING_RECORD(i32 %20, i32 %21, i32 %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %11, align 8
  br label %24

24:                                               ; preds = %56, %4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = icmp ne %struct.TYPE_5__* %26, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @_stricmp(i32 %31, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %9, align 8
  %49 = sub i64 %48, 1
  %50 = call i32 @strncpy(i8* %44, i32 %47, i64 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %5, align 4
  br label %68

56:                                               ; preds = %30
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @INI_SECTION_ITEM, align 4
  %62 = load i32, i32* @ListEntry, align 4
  %63 = call %struct.TYPE_6__* @CONTAINING_RECORD(i32 %60, i32 %61, i32 %62)
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %11, align 8
  br label %24

64:                                               ; preds = %24
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %37
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i64 @_stricmp(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
