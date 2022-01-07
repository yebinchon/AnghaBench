; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp8266/rboot/rboot/extr_rboot.c_call_user_start.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp8266/rboot/rboot/extr_rboot.c_call_user_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @call_user_start() #0 {
  call void asm sideeffect "mov a15, a0\0Acall0 find_image\0Amov a0, a15\0Abnez a2, 1f\0Aret\0A1:\0Amovi a3, entry_addr\0Al32i a3, a3, 0\0Ajx a3\0A", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 182, i32 201, i32 224, i32 242, i32 260, i32 270, i32 279, i32 305, i32 326}
