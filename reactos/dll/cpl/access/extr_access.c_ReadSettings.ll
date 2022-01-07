; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/access/extr_access.c_ReadSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/access/extr_access.c_ReadSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_5__, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@SPI_GETSTICKYKEYS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@SPI_GETFILTERKEYS = common dso_local global i32 0, align 4
@SPI_GETTOGGLEKEYS = common dso_local global i32 0, align 4
@SPI_GETKEYBOARDPREF = common dso_local global i32 0, align 4
@SPI_GETHIGHCONTRAST = common dso_local global i32 0, align 4
@SPI_GETCARETWIDTH = common dso_local global i32 0, align 4
@SPI_GETSOUNDSENTRY = common dso_local global i32 0, align 4
@SPI_GETSHOWSOUNDS = common dso_local global i32 0, align 4
@SPI_GETMOUSEKEYS = common dso_local global i32 0, align 4
@SPI_GETACCESSTIMEOUT = common dso_local global i32 0, align 4
@SPI_GETSERIALKEYS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Control Panel\\Accessibility\00", align 1
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_EXECUTE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Warning Sounds\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Sound On Activation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*)* @ReadSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ReadSettings(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 15
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 4, i32* %10, align 4
  %11 = load i32, i32* @SPI_GETSTICKYKEYS, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 15
  %14 = call i32 @SystemParametersInfo(i32 %11, i32 4, %struct.TYPE_5__* %13, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** %2, align 8
  br label %157

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 14
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = load i32, i32* @SPI_GETFILTERKEYS, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 14
  %25 = call i32 @SystemParametersInfo(i32 %22, i32 4, %struct.TYPE_5__* %24, i32 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i8*, i8** @FALSE, align 8
  store i8* %28, i8** %2, align 8
  br label %157

29:                                               ; preds = %18
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 4
  %33 = load i32, i32* @SPI_GETTOGGLEKEYS, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 13
  %36 = call i32 @SystemParametersInfo(i32 %33, i32 4, %struct.TYPE_5__* %35, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = load i8*, i8** @FALSE, align 8
  store i8* %39, i8** %2, align 8
  br label %157

40:                                               ; preds = %29
  %41 = load i32, i32* @SPI_GETKEYBOARDPREF, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 12
  %44 = call i32 @SystemParametersInfo(i32 %41, i32 0, %struct.TYPE_5__* %43, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** @FALSE, align 8
  store i8* %47, i8** %2, align 8
  br label %157

48:                                               ; preds = %40
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 11
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 4, i32* %51, align 4
  %52 = load i32, i32* @SPI_GETHIGHCONTRAST, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 11
  %55 = call i32 @SystemParametersInfo(i32 %52, i32 4, %struct.TYPE_5__* %54, i32 0)
  %56 = load i32, i32* @SPI_GETCARETWIDTH, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 10
  %59 = call i32 @SystemParametersInfo(i32 %56, i32 0, %struct.TYPE_5__* %58, i32 0)
  %60 = call i32 (...) @GetCaretBlinkTime()
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 4, i32* %65, align 8
  %66 = load i32, i32* @SPI_GETSOUNDSENTRY, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 8
  %69 = call i32 @SystemParametersInfo(i32 %66, i32 4, %struct.TYPE_5__* %68, i32 0)
  %70 = load i32, i32* @SPI_GETSHOWSOUNDS, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 7
  %73 = call i32 @SystemParametersInfo(i32 %70, i32 0, %struct.TYPE_5__* %72, i32 0)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 4, i32* %76, align 8
  %77 = load i32, i32* @SPI_GETMOUSEKEYS, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  %80 = call i32 @SystemParametersInfo(i32 %77, i32 4, %struct.TYPE_5__* %79, i32 0)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 4, i32* %83, align 4
  %84 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  %87 = call i32 @SystemParametersInfo(i32 %84, i32 4, %struct.TYPE_5__* %86, i32 0)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 4, i32* %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @SPI_GETSERIALKEYS, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = call i32 @SystemParametersInfo(i32 %103, i32 4, %struct.TYPE_5__* %105, i32 0)
  %107 = load i8*, i8** @TRUE, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @TRUE, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %114 = call i32 @_T(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %115 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %116 = load i32, i32* @KEY_EXECUTE, align 4
  %117 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %118 = or i32 %116, %117
  %119 = call i64 @RegCreateKeyEx(i32 %113, i32 %114, i32 0, i32* null, i32 %115, i32 %118, i32* null, i32* %6, i32* %4)
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @ERROR_SUCCESS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %48
  %124 = load i8*, i8** @TRUE, align 8
  store i8* %124, i8** %2, align 8
  br label %157

125:                                              ; preds = %48
  store i32 8, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = ptrtoint i8** %129 to i32
  %131 = call i64 @RegQueryValueEx(i32 %126, i32 %127, i32* null, i32* null, i32 %130, i32* %5)
  store i64 %131, i64* %7, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* @ERROR_SUCCESS, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %125
  %136 = load i8*, i8** @TRUE, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %135, %125
  store i32 8, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @_T(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = ptrtoint i8** %143 to i32
  %145 = call i64 @RegQueryValueEx(i32 %140, i32 %141, i32* null, i32* null, i32 %144, i32* %5)
  store i64 %145, i64* %7, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* @ERROR_SUCCESS, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load i8*, i8** @TRUE, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %139
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @RegCloseKey(i32 %154)
  %156 = load i8*, i8** @TRUE, align 8
  store i8* %156, i8** %2, align 8
  br label %157

157:                                              ; preds = %153, %123, %46, %38, %27, %16
  %158 = load i8*, i8** %2, align 8
  ret i8* %158
}

declare dso_local i32 @SystemParametersInfo(i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @GetCaretBlinkTime(...) #1

declare dso_local i64 @RegCreateKeyEx(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @RegQueryValueEx(i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
