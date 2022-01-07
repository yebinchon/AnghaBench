; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_systempage.c_LoadSystemIni.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig/extr_systempage.c_LoadSystemIni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 92, i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 46, i32 105, i32 110, i32 105, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 114, i32 116, i32 0], align 4
@IDC_SYSTEM_TREE = common dso_local global i32 0, align 4
@TVI_LAST = common dso_local global i32 0, align 4
@TVIF_TEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @LoadSystemIni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadSystemIni(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @BUFFER_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i32* null, i32** %9, align 8
  %19 = mul nuw i64 4, %16
  %20 = trunc i64 %19 to i32
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @StringCbCopyW(i32* %18, i32 %20, i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %99

28:                                               ; preds = %2
  %29 = mul nuw i64 4, %16
  %30 = trunc i64 %29 to i32
  %31 = call i32 @StringCbCatW(i32* %18, i32 %30, i8* bitcast ([12 x i32]* @.str to i8*))
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %99

37:                                               ; preds = %28
  %38 = call i32* @_wfopen(i32* %18, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %99

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @IDC_SYSTEM_TREE, align 4
  %46 = call i32 @GetDlgItem(i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %94, %43
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @feof(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %95

52:                                               ; preds = %47
  %53 = load i32, i32* @BUFFER_SIZE, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call i64 @fgetws(i32* %18, i32 %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %52
  %58 = call i32 @wcslen(i32* %18)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %18, i64 %63
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %18, i64 %67
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* @TVI_LAST, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* @TVIF_TEXT, align 4
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32* %18, i32** %75, align 8
  %76 = getelementptr inbounds i32, i32* %18, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = icmp eq i32 %77, 59
  br i1 %78, label %83, label %79

79:                                               ; preds = %61
  %80 = getelementptr inbounds i32, i32* %18, i64 0
  %81 = load i32, i32* %80, align 16
  %82 = icmp eq i32 %81, 91
  br i1 %82, label %83, label %87

83:                                               ; preds = %79, %61
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32* @TreeView_InsertItem(i32 %85, %struct.TYPE_5__* %12)
  store i32* %86, i32** %9, align 8
  br label %92

87:                                               ; preds = %79
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32* %88, i32** %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32* @TreeView_InsertItem(i32 %90, %struct.TYPE_5__* %12)
  br label %92

92:                                               ; preds = %87, %83
  br label %93

93:                                               ; preds = %92, %57
  br label %94

94:                                               ; preds = %93, %52
  br label %47

95:                                               ; preds = %47
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @fclose(i32* %96)
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %99

99:                                               ; preds = %95, %41, %35, %26
  %100 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StringCbCopyW(i32*, i32, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @StringCbCatW(i32*, i32, i8*) #2

declare dso_local i32* @_wfopen(i32*, i8*) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i64 @fgetws(i32*, i32, i32*) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i32* @TreeView_InsertItem(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
