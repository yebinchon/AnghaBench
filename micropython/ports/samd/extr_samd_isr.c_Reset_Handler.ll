; ModuleID = '/home/carl/AnghaBench/micropython/ports/samd/extr_samd_isr.c_Reset_Handler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/samd/extr_samd_isr.c_Reset_Handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@_sidata = common dso_local global i32 0, align 4
@_sdata = common dso_local global i32 0, align 4
@_edata = common dso_local global i32 0, align 4
@_sbss = common dso_local global i32 0, align 4
@_ebss = common dso_local global i32 0, align 4
@isr_vector = common dso_local global i32 0, align 4
@SCB = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Reset_Handler() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  call void asm sideeffect "ldr r0, =_estack", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  call void asm sideeffect "mov sp, r0", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32* @_sidata, i32** %1, align 8
  store i32* @_sdata, i32** %2, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ult i32* %5, @_edata
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i32*, i32** %1, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %1, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %2, align 8
  store i32 %10, i32* %11, align 4
  br label %4

13:                                               ; preds = %4
  store i32* @_sbss, i32** %3, align 8
  br label %14

14:                                               ; preds = %17, %13
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ult i32* %15, @_ebss
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %3, align 8
  store i32 0, i32* %18, align 4
  br label %14

20:                                               ; preds = %14
  store volatile i32 ptrtoint (i32* @isr_vector to i32), i32* inttoptr (i64 3758157064 to i32*), align 4
  %21 = load volatile i32, i32* inttoptr (i64 3758157076 to i32*), align 4
  %22 = or i32 %21, 512
  store volatile i32 %22, i32* inttoptr (i64 3758157076 to i32*), align 4
  %23 = call i32 (...) @samd_init()
  %24 = call i32 (...) @samd_main()
  br label %25

25:                                               ; preds = %25, %20
  br label %25
}

declare dso_local i32 @samd_init(...) #1

declare dso_local i32 @samd_main(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 437}
!3 = !{i32 478}
