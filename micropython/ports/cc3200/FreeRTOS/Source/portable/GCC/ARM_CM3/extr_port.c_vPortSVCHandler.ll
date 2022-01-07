; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/GCC/ARM_CM3/extr_port.c_vPortSVCHandler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/portable/GCC/ARM_CM3/extr_port.c_vPortSVCHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vPortSVCHandler() #0 {
  call void asm sideeffect "\09ldr\09r3, pxCurrentTCBConst2\09\09\0A\09ldr r1, [r3]\09\09\09\09\09\0A\09ldr r0, [r1]\09\09\09\09\09\0A\09ldmia r0!, {r4-r11}\09\09\09\09\0A\09msr psp, r0\09\09\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\09\0A\09mov r0, #0 \09\09\09\09\09\09\0A\09msr\09basepri, r0\09\09\09\09\09\0A\09orr r14, #0xd\09\09\09\09\09\0A\09bx r14\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\0A\09.align 4\09\09\09\09\09\09\0ApxCurrentTCBConst2: .word pxCurrentTCB\09\09\09\09\0A", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 187, i32 227, i32 255, i32 283, i32 317, i32 345, i32 367, i32 395, i32 426, i32 455, i32 479, i32 498, i32 523}
