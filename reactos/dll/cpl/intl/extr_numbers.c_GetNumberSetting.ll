; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_GetNumberSetting.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_numbers.c_GetNumberSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@MAX_NUMDECIMALSEP = common dso_local global i32 0, align 4
@MAX_NUMTHOUSANDSEP = common dso_local global i32 0, align 4
@MAX_NUMNEGATIVESIGN = common dso_local global i32 0, align 4
@MAX_NUMLISTSEP = common dso_local global i32 0, align 4
@IDC_NUMBERDSYMBOL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_NUMBERSNDIGDEC = common dso_local global i32 0, align 4
@IDC_NUMBERSDIGITGRSYM = common dso_local global i32 0, align 4
@IDC_NUMBERSDGROUPING = common dso_local global i32 0, align 4
@IDC_NUMBERSNSIGNSYM = common dso_local global i32 0, align 4
@IDC_NUMBERSNNUMFORMAT = common dso_local global i32 0, align 4
@IDC_NUMBERSDISPLEADZER = common dso_local global i32 0, align 4
@IDC_NUMBERSLSEP = common dso_local global i32 0, align 4
@IDC_NUMBERSMEASSYS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @GetNumberSetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetNumberSetting(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %17 = load i32, i32* @MAX_NUMDECIMALSEP, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* @MAX_NUMTHOUSANDSEP, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i32, i32* @MAX_NUMNEGATIVESIGN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %27 = load i32, i32* @MAX_NUMLISTSEP, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @IDC_NUMBERDSYMBOL, align 4
  %32 = load i32, i32* @MAX_NUMDECIMALSEP, align 4
  %33 = call i32 @GetSelectedComboBoxText(i32 %30, i32 %31, i32* %20, i32 %32)
  %34 = getelementptr inbounds i32, i32* %20, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %117

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @IDC_NUMBERSNDIGDEC, align 4
  %42 = call i32 @GetSelectedComboBoxIndex(i32 %40, i32 %41, i8** %11)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @IDC_NUMBERSDIGITGRSYM, align 4
  %45 = load i32, i32* @MAX_NUMTHOUSANDSEP, align 4
  %46 = call i32 @GetSelectedComboBoxText(i32 %43, i32 %44, i32* %23, i32 %45)
  %47 = getelementptr inbounds i32, i32* %23, i64 0
  %48 = load i32, i32* %47, align 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %117

52:                                               ; preds = %39
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IDC_NUMBERSDGROUPING, align 4
  %55 = call i32 @GetSelectedComboBoxIndex(i32 %53, i32 %54, i8** %12)
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @IDC_NUMBERSNSIGNSYM, align 4
  %58 = load i32, i32* @MAX_NUMNEGATIVESIGN, align 4
  %59 = call i32 @GetSelectedComboBoxText(i32 %56, i32 %57, i32* %26, i32 %58)
  %60 = getelementptr inbounds i32, i32* %26, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %117

65:                                               ; preds = %52
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @IDC_NUMBERSNNUMFORMAT, align 4
  %68 = call i32 @GetSelectedComboBoxIndex(i32 %66, i32 %67, i8** %13)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @IDC_NUMBERSDISPLEADZER, align 4
  %71 = call i32 @GetSelectedComboBoxIndex(i32 %69, i32 %70, i8** %14)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @IDC_NUMBERSLSEP, align 4
  %74 = load i32, i32* @MAX_NUMLISTSEP, align 4
  %75 = call i32 @GetSelectedComboBoxText(i32 %72, i32 %73, i32* %29, i32 %74)
  %76 = getelementptr inbounds i32, i32* %29, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %117

81:                                               ; preds = %65
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @IDC_NUMBERSMEASSYS, align 4
  %84 = call i32 @GetSelectedComboBoxIndex(i32 %82, i32 %83, i8** %15)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @wcscpy(i32 %87, i32* %20)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @wcscpy(i32 %91, i32* %23)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @wcscpy(i32 %95, i32* %26)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @wcscpy(i32 %99, i32* %29)
  %101 = load i8*, i8** %12, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %117

117:                                              ; preds = %81, %79, %63, %50, %37
  %118 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSelectedComboBoxText(i32, i32, i32*, i32) #2

declare dso_local i32 @GetSelectedComboBoxIndex(i32, i32, i8**) #2

declare dso_local i32 @wcscpy(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
