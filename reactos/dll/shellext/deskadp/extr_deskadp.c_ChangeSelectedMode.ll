; ModuleID = '/home/carl/AnghaBench/reactos/dll/shellext/deskadp/extr_deskadp.c_ChangeSelectedMode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/shellext/deskadp/extr_deskadp.c_ChangeSelectedMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@IDC_ALLVALIDMODES = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @ChangeSelectedMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ChangeSelectedMode(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IDC_ALLVALIDMODES, align 4
  %11 = load i32, i32* @LB_GETCURSEL, align 4
  %12 = call i64 @SendDlgItemMessage(i32 %9, i32 %10, i32 %11, i32 0, i32 0)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IDC_ALLVALIDMODES, align 4
  %18 = load i32, i32* @LB_GETITEMDATA, align 4
  %19 = load i64, i64* %5, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @SendDlgItemMessage(i32 %16, i32 %17, i32 %18, i32 %20, i32 0)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %6, align 8
  br label %23

23:                                               ; preds = %15, %2
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i64 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
