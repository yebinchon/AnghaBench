; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_DiskChange.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_DiskChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@BUFFILE = common dso_local global i32 0, align 4
@cmb2 = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@BUFFILEALLOC = common dso_local global i32 0, align 4
@CB_GETLBTEXT = common dso_local global i32 0, align 4
@FILE_specc = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @FD31_DiskChange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FD31_DiskChange(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @BUFFILE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @FD31_StripEditControl(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @cmb2, align 4
  %21 = load i32, i32* @CB_GETCURSEL, align 4
  %22 = call i64 @SendDlgItemMessageW(i32 %19, i32 %20, i32 %21, i64 0, i64 0)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @LB_ERR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %49

27:                                               ; preds = %1
  %28 = load i32, i32* @BUFFILEALLOC, align 4
  %29 = call i32* @heap_alloc(i32 %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @cmb2, align 4
  %32 = load i32, i32* @CB_GETLBTEXT, align 4
  %33 = load i64, i64* %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = ptrtoint i32* %34 to i64
  %36 = call i64 @SendDlgItemMessageW(i32 %30, i32 %31, i32 %32, i64 %33, i64 %35)
  %37 = load i32, i32* @FILE_specc, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wsprintfW(i32* %16, i32 %37, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @heap_free(i32* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = load i32, i32* @cmb2, align 4
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @FD31_Validate(%struct.TYPE_4__* %44, i32* %16, i32 %45, i64 %46, i32 %47)
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %27, %26
  %50 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FD31_StripEditControl(i32) #2

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i64, i64) #2

declare dso_local i32* @heap_alloc(i32) #2

declare dso_local i32 @wsprintfW(i32*, i32, i32) #2

declare dso_local i32 @heap_free(i32*) #2

declare dso_local i32 @FD31_Validate(%struct.TYPE_4__*, i32*, i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
