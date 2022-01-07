; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_keycode_config.c_mod_config.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_keycode_config.c_mod_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@keymap_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MOD_RGUI = common dso_local global i32 0, align 4
@MOD_LGUI = common dso_local global i32 0, align 4
@MOD_LALT = common dso_local global i32 0, align 4
@MOD_RALT = common dso_local global i32 0, align 4
@MOD_LCTL = common dso_local global i32 0, align 4
@MOD_RCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 4), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @MOD_RGUI, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @MOD_LGUI, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = load i32, i32* @MOD_LGUI, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @MOD_LALT, align 4
  %17 = load i32, i32* %2, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %5
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @MOD_RALT, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @MOD_LALT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* @MOD_LALT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* @MOD_LGUI, align 4
  %31 = load i32, i32* %2, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %19
  br label %34

34:                                               ; preds = %33, %11
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 3), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @MOD_RGUI, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @MOD_RGUI, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32, i32* @MOD_RGUI, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %2, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* @MOD_RALT, align 4
  %50 = load i32, i32* %2, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %2, align 4
  br label %67

52:                                               ; preds = %38
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @MOD_RALT, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @MOD_RALT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32, i32* @MOD_RALT, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %2, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* @MOD_RGUI, align 4
  %64 = load i32, i32* %2, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %58, %52
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 2), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %68
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @MOD_RGUI, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @MOD_LGUI, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load i32, i32* @MOD_LGUI, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %2, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* @MOD_LCTL, align 4
  %83 = load i32, i32* %2, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %2, align 4
  br label %100

85:                                               ; preds = %71
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @MOD_RCTL, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @MOD_LCTL, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i32, i32* @MOD_LCTL, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %2, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* @MOD_LGUI, align 4
  %97 = load i32, i32* %2, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %91, %85
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100, %68
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 1), align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %101
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @MOD_RGUI, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @MOD_RGUI, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load i32, i32* @MOD_RGUI, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %2, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %2, align 4
  %115 = load i32, i32* @MOD_RCTL, align 4
  %116 = load i32, i32* %2, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %2, align 4
  br label %133

118:                                              ; preds = %104
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* @MOD_RCTL, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @MOD_RCTL, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load i32, i32* @MOD_RCTL, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %2, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %2, align 4
  %129 = load i32, i32* @MOD_RGUI, align 4
  %130 = load i32, i32* %2, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %124, %118
  br label %133

133:                                              ; preds = %132, %110
  br label %134

134:                                              ; preds = %133, %101
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keymap_config, i32 0, i32 0), align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load i32, i32* @MOD_LGUI, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %2, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %2, align 4
  %142 = load i32, i32* @MOD_RGUI, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %2, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %137, %134
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
