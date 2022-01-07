; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_unregister_coclasses.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_unregister_coclasses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_coclass = type { i64, i64, i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_coclass*)* @unregister_coclasses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_coclasses(%struct.regsvr_coclass* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regsvr_coclass*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [39 x i32], align 16
  store %struct.regsvr_coclass* %0, %struct.regsvr_coclass** %3, align 8
  %7 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %9 = load i32, i32* @clsid_keyname, align 4
  %10 = load i32, i32* @KEY_READ, align 4
  %11 = load i32, i32* @KEY_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @RegOpenKeyExW(i32 %8, i32 %9, i32 0, i32 %12, i32* %5)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %2, align 4
  br label %118

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %107

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %100, %24
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %3, align 8
  %31 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %103

36:                                               ; preds = %34
  %37 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %3, align 8
  %38 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %41 = call i32 @StringFromGUID2(i64 %39, i32* %40, i32 39)
  %42 = load i32, i32* %5, align 4
  %43 = getelementptr inbounds [39 x i32], [39 x i32]* %6, i64 0, i64 0
  %44 = call i64 @RegDeleteTreeW(i32 %42, i32* %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %48, %36
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %104

55:                                               ; preds = %50
  %56 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %3, align 8
  %57 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %62 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %3, align 8
  %63 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @RegDeleteTreeA(i32 %61, i64 %64)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %69, %60
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %104

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %3, align 8
  %79 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %77
  %83 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %84 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %3, align 8
  %85 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @RegDeleteTreeA(i32 %83, i64 %86)
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %91, %82
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @ERROR_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %104

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %77
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %3, align 8
  %102 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %101, i32 1
  store %struct.regsvr_coclass* %102, %struct.regsvr_coclass** %3, align 8
  br label %25

103:                                              ; preds = %34
  br label %104

104:                                              ; preds = %103, %97, %75, %54
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @RegCloseKey(i32 %105)
  br label %107

107:                                              ; preds = %104, %23
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* @ERROR_SUCCESS, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @HRESULT_FROM_WIN32(i64 %112)
  br label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @S_OK, align 4
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi i32 [ %113, %111 ], [ %115, %114 ]
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %17
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @StringFromGUID2(i64, i32*, i32) #1

declare dso_local i64 @RegDeleteTreeW(i32, i32*) #1

declare dso_local i64 @RegDeleteTreeA(i32, i64) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
