; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_connectdialog.c_GeneralOnInit.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_connectdialog.c_GeneralOnInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i8* }

@GWLP_USERDATA = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOOWNERZORDER = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@IDI_LOGON = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@LR_DEFAULTCOLOR = common dso_local global i32 0, align 4
@IDC_LOGONICON = common dso_local global i32 0, align 4
@STM_SETICON = common dso_local global i32 0, align 4
@IDI_CONN = common dso_local global i32 0, align 4
@IDC_CONNICON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*)* @GeneralOnInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GeneralOnInit(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @GWLP_USERDATA, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = ptrtoint %struct.TYPE_5__* %8 to i32
  %10 = call i32 @SetWindowLongPtrW(i32 %6, i32 %7, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SWP_NOACTIVATE, align 4
  %18 = load i32, i32* @SWP_NOOWNERZORDER, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SWP_NOSIZE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SWP_NOZORDER, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @SetWindowPos(i32 %16, i32* null, i32 2, i32 22, i32 0, i32 0, i32 %23)
  %25 = load i32, i32* @hInst, align 4
  %26 = load i32, i32* @IDI_LOGON, align 4
  %27 = call i32 @MAKEINTRESOURCEW(i32 %26)
  %28 = load i32, i32* @IMAGE_ICON, align 4
  %29 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %30 = call i8* @LoadImageW(i32 %25, i32 %27, i32 %28, i32 32, i32 32, i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IDC_LOGONICON, align 4
  %42 = load i32, i32* @STM_SETICON, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = call i32 @SendDlgItemMessageW(i32 %40, i32 %41, i32 %42, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %37, %2
  %49 = load i32, i32* @hInst, align 4
  %50 = load i32, i32* @IDI_CONN, align 4
  %51 = call i32 @MAKEINTRESOURCEW(i32 %50)
  %52 = load i32, i32* @IMAGE_ICON, align 4
  %53 = load i32, i32* @LR_DEFAULTCOLOR, align 4
  %54 = call i8* @LoadImageW(i32 %49, i32 %51, i32 %52, i32 32, i32 32, i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %48
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IDC_CONNICON, align 4
  %66 = load i32, i32* @STM_SETICON, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = call i32 @SendDlgItemMessageW(i32 %64, i32 %65, i32 %66, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %61, %48
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = call i32 @FillServerAddressCombo(%struct.TYPE_5__* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = call i32 @ReLoadGeneralPage(%struct.TYPE_5__* %75)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @LoadImageW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @FillServerAddressCombo(%struct.TYPE_5__*) #1

declare dso_local i32 @ReLoadGeneralPage(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
