; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_fields_selection.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_fields_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, %struct.detail_data*)* }
%struct.detail_data = type { i32 }

@IDC_DETAIL_LIST = common dso_local global i32 0, align 4
@listItems = common dso_local global %struct.TYPE_3__* null, align 8
@LVM_DELETEALLITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.detail_data*, i32)* @set_fields_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fields_selection(i32 %0, %struct.detail_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.detail_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.detail_data* %1, %struct.detail_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IDC_DETAIL_LIST, align 4
  %10 = call i32 @GetDlgItem(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @listItems, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @LVM_DELETEALLITEMS, align 4
  %21 = call i32 @SendMessageW(i32 %19, i32 %20, i32 0, i32 0)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @listItems, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (i32, %struct.detail_data*)*, i32 (i32, %struct.detail_data*)** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.detail_data*, %struct.detail_data** %5, align 8
  %30 = call i32 %27(i32 %28, %struct.detail_data* %29)
  br label %31

31:                                               ; preds = %18, %13, %3
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
