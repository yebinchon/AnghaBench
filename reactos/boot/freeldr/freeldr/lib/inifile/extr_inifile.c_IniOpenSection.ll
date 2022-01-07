; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniOpenSection.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniOpenSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }

@.str = private unnamed_addr constant [35 x i8] c"IniOpenSection() SectionName = %s\0A\00", align 1
@IniFileSectionListHead = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@INI_SECTION = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"IniOpenSection() Found it! SectionId = 0x%x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"IniOpenSection() Section not found.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IniOpenSection(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @IniFileSectionListHead, i32 0, i32 0), align 4
  %10 = load i32, i32* @INI_SECTION, align 4
  %11 = load i32, i32* @ListEntry, align 4
  %12 = call %struct.TYPE_4__* @CONTAINING_RECORD(i32 %9, i32 %10, i32 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  br label %13

13:                                               ; preds = %35, %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = icmp ne %struct.TYPE_5__* %15, @IniFileSectionListHead
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @_stricmp(i32 %18, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load i64*, i64** %5, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = ptrtoint %struct.TYPE_4__* %28 to i64
  %30 = load i64*, i64** %5, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i64*, i64** %5, align 8
  %33 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64* %32)
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %17
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @INI_SECTION, align 4
  %41 = load i32, i32* @ListEntry, align 4
  %42 = call %struct.TYPE_4__* @CONTAINING_RECORD(i32 %39, i32 %40, i32 %41)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %6, align 8
  br label %13

43:                                               ; preds = %13
  %44 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %31
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_4__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i64 @_stricmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
