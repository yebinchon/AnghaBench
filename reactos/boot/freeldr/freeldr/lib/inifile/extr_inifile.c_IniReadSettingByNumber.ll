; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniReadSettingByNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_inifile.c_IniReadSettingByNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c".001 NameSize = %d ValueSize = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"IniReadSettingByNumber() SectionId = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"IniReadSettingByNumber() Setting number %d not found.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"IniReadSettingByNumber() Setting number %d found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"IniReadSettingByNumber() Setting name = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"IniReadSettingByNumber() Setting value = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"1 NameSize = %d ValueSize = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"2 NameSize = %d ValueSize = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"3 NameSize = %d ValueSize = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"4 NameSize = %d ValueSize = %d\0A\00", align 1
@DPRINT_INIFILE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IniReadSettingByNumber(i32 %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %13, align 8
  %17 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16)
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %9, align 8
  %23 = call %struct.TYPE_3__* @IniGetSettingByNumber(i32 %21, i64 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %14, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = load i64, i64* %9, align 8
  %28 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %7, align 4
  br label %86

30:                                               ; preds = %6
  %31 = load i64, i64* %9, align 8
  %32 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %46, i64 %47)
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %11, align 8
  %54 = sub i64 %53, 1
  %55 = call i32 @strncpy(i8* %49, i32 %52, i64 %54)
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = sub i64 %57, 1
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %60, i64 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %13, align 8
  %68 = sub i64 %67, 1
  %69 = call i32 @strncpy(i8* %63, i32 %66, i64 %68)
  %70 = load i8*, i8** %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = sub i64 %71, 1
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %74, i64 %75)
  %77 = load i32, i32* @DPRINT_INIFILE, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @DbgDumpBuffer(i32 %77, i8* %78, i64 %79)
  %81 = load i32, i32* @DPRINT_INIFILE, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @DbgDumpBuffer(i32 %81, i8* %82, i64 %83)
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %30, %26
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @TRACE(i8*, i64, ...) #1

declare dso_local %struct.TYPE_3__* @IniGetSettingByNumber(i32, i64) #1

declare dso_local i32 @strncpy(i8*, i32, i64) #1

declare dso_local i32 @DbgDumpBuffer(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
