; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_sigfuz.c_mess_with_tm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_sigfuz.c_mess_with_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mess_with_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mess_with_tm() #0 {
  %1 = call i64 @one_in_chance(i32 3)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  call void asm sideeffect "tbegin.\09;beq 8\09;", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %4 = call i64 @one_in_chance(i32 2)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  call void asm sideeffect "tsuspend.\09;", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %7

7:                                                ; preds = %6, %3
  br label %8

8:                                                ; preds = %7, %0
  %9 = call i64 @one_in_chance(i32 20)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void asm sideeffect "tend.\09;", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

declare dso_local i64 @one_in_chance(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 256}
!3 = !{i32 320}
!4 = !{i32 371}
