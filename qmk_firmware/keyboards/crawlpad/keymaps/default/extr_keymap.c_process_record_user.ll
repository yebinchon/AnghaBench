; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/crawlpad/keymaps/default/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/crawlpad/keymaps/default/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PORTB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %59 [
    i32 131, label %7
    i32 130, label %20
    i32 129, label %33
    i32 128, label %46
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @PORTB, align 4
  %15 = or i32 %14, 16
  store i32 %15, i32* @PORTB, align 4
  br label %19

16:                                               ; preds = %7
  %17 = load i32, i32* @PORTB, align 4
  %18 = and i32 %17, -17
  store i32 %18, i32* @PORTB, align 4
  br label %19

19:                                               ; preds = %16, %13
  store i32 0, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @PORTB, align 4
  %28 = or i32 %27, 32
  store i32 %28, i32* @PORTB, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @PORTB, align 4
  %31 = and i32 %30, -33
  store i32 %31, i32* @PORTB, align 4
  br label %32

32:                                               ; preds = %29, %26
  store i32 0, i32* %3, align 4
  br label %60

33:                                               ; preds = %2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @PORTB, align 4
  %41 = or i32 %40, 64
  store i32 %41, i32* @PORTB, align 4
  br label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @PORTB, align 4
  %44 = and i32 %43, -65
  store i32 %44, i32* @PORTB, align 4
  br label %45

45:                                               ; preds = %42, %39
  store i32 0, i32* %3, align 4
  br label %60

46:                                               ; preds = %2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @PORTB, align 4
  %54 = or i32 %53, 128
  store i32 %54, i32* @PORTB, align 4
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @PORTB, align 4
  %57 = and i32 %56, -129
  store i32 %57, i32* @PORTB, align 4
  br label %58

58:                                               ; preds = %55, %52
  store i32 0, i32* %3, align 4
  br label %60

59:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %45, %32, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
