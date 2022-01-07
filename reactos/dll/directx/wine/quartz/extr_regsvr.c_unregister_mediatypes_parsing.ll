; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_unregister_mediatypes_parsing.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_unregister_mediatypes_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_mediatype_parsing = type { i64, i64 }

@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@mediatype_name = common dso_local global i32* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_mediatype_parsing*)* @unregister_mediatypes_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_mediatypes_parsing(%struct.regsvr_mediatype_parsing* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regsvr_mediatype_parsing*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [39 x i32], align 16
  store %struct.regsvr_mediatype_parsing* %0, %struct.regsvr_mediatype_parsing** %3, align 8
  %8 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %9 = load i32*, i32** @mediatype_name, align 8
  %10 = load i32, i32* @KEY_READ, align 4
  %11 = load i32, i32* @KEY_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @RegOpenKeyExW(i32 %8, i32* %9, i32 0, i32 %12, i32* %5)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %2, align 4
  br label %101

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @HRESULT_FROM_WIN32(i64 %24)
  store i32 %25, i32* %2, align 4
  br label %101

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %85, %26
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %33 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ false, %27 ], [ %35, %31 ]
  br i1 %37, label %38, label %88

38:                                               ; preds = %36
  %39 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %40 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %43 = call i32 @StringFromGUID2(i64 %41, i32* %42, i32 39)
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %46 = load i32, i32* @KEY_READ, align 4
  %47 = load i32, i32* @KEY_WRITE, align 4
  %48 = or i32 %46, %47
  %49 = call i64 @RegOpenKeyExW(i32 %44, i32* %45, i32 0, i32 %48, i32* %6)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %54, i64* %4, align 8
  br label %85

55:                                               ; preds = %38
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @ERROR_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %88

60:                                               ; preds = %55
  %61 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %62 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %65 = call i32 @StringFromGUID2(i64 %63, i32* %64, i32 39)
  %66 = load i32, i32* %6, align 4
  %67 = getelementptr inbounds [39 x i32], [39 x i32]* %7, i64 0, i64 0
  %68 = call i64 @RegDeleteTreeW(i32 %66, i32* %67)
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %72, %60
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @RegDeleteKeyW(i32 %75, i32 0)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %74
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @RegCloseKey(i32 %83)
  br label %85

85:                                               ; preds = %82, %53
  %86 = load %struct.regsvr_mediatype_parsing*, %struct.regsvr_mediatype_parsing** %3, align 8
  %87 = getelementptr inbounds %struct.regsvr_mediatype_parsing, %struct.regsvr_mediatype_parsing* %86, i32 1
  store %struct.regsvr_mediatype_parsing* %87, %struct.regsvr_mediatype_parsing** %3, align 8
  br label %27

88:                                               ; preds = %59, %36
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @RegCloseKey(i32 %89)
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* @ERROR_SUCCESS, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @HRESULT_FROM_WIN32(i64 %95)
  br label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @S_OK, align 4
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i32 [ %96, %94 ], [ %98, %97 ]
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %23, %17
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i32 @StringFromGUID2(i64, i32*, i32) #1

declare dso_local i64 @RegDeleteTreeW(i32, i32*) #1

declare dso_local i64 @RegDeleteKeyW(i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
