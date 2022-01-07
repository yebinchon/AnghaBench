; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/eventvwr/extr_evtdetctl.c_InitDetailsDlgCtrl.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/eventvwr/extr_evtdetctl.c_InitDetailsDlgCtrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@hInst = common dso_local global i32 0, align 4
@IDI_NEXT = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i64 0, align 8
@LR_DEFAULTCOLOR = common dso_local global i32 0, align 4
@IDI_PREV = common dso_local global i32 0, align 4
@IDI_COPY = common dso_local global i32 0, align 4
@IDC_NEXT = common dso_local global i32 0, align 4
@BM_SETIMAGE = common dso_local global i32 0, align 4
@IDC_PREVIOUS = common dso_local global i32 0, align 4
@IDC_COPY = common dso_local global i32 0, align 4
@IDC_EVENTTEXTEDIT = common dso_local global i32 0, align 4
@EM_SETBKGNDCOLOR = common dso_local global i32 0, align 4
@COLOR_3DFACE = common dso_local global i32 0, align 4
@EM_GETEVENTMASK = common dso_local global i32 0, align 4
@EM_SETEVENTMASK = common dso_local global i32 0, align 4
@ENM_LINK = common dso_local global i32 0, align 4
@ENM_MOUSEEVENTS = common dso_local global i32 0, align 4
@EM_AUTOURLDETECT = common dso_local global i32 0, align 4
@AURL_ENABLEURL = common dso_local global i32 0, align 4
@IDC_WORDRADIO = common dso_local global i32 0, align 4
@IDC_BYTESRADIO = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@IDC_EVENTDATAEDIT = common dso_local global i32 0, align 4
@WM_SETFONT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @InitDetailsDlgCtrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitDetailsDlgCtrl(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i32, i32* @hInst, align 4
  %11 = load i32, i32* @IDI_NEXT, align 4
  %12 = call i32 @MAKEINTRESOURCEW(i32 %11)
  %13 = load i64, i64* @IMAGE_ICON, align 8
  %14 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %15 = call i64 @LoadImageW(i32 %10, i32 %12, i64 %13, i32 16, i32 16, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @hInst, align 4
  %17 = load i32, i32* @IDI_PREV, align 4
  %18 = call i32 @MAKEINTRESOURCEW(i32 %17)
  %19 = load i64, i64* @IMAGE_ICON, align 8
  %20 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %21 = call i64 @LoadImageW(i32 %16, i32 %18, i64 %19, i32 16, i32 16, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* @hInst, align 4
  %23 = load i32, i32* @IDI_COPY, align 4
  %24 = call i32 @MAKEINTRESOURCEW(i32 %23)
  %25 = load i64, i64* @IMAGE_ICON, align 8
  %26 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %27 = call i64 @LoadImageW(i32 %22, i32 %24, i64 %25, i32 16, i32 16, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IDC_NEXT, align 4
  %30 = load i32, i32* @BM_SETIMAGE, align 4
  %31 = load i64, i64* @IMAGE_ICON, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @SendDlgItemMessageW(i32 %28, i32 %29, i32 %30, i32 %32, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IDC_PREVIOUS, align 4
  %38 = load i32, i32* @BM_SETIMAGE, align 4
  %39 = load i64, i64* @IMAGE_ICON, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @SendDlgItemMessageW(i32 %36, i32 %37, i32 %38, i32 %40, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @IDC_COPY, align 4
  %46 = load i32, i32* @BM_SETIMAGE, align 4
  %47 = load i64, i64* @IMAGE_ICON, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @SendDlgItemMessageW(i32 %44, i32 %45, i32 %46, i32 %48, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IDC_EVENTTEXTEDIT, align 4
  %54 = load i32, i32* @EM_SETBKGNDCOLOR, align 4
  %55 = load i32, i32* @COLOR_3DFACE, align 4
  %56 = call i32 @GetSysColor(i32 %55)
  %57 = call i32 @SendDlgItemMessageW(i32 %52, i32 %53, i32 %54, i32 0, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @IDC_EVENTTEXTEDIT, align 4
  %60 = load i32, i32* @EM_GETEVENTMASK, align 4
  %61 = call i32 @SendDlgItemMessageW(i32 %58, i32 %59, i32 %60, i32 0, i32 0)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @IDC_EVENTTEXTEDIT, align 4
  %64 = load i32, i32* @EM_SETEVENTMASK, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ENM_LINK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @ENM_MOUSEEVENTS, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @SendDlgItemMessageW(i32 %62, i32 %63, i32 %64, i32 0, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @IDC_EVENTTEXTEDIT, align 4
  %73 = load i32, i32* @EM_AUTOURLDETECT, align 4
  %74 = load i32, i32* @AURL_ENABLEURL, align 4
  %75 = call i32 @SendDlgItemMessageW(i32 %71, i32 %72, i32 %73, i32 %74, i32 0)
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %2
  %82 = load i32, i32* @IDC_WORDRADIO, align 4
  br label %85

83:                                               ; preds = %2
  %84 = load i32, i32* @IDC_BYTESRADIO, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = load i32, i32* @BM_SETCHECK, align 4
  %88 = load i32, i32* @BST_CHECKED, align 4
  %89 = call i32 @SendDlgItemMessageW(i32 %76, i32 %86, i32 %87, i32 %88, i32 0)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @IDC_EVENTDATAEDIT, align 4
  %92 = load i32, i32* @WM_SETFONT, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i64, i64* @TRUE, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @SendDlgItemMessageW(i32 %90, i32 %91, i32 %92, i32 %96, i32 %98)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @LoadImageW(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
