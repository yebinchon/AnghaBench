; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_Button_Command.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_Button_Command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@BN_CLICKED = common dso_local global i64 0, align 8
@BM_GETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i64)* @DATETIME_Button_Command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DATETIME_Button_Command(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @HIWORD(i32 %8)
  %10 = load i64, i64* @BN_CLICKED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @BM_GETCHECK, align 4
  %16 = call i64 @SendMessageW(i32 %14, i32 %15, i32 0, i32 0)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @BST_CHECKED, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @InvalidateRect(i32 %25, i32* null, i32 %26)
  br label %28

28:                                               ; preds = %12, %3
  ret i32 0
}

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
