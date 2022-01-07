; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/333fred/extr_333fred.c_tap_dance_sym_vim_finished.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/333fred/extr_333fred.c_tap_dance_sym_vim_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@tap_dance_state = common dso_local global i32 0, align 4
@tap_dance_active = common dso_local global i32 0, align 4
@SYMB = common dso_local global i32 0, align 4
@ONESHOT_START = common dso_local global i32 0, align 4
@VIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tap_dance_sym_vim_finished(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9
  store i32 128, i32* @tap_dance_state, align 4
  br label %21

20:                                               ; preds = %14
  store i32 129, i32* @tap_dance_state, align 4
  br label %21

21:                                               ; preds = %20, %19
  br label %23

22:                                               ; preds = %2
  store i32 130, i32* @tap_dance_state, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* @tap_dance_state, align 4
  switch i32 %24, label %41 [
    i32 128, label %25
    i32 129, label %35
    i32 130, label %38
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @tap_dance_active, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @reset_oneshot_layer()
  store i32 0, i32* @tap_dance_active, align 4
  br label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @SYMB, align 4
  %32 = load i32, i32* @ONESHOT_START, align 4
  %33 = call i32 @set_oneshot_layer(i32 %31, i32 %32)
  store i32 1, i32* @tap_dance_active, align 4
  br label %34

34:                                               ; preds = %30, %28
  br label %41

35:                                               ; preds = %23
  %36 = load i32, i32* @SYMB, align 4
  %37 = call i32 @layer_on(i32 %36)
  br label %41

38:                                               ; preds = %23
  %39 = load i32, i32* @VIM, align 4
  %40 = call i32 @layer_on(i32 %39)
  br label %41

41:                                               ; preds = %23, %38, %35, %34
  ret void
}

declare dso_local i32 @reset_oneshot_layer(...) #1

declare dso_local i32 @set_oneshot_layer(i32, i32) #1

declare dso_local i32 @layer_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
