; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_pendsv.c_PendSV_Handler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_pendsv.c_PendSV_Handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: naked noinline nounwind optnone uwtable
define dso_local void @PendSV_Handler() #0 {
  call void asm sideeffect "ldr r1, pendsv_object_ptr\0Aldr r0, [r1]\0Acmp r0, #0\0Abeq .no_obj\0Astr r0, [sp, #0]\0Amov r0, #0\0Astr r0, [r1]\0Aldr r0, nlr_jump_ptr\0Astr r0, [sp, #24]\0Abx lr\0A.no_obj:\0Abx lr\0A.align 2\0Apendsv_object_ptr: .word pendsv_object\0Anlr_jump_ptr: .word nlr_jump\0A", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  unreachable
}

attributes #0 = { naked noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 213, i32 252, i32 277, i32 300, i32 327, i32 357, i32 380, i32 405, i32 441, i32 472, i32 490, i32 511, i32 532, i32 556, i32 607}
