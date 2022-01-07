; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_startup_gcc.c_ResetISR.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_startup_gcc.c_ResetISR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetISR() #0 {
  call void asm sideeffect "ldr r0, =_text             \0Aldr r0, [r0]               \0Amsr msp, r0                \0A", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  call void asm sideeffect "ldr     r0, =_bss      \0Aldr     r1, =_ebss     \0Amov     r2, #0         \0A.thumb_func                    \0Azero_loop:                     \0Acmp     r0, r1         \0Ait      lt             \0Astrlt   r2, [r0], #4   \0Ablt     zero_loop      \0A", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  %1 = call i32 (...) @main()
  ret void
}

declare dso_local i32 @main(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 228, i32 277, i32 325}
!3 = !{i32 432, i32 477, i32 521, i32 557, i32 601, i32 653, i32 697, i32 741, i32 785}
