; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/arrow_pad/keymaps/pad_24/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/arrow_pad/keymaps/pad_24/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@KC_LCTL = common dso_local global i32 0, align 4
@KC_C = common dso_local global i32 0, align 4
@KC_X = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@KC_PENT = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %122 [
    i32 130, label %6
    i32 128, label %41
    i32 129, label %87
  ]

6:                                                ; preds = %2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %6
  %13 = load i32, i32* @KC_LCTL, align 4
  %14 = call i32 @register_code(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i32, i32* @KC_C, align 4
  %22 = call i32 @register_code(i32 %21)
  %23 = load i32, i32* @KC_C, align 4
  %24 = call i32 @unregister_code(i32 %23)
  br label %37

25:                                               ; preds = %12
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @KC_X, align 4
  %33 = call i32 @register_code(i32 %32)
  %34 = load i32, i32* @KC_X, align 4
  %35 = call i32 @unregister_code(i32 %34)
  br label %36

36:                                               ; preds = %31, %25
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* @KC_LCTL, align 4
  %39 = call i32 @unregister_code(i32 %38)
  br label %40

40:                                               ; preds = %37, %6
  br label %122

41:                                               ; preds = %2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @KC_LSFT, align 4
  %55 = call i32 @MOD_BIT(i32 %54)
  %56 = call i32 @register_mods(i32 %55)
  br label %57

57:                                               ; preds = %53, %47
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @KC_LCTL, align 4
  %65 = call i32 @MOD_BIT(i32 %64)
  %66 = call i32 @register_mods(i32 %65)
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @KC_PENT, align 4
  %75 = call i32 @register_code(i32 %74)
  br label %76

76:                                               ; preds = %73, %67
  br label %86

77:                                               ; preds = %41
  %78 = load i32, i32* @KC_LSFT, align 4
  %79 = call i32 @MOD_BIT(i32 %78)
  %80 = load i32, i32* @KC_LCTL, align 4
  %81 = call i32 @MOD_BIT(i32 %80)
  %82 = or i32 %79, %81
  %83 = call i32 @unregister_mods(i32 %82)
  %84 = load i32, i32* @KC_PENT, align 4
  %85 = call i32 @unregister_code(i32 %84)
  br label %86

86:                                               ; preds = %77, %76
  br label %122

87:                                               ; preds = %2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %87
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %97, 2
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @KC_LCTL, align 4
  %101 = call i32 @MOD_BIT(i32 %100)
  %102 = call i32 @register_mods(i32 %101)
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %107, 2
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @KC_LALT, align 4
  %111 = call i32 @MOD_BIT(i32 %110)
  %112 = call i32 @register_mods(i32 %111)
  br label %113

113:                                              ; preds = %109, %103
  br label %121

114:                                              ; preds = %87
  %115 = load i32, i32* @KC_LCTL, align 4
  %116 = call i32 @MOD_BIT(i32 %115)
  %117 = load i32, i32* @KC_LALT, align 4
  %118 = call i32 @MOD_BIT(i32 %117)
  %119 = or i32 %116, %118
  %120 = call i32 @unregister_mods(i32 %119)
  br label %121

121:                                              ; preds = %114, %113
  br label %122

122:                                              ; preds = %2, %121, %86, %40
  ret i32 1
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @register_mods(i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @unregister_mods(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
