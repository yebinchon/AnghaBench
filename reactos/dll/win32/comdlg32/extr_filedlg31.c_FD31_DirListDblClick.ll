; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_DirListDblClick.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_DirListDblClick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@BUFFILE = common dso_local global i32 0, align 4
@lst2 = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BUFFILEALLOC = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@FILE_bslash = common dso_local global i32 0, align 4
@CD_LBSELCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @FD31_DirListDblClick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FD31_DirListDblClick(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @BUFFILE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @lst2, align 4
  %19 = load i32, i32* @LB_GETCURSEL, align 4
  %20 = call i64 @SendDlgItemMessageW(i32 %17, i32 %18, i32 %19, i64 0, i32 0)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @LB_ERR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %79

26:                                               ; preds = %1
  %27 = load i32, i32* @BUFFILEALLOC, align 4
  %28 = call i8* @heap_alloc(i32 %27)
  store i8* %28, i8** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @lst2, align 4
  %31 = load i32, i32* @LB_GETTEXT, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = call i64 @SendDlgItemMessageW(i32 %29, i32 %30, i32 %31, i64 %32, i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @lstrcpyW(i8* %16, i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @heap_free(i8* %38)
  %40 = getelementptr inbounds i8, i8* %16, i64 0
  %41 = load i8, i8* %40, align 16
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 91
  br i1 %43, label %44, label %51

44:                                               ; preds = %26
  %45 = call i32 @lstrlenW(i8* %16)
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %16, i64 %47
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds i8, i8* %16, i64 1
  %50 = call i32 @lstrcpyW(i8* %16, i8* %49)
  br label %51

51:                                               ; preds = %44, %26
  %52 = load i32, i32* @FILE_bslash, align 4
  %53 = call i32 @lstrcatW(i8* %16, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @FD31_ScanDir(i32 %56, i32 %57, i8* %16)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %51
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @lst2, align 4
  %69 = load i64, i64* %4, align 8
  %70 = load i32, i32* @CD_LBSELCHANGE, align 4
  %71 = call i32 @MAKELONG(i64 %69, i32 %70)
  %72 = call i64 @FD31_CallWindowProc(%struct.TYPE_4__* %64, i32 %67, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %79

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %51
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %77, %74, %24
  %80 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i64, i32) #2

declare dso_local i8* @heap_alloc(i32) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @heap_free(i8*) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @lstrcatW(i8*, i32) #2

declare dso_local i32 @FD31_ScanDir(i32, i32, i8*) #2

declare dso_local i64 @FD31_CallWindowProc(%struct.TYPE_4__*, i32, i32, i32) #2

declare dso_local i32 @MAKELONG(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
