; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/edvorakjp/extr_oled.c_render_logo.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/edvorakjp/extr_oled.c_render_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CharacterMatrix = type { i32 }

@render_logo.logo = internal global [64 x i8] c"\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CharacterMatrix*)* @render_logo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_logo(%struct.CharacterMatrix* %0) #0 {
  %2 = alloca %struct.CharacterMatrix*, align 8
  store %struct.CharacterMatrix* %0, %struct.CharacterMatrix** %2, align 8
  %3 = load %struct.CharacterMatrix*, %struct.CharacterMatrix** %2, align 8
  %4 = call i32 @matrix_write(%struct.CharacterMatrix* %3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @render_logo.logo, i64 0, i64 0))
  ret void
}

declare dso_local i32 @matrix_write(%struct.CharacterMatrix*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
