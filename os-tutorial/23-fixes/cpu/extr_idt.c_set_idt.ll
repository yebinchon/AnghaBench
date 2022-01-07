; ModuleID = '/home/carl/AnghaBench/os-tutorial/23-fixes/cpu/extr_idt.c_set_idt.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/23-fixes/cpu/extr_idt.c_set_idt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@idt = common dso_local global i32 0, align 4
@idt_reg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IDT_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_idt() #0 {
  store i64 ptrtoint (i32* @idt to i64), i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idt_reg, i32 0, i32 1), align 8
  %1 = load i32, i32* @IDT_ENTRIES, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 %2, 4
  %4 = sub i64 %3, 1
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @idt_reg, i32 0, i32 0), align 8
  call void asm sideeffect "lidtl ($0)", "r,~{dirflag},~{fpsr},~{flags}"(%struct.TYPE_2__* @idt_reg) #1, !srcloc !2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 460}
