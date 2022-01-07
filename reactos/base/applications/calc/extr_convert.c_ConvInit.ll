; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_convert.c_ConvInit.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_convert.c_ConvInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IDC_COMBO_CATEGORY = common dso_local global i32 0, align 4
@conv_table = common dso_local global %struct.TYPE_6__* null, align 8
@calc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConvInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [128 x %struct.TYPE_6__], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @IDC_COMBO_CATEGORY, align 4
  %8 = call i32 @GetDlgItem(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conv_table, align 8
  %12 = call i32 @SIZEOF(%struct.TYPE_6__* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @calc, i32 0, i32 0), align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @conv_table, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [128 x %struct.TYPE_6__], [128 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %23 = getelementptr inbounds [128 x %struct.TYPE_6__], [128 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %24 = call i32 @SIZEOF(%struct.TYPE_6__* %23)
  %25 = call i32 @LoadString(i32 %15, i32 %21, %struct.TYPE_6__* %22, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @CB_ADDSTRING, align 4
  %28 = getelementptr inbounds [128 x %struct.TYPE_6__], [128 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %29 = ptrtoint %struct.TYPE_6__* %28 to i32
  %30 = call i32 @SendMessage(i32 %26, i32 %27, i32 0, i32 %29)
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %9

34:                                               ; preds = %9
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @CB_SETCURSEL, align 4
  %37 = call i32 @SendMessage(i32 %35, i32 %36, i32 0, i32 0)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @ConvAdjust(i32 %38, i32 0)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SIZEOF(%struct.TYPE_6__*) #1

declare dso_local i32 @LoadString(i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @ConvAdjust(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
