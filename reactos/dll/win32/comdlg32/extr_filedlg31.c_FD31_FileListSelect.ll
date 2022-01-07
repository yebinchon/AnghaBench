; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_FileListSelect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_filedlg31.c_FD31_FileListSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@lst1 = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BUFFILEALLOC = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@edt1 = common dso_local global i32 0, align 4
@CD_LBSELCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @FD31_FileListSelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FD31_FileListSelect(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @lst1, align 4
  %14 = load i32, i32* @LB_GETCURSEL, align 4
  %15 = call i64 @SendDlgItemMessageW(i32 %12, i32 %13, i32 %14, i64 0, i32 0)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @LB_ERR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %2, align 4
  br label %56

21:                                               ; preds = %1
  %22 = load i32, i32* @BUFFILEALLOC, align 4
  %23 = call i64 @heap_alloc(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @lst1, align 4
  %28 = load i32, i32* @LB_GETTEXT, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i64 @SendDlgItemMessageW(i32 %26, i32 %27, i32 %28, i64 %29, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @edt1, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @SetDlgItemTextW(i32 %33, i32 %34, i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @heap_free(i64 %37)
  br label %39

39:                                               ; preds = %25, %21
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @lst1, align 4
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* @CD_LBSELCHANGE, align 4
  %52 = call i32 @MAKELONG(i64 %50, i32 %51)
  %53 = call i32 @FD31_CallWindowProc(%struct.TYPE_4__* %45, i32 %48, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %44, %39
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %19
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i64, i32) #1

declare dso_local i64 @heap_alloc(i32) #1

declare dso_local i32 @SetDlgItemTextW(i32, i32, i64) #1

declare dso_local i32 @heap_free(i64) #1

declare dso_local i32 @FD31_CallWindowProc(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @MAKELONG(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
