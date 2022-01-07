; ModuleID = '/home/carl/AnghaBench/os-tutorial/18-interrupts/cpu/extr_isr.c_isr_install.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/18-interrupts/cpu/extr_isr.c_isr_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isr0 = common dso_local global i64 0, align 8
@isr1 = common dso_local global i64 0, align 8
@isr2 = common dso_local global i64 0, align 8
@isr3 = common dso_local global i64 0, align 8
@isr4 = common dso_local global i64 0, align 8
@isr5 = common dso_local global i64 0, align 8
@isr6 = common dso_local global i64 0, align 8
@isr7 = common dso_local global i64 0, align 8
@isr8 = common dso_local global i64 0, align 8
@isr9 = common dso_local global i64 0, align 8
@isr10 = common dso_local global i64 0, align 8
@isr11 = common dso_local global i64 0, align 8
@isr12 = common dso_local global i64 0, align 8
@isr13 = common dso_local global i64 0, align 8
@isr14 = common dso_local global i64 0, align 8
@isr15 = common dso_local global i64 0, align 8
@isr16 = common dso_local global i64 0, align 8
@isr17 = common dso_local global i64 0, align 8
@isr18 = common dso_local global i64 0, align 8
@isr19 = common dso_local global i64 0, align 8
@isr20 = common dso_local global i64 0, align 8
@isr21 = common dso_local global i64 0, align 8
@isr22 = common dso_local global i64 0, align 8
@isr23 = common dso_local global i64 0, align 8
@isr24 = common dso_local global i64 0, align 8
@isr25 = common dso_local global i64 0, align 8
@isr26 = common dso_local global i64 0, align 8
@isr27 = common dso_local global i64 0, align 8
@isr28 = common dso_local global i64 0, align 8
@isr29 = common dso_local global i64 0, align 8
@isr30 = common dso_local global i64 0, align 8
@isr31 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isr_install() #0 {
  %1 = load i64, i64* @isr0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call i32 @set_idt_gate(i32 0, i32 %2)
  %4 = load i64, i64* @isr1, align 8
  %5 = trunc i64 %4 to i32
  %6 = call i32 @set_idt_gate(i32 1, i32 %5)
  %7 = load i64, i64* @isr2, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @set_idt_gate(i32 2, i32 %8)
  %10 = load i64, i64* @isr3, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @set_idt_gate(i32 3, i32 %11)
  %13 = load i64, i64* @isr4, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @set_idt_gate(i32 4, i32 %14)
  %16 = load i64, i64* @isr5, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @set_idt_gate(i32 5, i32 %17)
  %19 = load i64, i64* @isr6, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @set_idt_gate(i32 6, i32 %20)
  %22 = load i64, i64* @isr7, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @set_idt_gate(i32 7, i32 %23)
  %25 = load i64, i64* @isr8, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @set_idt_gate(i32 8, i32 %26)
  %28 = load i64, i64* @isr9, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @set_idt_gate(i32 9, i32 %29)
  %31 = load i64, i64* @isr10, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @set_idt_gate(i32 10, i32 %32)
  %34 = load i64, i64* @isr11, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @set_idt_gate(i32 11, i32 %35)
  %37 = load i64, i64* @isr12, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @set_idt_gate(i32 12, i32 %38)
  %40 = load i64, i64* @isr13, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @set_idt_gate(i32 13, i32 %41)
  %43 = load i64, i64* @isr14, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @set_idt_gate(i32 14, i32 %44)
  %46 = load i64, i64* @isr15, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @set_idt_gate(i32 15, i32 %47)
  %49 = load i64, i64* @isr16, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @set_idt_gate(i32 16, i32 %50)
  %52 = load i64, i64* @isr17, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @set_idt_gate(i32 17, i32 %53)
  %55 = load i64, i64* @isr18, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @set_idt_gate(i32 18, i32 %56)
  %58 = load i64, i64* @isr19, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @set_idt_gate(i32 19, i32 %59)
  %61 = load i64, i64* @isr20, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @set_idt_gate(i32 20, i32 %62)
  %64 = load i64, i64* @isr21, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @set_idt_gate(i32 21, i32 %65)
  %67 = load i64, i64* @isr22, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @set_idt_gate(i32 22, i32 %68)
  %70 = load i64, i64* @isr23, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @set_idt_gate(i32 23, i32 %71)
  %73 = load i64, i64* @isr24, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @set_idt_gate(i32 24, i32 %74)
  %76 = load i64, i64* @isr25, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @set_idt_gate(i32 25, i32 %77)
  %79 = load i64, i64* @isr26, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @set_idt_gate(i32 26, i32 %80)
  %82 = load i64, i64* @isr27, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @set_idt_gate(i32 27, i32 %83)
  %85 = load i64, i64* @isr28, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @set_idt_gate(i32 28, i32 %86)
  %88 = load i64, i64* @isr29, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @set_idt_gate(i32 29, i32 %89)
  %91 = load i64, i64* @isr30, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @set_idt_gate(i32 30, i32 %92)
  %94 = load i64, i64* @isr31, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @set_idt_gate(i32 31, i32 %95)
  %97 = call i32 (...) @set_idt()
  ret void
}

declare dso_local i32 @set_idt_gate(i32, i32) #1

declare dso_local i32 @set_idt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
