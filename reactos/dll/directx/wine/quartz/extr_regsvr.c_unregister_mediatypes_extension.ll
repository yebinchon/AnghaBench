; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_unregister_mediatypes_extension.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_unregister_mediatypes_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_mediatype_extension = type { i32, i64 }

@HKEY_CLASSES_ROOT = common dso_local global i32* null, align 8
@mediatype_name = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@extensions_keyname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_mediatype_extension*)* @unregister_mediatypes_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_mediatypes_extension(%struct.regsvr_mediatype_extension* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regsvr_mediatype_extension*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.regsvr_mediatype_extension* %0, %struct.regsvr_mediatype_extension** %3, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32*, i32** @HKEY_CLASSES_ROOT, align 8
  %8 = load i32, i32* @mediatype_name, align 4
  %9 = load i32, i32* @KEY_READ, align 4
  %10 = load i32, i32* @KEY_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @RegOpenKeyExW(i32* %7, i32 %8, i32 0, i32 %11, i32** %5)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @S_OK, align 4
  store i32 %17, i32* %2, align 4
  br label %89

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @HRESULT_FROM_WIN32(i64 %23)
  store i32 %24, i32* %2, align 4
  br label %89

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @extensions_keyname, align 4
  %28 = load i32, i32* @KEY_READ, align 4
  %29 = load i32, i32* @KEY_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @RegOpenKeyExW(i32* %26, i32 %27, i32 0, i32 %30, i32** %6)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %36, i64* %4, align 8
  br label %70

37:                                               ; preds = %25
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %65, %41
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.regsvr_mediatype_extension*, %struct.regsvr_mediatype_extension** %3, align 8
  %48 = getelementptr inbounds %struct.regsvr_mediatype_extension, %struct.regsvr_mediatype_extension* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %53, label %68

53:                                               ; preds = %51
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.regsvr_mediatype_extension*, %struct.regsvr_mediatype_extension** %3, align 8
  %56 = getelementptr inbounds %struct.regsvr_mediatype_extension, %struct.regsvr_mediatype_extension* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @RegDeleteTreeA(i32* %54, i32 %57)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %53
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.regsvr_mediatype_extension*, %struct.regsvr_mediatype_extension** %3, align 8
  %67 = getelementptr inbounds %struct.regsvr_mediatype_extension, %struct.regsvr_mediatype_extension* %66, i32 1
  store %struct.regsvr_mediatype_extension* %67, %struct.regsvr_mediatype_extension** %3, align 8
  br label %42

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %37
  br label %70

70:                                               ; preds = %69, %35
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @RegCloseKey(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @RegCloseKey(i32* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @ERROR_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @HRESULT_FROM_WIN32(i64 %83)
  br label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @S_OK, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i32 [ %84, %82 ], [ %86, %85 ]
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %22, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @RegOpenKeyExW(i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i64 @RegDeleteTreeA(i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
