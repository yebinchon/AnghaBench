; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_initialize_purpose_selection.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_initialize_purpose_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@IDC_MGR_PURPOSE_SELECTION = common dso_local global i32 0, align 4
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IDS_PURPOSE_ALL = common dso_local global i32 0, align 4
@CB_INSERTSTRING = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@PurposeFilterShowAll = common dso_local global i64 0, align 8
@IDS_PURPOSE_ADVANCED = common dso_local global i32 0, align 4
@PurposeFilterShowAdvanced = common dso_local global i64 0, align 8
@CB_SETCURSEL = common dso_local global i32 0, align 4
@CRYPT_OID_INFO_OID_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @initialize_purpose_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_purpose_selection(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @IDC_MGR_PURPOSE_SELECTION, align 4
  %13 = call i32 @GetDlgItem(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @MAX_STRING_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* @hInstance, align 4
  %19 = load i32, i32* @IDS_PURPOSE_ALL, align 4
  %20 = call i32 @ARRAY_SIZE(i32* %17)
  %21 = call i32 @LoadStringW(i32 %18, i32 %19, i32* %17, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @CB_INSERTSTRING, align 4
  %24 = ptrtoint i32* %17 to i32
  %25 = call i32 @SendMessageW(i32 %22, i32 %23, i32 -1, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @CB_SETITEMDATA, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* @PurposeFilterShowAll, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @SendMessageW(i32 %26, i32 %27, i32 %28, i32 %30)
  %32 = load i32, i32* @hInstance, align 4
  %33 = load i32, i32* @IDS_PURPOSE_ADVANCED, align 4
  %34 = call i32 @ARRAY_SIZE(i32* %17)
  %35 = call i32 @LoadStringW(i32 %32, i32 %33, i32* %17, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @CB_INSERTSTRING, align 4
  %38 = ptrtoint i32* %17 to i32
  %39 = call i32 @SendMessageW(i32 %36, i32 %37, i32 -1, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @CB_SETITEMDATA, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i64, i64* @PurposeFilterShowAdvanced, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @SendMessageW(i32 %40, i32 %41, i32 %42, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @CB_SETCURSEL, align 4
  %48 = call i32 @SendMessageW(i32 %46, i32 %47, i32 0, i32 0)
  %49 = call i64* (...) @get_cert_mgr_usages()
  store i64* %49, i64** %6, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %110

51:                                               ; preds = %1
  %52 = load i64*, i64** %6, align 8
  store i64* %52, i64** %8, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = call i64* @strchr(i64* %53, i8 signext 44)
  store i64* %54, i64** %9, align 8
  br label %55

55:                                               ; preds = %104, %51
  %56 = load i64*, i64** %8, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i1 [ false, %55 ], [ %61, %58 ]
  br i1 %63, label %64, label %106

64:                                               ; preds = %62
  %65 = load i64*, i64** %9, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i64*, i64** %9, align 8
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, i32* @CRYPT_OID_INFO_OID_KEY, align 4
  %71 = load i64*, i64** %8, align 8
  %72 = call %struct.TYPE_3__* @CryptFindOIDInfo(i32 %70, i64* %71, i32 0)
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %10, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @CB_INSERTSTRING, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @SendMessageW(i32 %75, i32 %76, i32 0, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @CB_SETITEMDATA, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %86 = ptrtoint %struct.TYPE_3__* %85 to i32
  %87 = call i32 @SendMessageW(i32 %82, i32 %83, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %74, %69
  br label %89

89:                                               ; preds = %88
  %90 = load i64*, i64** %9, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64*, i64** %9, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  br label %96

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %92
  %97 = phi i64* [ %94, %92 ], [ null, %95 ]
  store i64* %97, i64** %8, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i64*, i64** %8, align 8
  %102 = call i64* @strchr(i64* %101, i8 signext 44)
  br label %104

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %100
  %105 = phi i64* [ %102, %100 ], [ null, %103 ]
  store i64* %105, i64** %9, align 8
  br label %55

106:                                              ; preds = %62
  %107 = call i32 (...) @GetProcessHeap()
  %108 = load i64*, i64** %6, align 8
  %109 = call i32 @HeapFree(i32 %107, i32 0, i64* %108)
  br label %110

110:                                              ; preds = %106, %1
  %111 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %111)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64* @get_cert_mgr_usages(...) #1

declare dso_local i64* @strchr(i64*, i8 signext) #1

declare dso_local %struct.TYPE_3__* @CryptFindOIDInfo(i32, i64*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @GetProcessHeap(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
