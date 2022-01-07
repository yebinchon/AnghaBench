; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodash/rev1/keymaps/m47ch4n/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodash/rev1/keymaps/m47ch4n/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@JP_LAYOUT = common dso_local global i32 0, align 4
@LAYOUT_STATUS = common dso_local global i32 0, align 4
@US_LAYOUT = common dso_local global i32 0, align 4
@X_LSHIFT = common dso_local global i32 0, align 4
@SHIFT_PRESSED = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@AMPR = common dso_local global i32 0, align 4
@ASTR = common dso_local global i32 0, align 4
@AT = common dso_local global i32 0, align 4
@BSLASH = common dso_local global i32 0, align 4
@BSLS = common dso_local global i32 0, align 4
@BSPACE = common dso_local global i32 0, align 4
@CIRC = common dso_local global i32 0, align 4
@CSTM_0 = common dso_local global i32 0, align 4
@CSTM_1 = common dso_local global i32 0, align 4
@CSTM_2 = common dso_local global i32 0, align 4
@CSTM_3 = common dso_local global i32 0, align 4
@CSTM_4 = common dso_local global i32 0, align 4
@CSTM_5 = common dso_local global i32 0, align 4
@CSTM_6 = common dso_local global i32 0, align 4
@CSTM_7 = common dso_local global i32 0, align 4
@CSTM_8 = common dso_local global i32 0, align 4
@CSTM_9 = common dso_local global i32 0, align 4
@DEL = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@DLR = common dso_local global i32 0, align 4
@EQL = common dso_local global i32 0, align 4
@EQUAL = common dso_local global i32 0, align 4
@EXLM = common dso_local global i32 0, align 4
@GRAVE = common dso_local global i32 0, align 4
@GRV = common dso_local global i32 0, align 4
@HASH = common dso_local global i32 0, align 4
@INT1 = common dso_local global i32 0, align 4
@INT3 = common dso_local global i32 0, align 4
@LBRACKET = common dso_local global i32 0, align 4
@LBRC = common dso_local global i32 0, align 4
@LCBR = common dso_local global i32 0, align 4
@LPRN = common dso_local global i32 0, align 4
@MINS = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@NONUS_HASH = common dso_local global i32 0, align 4
@PERC = common dso_local global i32 0, align 4
@PIPE = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@QUOT = common dso_local global i32 0, align 4
@QUOTE = common dso_local global i32 0, align 4
@RBRACKET = common dso_local global i32 0, align 4
@RBRC = common dso_local global i32 0, align 4
@RCBR = common dso_local global i32 0, align 4
@RPRN = common dso_local global i32 0, align 4
@SCLN = common dso_local global i32 0, align 4
@SCOLON = common dso_local global i32 0, align 4
@TILD = common dso_local global i32 0, align 4
@UNDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %87 [
    i32 132, label %7
    i32 128, label %16
    i32 129, label %25
    i32 131, label %40
    i32 130, label %57
    i32 133, label %74
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, i32* @JP_LAYOUT, align 4
  store i32 %14, i32* @LAYOUT_STATUS, align 4
  br label %15

15:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %88

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @US_LAYOUT, align 4
  store i32 %23, i32* @LAYOUT_STATUS, align 4
  br label %24

24:                                               ; preds = %22, %16
  store i32 0, i32* %3, align 4
  br label %88

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @X_LSHIFT, align 4
  %33 = call i32 @SS_DOWN(i32 %32)
  %34 = call i32 @SEND_STRING(i32 %33)
  store i32 1, i32* @SHIFT_PRESSED, align 4
  br label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @X_LSHIFT, align 4
  %37 = call i32 @SS_UP(i32 %36)
  %38 = call i32 @SEND_STRING(i32 %37)
  store i32 0, i32* @SHIFT_PRESSED, align 4
  br label %39

39:                                               ; preds = %35, %31
  store i32 0, i32* %3, align 4
  br label %88

40:                                               ; preds = %2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @_LOWER, align 4
  %48 = call i32 @layer_on(i32 %47)
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @_LOWER, align 4
  %51 = call i32 @layer_off(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @_LOWER, align 4
  %54 = load i32, i32* @_RAISE, align 4
  %55 = load i32, i32* @_ADJUST, align 4
  %56 = call i32 @update_tri_layer(i32 %53, i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %88

57:                                               ; preds = %2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @_RAISE, align 4
  %65 = call i32 @layer_on(i32 %64)
  br label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @_RAISE, align 4
  %68 = call i32 @layer_off(i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @_LOWER, align 4
  %71 = load i32, i32* @_RAISE, align 4
  %72 = load i32, i32* @_ADJUST, align 4
  %73 = call i32 @update_tri_layer(i32 %70, i32 %71, i32 %72)
  store i32 0, i32* %3, align 4
  br label %88

74:                                               ; preds = %2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @_ADJUST, align 4
  %82 = call i32 @layer_on(i32 %81)
  br label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @_ADJUST, align 4
  %85 = call i32 @layer_off(i32 %84)
  br label %86

86:                                               ; preds = %83, %80
  store i32 0, i32* %3, align 4
  br label %88

87:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %86, %69, %52, %39, %24, %15
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @SEND_STRING(i32) #1

declare dso_local i32 @SS_DOWN(i32) #1

declare dso_local i32 @SS_UP(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
