; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/333fred/extr_333fred.c_tap_dance_copy_paste_finished.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/333fred/extr_333fred.c_tap_dance_copy_paste_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@X_INSERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tap_dance_copy_paste_finished(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 2
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @get_oneshot_mods()
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = call i32 (...) @get_mods()
  %15 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @set_oneshot_mods(i32 %28)
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %24, %19
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @X_INSERT, align 4
  %39 = call i8* @SS_TAP(i32 %38)
  %40 = call i32 @SS_LSFT(i8* %39)
  %41 = call i32 @SEND_STRING(i32 %40)
  br label %45

42:                                               ; preds = %34
  %43 = call i32 @SS_LCTRL(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @SEND_STRING(i32 %43)
  br label %45

45:                                               ; preds = %42, %37
  br label %58

46:                                               ; preds = %31
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* @X_INSERT, align 4
  %51 = call i8* @SS_TAP(i32 %50)
  %52 = call i32 @SS_LCTRL(i8* %51)
  %53 = call i32 @SEND_STRING(i32 %52)
  br label %57

54:                                               ; preds = %46
  %55 = call i32 @SS_LCTRL(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @SEND_STRING(i32 %55)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %45
  ret void
}

declare dso_local i32 @get_oneshot_mods(...) #1

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @set_oneshot_mods(i32) #1

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @SS_LSFT(i8*) #1

declare dso_local i8* @SS_TAP(i32) #1

declare dso_local i32 @SS_LCTRL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
