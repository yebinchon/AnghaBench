; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_settings.c_SaveAllSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_settings.c_SaveAllSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@MAXVALUE = common dso_local global i32 0, align 4
@IDC_SERVERCOMBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 102, i32 117, i32 108, i32 108, i32 32, i32 97, i32 100, i32 100, i32 114, i32 101, i32 115, i32 115, i32 0], align 4
@IDC_GEOSLIDER = common dso_local global i32 0, align 4
@TBM_GETPOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i32] [i32 115, i32 99, i32 114, i32 101, i32 101, i32 110, i32 32, i32 109, i32 111, i32 100, i32 101, i32 32, i32 105, i32 100, i32 0], align 4
@TBM_GETRANGEMAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i32] [i32 100, i32 101, i32 115, i32 107, i32 116, i32 111, i32 112, i32 119, i32 105, i32 100, i32 116, i32 104, i32 0], align 4
@.str.3 = private unnamed_addr constant [14 x i32] [i32 100, i32 101, i32 115, i32 107, i32 116, i32 111, i32 112, i32 104, i32 101, i32 105, i32 103, i32 104, i32 116, i32 0], align 4
@IDC_BPPCOMBO = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@CB_GETITEMDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i32] [i32 115, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 32, i32 98, i32 112, i32 112, i32 0], align 4
@IDC_NAMEEDIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i32] [i32 117, i32 115, i32 101, i32 114, i32 110, i32 97, i32 109, i32 101, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SaveAllSettings(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load i32, i32* @MAXVALUE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IDC_SERVERCOMBO, align 4
  %15 = load i32, i32* @MAXVALUE, align 4
  %16 = call i64 @GetDlgItemText(i32 %13, i32 %14, i32* %10, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @SetStringToSettings(i32 %21, i8* bitcast ([13 x i32]* @.str to i8*), i32* %10)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IDC_GEOSLIDER, align 4
  %28 = load i32, i32* @TBM_GETPOS, align 4
  %29 = call i32 @SendDlgItemMessage(i32 %26, i32 %27, i32 %28, i32 0, i32 0)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %75

32:                                               ; preds = %23
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IDC_GEOSLIDER, align 4
  %41 = load i32, i32* @TBM_GETRANGEMAX, align 4
  %42 = call i32 @SendDlgItemMessageW(i32 %39, i32 %40, i32 %41, i32 0, i32 0)
  %43 = icmp eq i32 %36, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 2, i32 1
  %46 = call i32 @SetIntegerToSettings(i32 %35, i8* bitcast ([15 x i32]* @.str.1 to i8*), i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SetIntegerToSettings(i32 %49, i8* bitcast ([13 x i32]* @.str.2 to i8*), i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SetIntegerToSettings(i32 %63, i8* bitcast ([14 x i32]* @.str.3 to i8*), i32 %73)
  br label %75

75:                                               ; preds = %32, %23
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IDC_BPPCOMBO, align 4
  %80 = load i32, i32* @CB_GETCURSEL, align 4
  %81 = call i32 @SendDlgItemMessage(i32 %78, i32 %79, i32 %80, i32 0, i32 0)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @CB_ERR, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %75
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IDC_BPPCOMBO, align 4
  %90 = load i32, i32* @CB_GETITEMDATA, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @SendDlgItemMessage(i32 %88, i32 %89, i32 %90, i32 %91, i32 0)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @CB_ERR, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %85
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @SetIntegerToSettings(i32 %99, i8* bitcast ([12 x i32]* @.str.4 to i8*), i32 %100)
  br label %102

102:                                              ; preds = %96, %85
  br label %103

103:                                              ; preds = %102, %75
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IDC_NAMEEDIT, align 4
  %108 = load i32, i32* @MAXVALUE, align 4
  %109 = call i64 @GetDlgItemText(i32 %106, i32 %107, i32* %10, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @SetStringToSettings(i32 %114, i8* bitcast ([9 x i32]* @.str.5 to i8*), i32* %10)
  br label %116

116:                                              ; preds = %111, %103
  %117 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetDlgItemText(i32, i32, i32*, i32) #2

declare dso_local i32 @SetStringToSettings(i32, i8*, i32*) #2

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #2

declare dso_local i32 @SetIntegerToSettings(i32, i8*, i32) #2

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
