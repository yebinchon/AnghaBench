; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_tray.c_OnCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_tray.c_OnCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@IDC_LINE_SWITCH = common dso_local global i64 0, align 8
@BN_CLICKED = common dso_local global i64 0, align 8
@BM_GETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@MIXER_OBJECTF_HMIXER = common dso_local global i32 0, align 4
@MIXER_SETCONTROLDETAILSF_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i64)* @OnCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnCommand(%struct.TYPE_6__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @LOWORD(i32 %12)
  %14 = load i64, i64* @IDC_LINE_SWITCH, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @HIWORD(i32 %17)
  %19 = load i64, i64* @BN_CLICKED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 40, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 5
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 4, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @BM_GETCHECK, align 4
  %34 = call i64 @SendMessage(i32 %32, i32 %33, i32 0, i32 0)
  %35 = load i64, i64* @BST_CHECKED, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @MIXER_OBJECTF_HMIXER, align 4
  %44 = load i32, i32* @MIXER_SETCONTROLDETAILSF_VALUE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @mixerSetControlDetails(i32 %42, %struct.TYPE_8__* %10, i32 %45)
  br label %47

47:                                               ; preds = %21, %16, %4
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i64 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @mixerSetControlDetails(i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
