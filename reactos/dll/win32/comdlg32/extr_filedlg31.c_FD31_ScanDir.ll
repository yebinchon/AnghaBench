; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_ScanDir.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_ScanDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@BUFFILE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Trying to change to %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@IDC_WAIT = common dso_local global i64 0, align 8
@lst1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Using filter %s\0A\00", align 1
@LB_RESETCONTENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Using file spec %s\0A\00", align 1
@LB_DIR = common dso_local global i32 0, align 4
@FILE_star = common dso_local global i32 0, align 4
@lst2 = common dso_local global i32 0, align 4
@stc1 = common dso_local global i32 0, align 4
@DDL_EXCLUSIVE = common dso_local global i32 0, align 4
@DDL_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i8*)* @FD31_ScanDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FD31_ScanDir(%struct.TYPE_3__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @BUFFILE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @debugstr_w(i8* %22)
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @SetCurrentDirectoryW(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %127

36:                                               ; preds = %30, %3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 1
  %47 = call i32 @FD31_GetFileType(i32 %39, i32 %42, i64 %46)
  %48 = load i32, i32* @BUFFILE, align 4
  %49 = call i32 @lstrcpynW(i8* %20, i32 %47, i32 %48)
  %50 = load i64, i64* @IDC_WAIT, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @LoadCursorA(i32 0, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @SetCursor(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* @lst1, align 4
  %57 = call i64 @GetDlgItem(i64 %55, i32 %56)
  store i64 %57, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %108

59:                                               ; preds = %36
  store i8* %20, i8** %16, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = call i32 @debugstr_w(i8* %60)
  %62 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* @LB_RESETCONTENT, align 4
  %65 = call i32 @SendMessageW(i64 %63, i32 %64, i32 0, i32 0)
  br label %66

66:                                               ; preds = %105, %59
  %67 = load i8*, i8** %16, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %107

69:                                               ; preds = %66
  %70 = load i8*, i8** %16, align 8
  %71 = call i8* @wcschr(i8* %70, i8 signext 59)
  store i8* %71, i8** %15, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i8*, i8** %15, align 8
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %74, %69
  br label %77

77:                                               ; preds = %82, %76
  %78 = load i8*, i8** %16, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %16, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %16, align 8
  br label %77

85:                                               ; preds = %77
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 @debugstr_w(i8* %86)
  %88 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* %10, align 8
  %90 = load i32, i32* @LB_DIR, align 4
  %91 = load i8*, i8** %16, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = call i32 @SendMessageW(i64 %89, i32 %90, i32 0, i32 %92)
  %94 = load i8*, i8** %15, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i8*, i8** %15, align 8
  store i8 59, i8* %97, align 1
  br label %98

98:                                               ; preds = %96, %85
  %99 = load i8*, i8** %15, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** %15, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  br label %105

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %101
  %106 = phi i8* [ %103, %101 ], [ null, %104 ]
  store i8* %106, i8** %16, align 8
  br label %66

107:                                              ; preds = %66
  br label %108

108:                                              ; preds = %107, %36
  %109 = load i32, i32* @FILE_star, align 4
  %110 = call i32 @lstrcpyW(i8* %20, i32 %109)
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* @lst2, align 4
  %113 = call i64 @GetDlgItem(i64 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load i64, i64* %6, align 8
  %117 = load i32, i32* @lst2, align 4
  %118 = load i32, i32* @stc1, align 4
  %119 = load i32, i32* @DDL_EXCLUSIVE, align 4
  %120 = load i32, i32* @DDL_DIRECTORY, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @DlgDirListW(i64 %116, i8* %20, i32 %117, i32 %118, i32 %121)
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %115, %108
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @SetCursor(i32 %124)
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %127

127:                                              ; preds = %123, %34
  %128 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @SetCurrentDirectoryW(i8*) #2

declare dso_local i32 @lstrcpynW(i8*, i32, i32) #2

declare dso_local i32 @FD31_GetFileType(i32, i32, i64) #2

declare dso_local i32 @LoadCursorA(i32, i32) #2

declare dso_local i32 @SetCursor(i32) #2

declare dso_local i64 @GetDlgItem(i64, i32) #2

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #2

declare dso_local i8* @wcschr(i8*, i8 signext) #2

declare dso_local i32 @lstrcpyW(i8*, i32) #2

declare dso_local i32 @DlgDirListW(i64, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
