; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lfkeyboards/lfk78/extr_lfk78.c_matrix_scan_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lfkeyboards/lfk78/extr_lfk78.c_matrix_scan_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@matrix_scan_kb.layer_indicator = internal global i32 -1, align 4
@layer_state = common dso_local global i32 0, align 4
@layer_info = common dso_local global %struct.TYPE_4__* null, align 8
@OCR1A = common dso_local global i32 0, align 4
@OCR1B = common dso_local global i32 0, align 4
@OCR1C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_kb() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @matrix_scan_kb.layer_indicator, align 4
  %3 = load i32, i32* @layer_state, align 4
  %4 = icmp ne i32 %2, %3
  br i1 %4, label %5, label %58

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %54, %5
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @layer_info, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @layer_state, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @layer_info, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %13, %19
  %21 = icmp eq i32 %12, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @layer_info, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %53

30:                                               ; preds = %22, %6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @layer_info, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @OCR1A, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @layer_info, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* @OCR1B, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @layer_info, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* @OCR1C, align 4
  %52 = load i32, i32* @layer_state, align 4
  store i32 %52, i32* @matrix_scan_kb.layer_indicator, align 4
  br label %57

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %6

57:                                               ; preds = %30
  br label %58

58:                                               ; preds = %57, %0
  %59 = call i32 (...) @matrix_scan_user()
  ret void
}

declare dso_local i32 @matrix_scan_user(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
