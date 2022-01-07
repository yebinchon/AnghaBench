; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_ApplyChanges.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_ApplyChanges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IDC_SOUND_SCHEME = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CB_GETITEMDATA = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"AppEvents\\Schemes\00", align 1
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"AppEvents\\Schemes\\Apps\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s\\%s\\.Current\00", align 1
@REG_EXPAND_SZ = common dso_local global i32 0, align 4
@DWLP_MSGRESULT = common dso_local global i32 0, align 4
@PSNRET_NOERROR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ApplyChanges(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca [100 x i32], align 16
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IDC_SOUND_SCHEME, align 4
  %13 = call i32 @GetDlgItem(i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @CB_GETCURSEL, align 4
  %16 = call i64 @SendMessage(i32 %14, i32 %15, i32 0, i32 0)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @CB_ERR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %128

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @CB_GETITEMDATA, align 4
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i64 @SendMessage(i32 %23, i32 %24, i32 %26, i32 0)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @CB_ERR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %128

33:                                               ; preds = %22
  %34 = load i64, i64* %6, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %7, align 8
  %36 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %37 = call i32* @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @KEY_WRITE, align 4
  %39 = call i64 @RegOpenKeyEx(i32 %36, i32* %37, i32 0, i32 %38, i32* %4)
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %2, align 4
  br label %128

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @REG_SZ, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @_tcslen(i64 %53)
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @RegSetValueEx(i32 %45, i32* null, i32 0, i32 %46, i32 %50, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @RegCloseKey(i32 %60)
  %62 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %63 = call i32* @_T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @KEY_WRITE, align 4
  %65 = call i64 @RegOpenKeyEx(i32 %62, i32* %63, i32 0, i32 %64, i32* %4)
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %44
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %2, align 4
  br label %128

70:                                               ; preds = %44
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %9, align 8
  br label %74

74:                                               ; preds = %115, %70
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = icmp ne %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %119

77:                                               ; preds = %74
  %78 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 0
  %79 = call i32* @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @_stprintf(i32* %78, i32* %79, i32 %84, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 0
  %93 = load i32, i32* @KEY_WRITE, align 4
  %94 = call i64 @RegOpenKeyEx(i32 %91, i32* %92, i32 0, i32 %93, i32* %5)
  %95 = load i64, i64* @ERROR_SUCCESS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %77
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @REG_EXPAND_SZ, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @_tcslen(i64 %106)
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32 @RegSetValueEx(i32 %98, i32* null, i32 0, i32 %99, i32 %103, i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @RegCloseKey(i32 %113)
  br label %115

115:                                              ; preds = %97, %77
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %9, align 8
  br label %74

119:                                              ; preds = %74
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @RegCloseKey(i32 %120)
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @DWLP_MSGRESULT, align 4
  %124 = load i64, i64* @PSNRET_NOERROR, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @SetWindowLongPtr(i32 %122, i32 %123, i32 %125)
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %119, %68, %42, %31, %20
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i64 @RegOpenKeyEx(i32, i32*, i32, i32, i32*) #1

declare dso_local i32* @_T(i8*) #1

declare dso_local i32 @RegSetValueEx(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_tcslen(i64) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @_stprintf(i32*, i32*, i32, i32) #1

declare dso_local i32 @SetWindowLongPtr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
