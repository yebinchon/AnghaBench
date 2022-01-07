; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_bochs.c_r_debug_bochs_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_bochs.c_r_debug_bochs_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [1444 x i8] c"=PC\09csip\0A=SP\09rsp\0A=BP\09rbp\0A=A0\09rax\0A=A1\09rbx\0A=A2\09rcx\0A=A3\09rdi\0Aseg\09es\092\090x038\090\09\0Aseg\09cs\092\090x03A\090\09\0Aseg\09ss\092\090x03C\090\09\0Aseg\09ds\092\090x03E\090\09\0Aseg\09fs\092\090x040\090\09\0Aseg\09gs\092\090x042\090\09\0Agpr\09rax\098\090x078\090\09\0Agpr\09eax\094\090x078\090\09\0Agpr\09ax\092\090x078\090\09\0Agpr\09al\091\090x078\090\09\0Agpr\09rcx\098\090x080\090\09\0Agpr\09ecx\094\090x080\090\09\0Agpr\09cx\092\090x080\090\09\0Agpr\09cl\091\090x078\090\09\0Agpr\09rdx\098\090x088\090\09\0Agpr\09edx\094\090x088\090\09\0Agpr\09dx\092\090x088\090\09\0Agpr\09dl\091\090x088\090\09\0Agpr\09rbx\098\090x090\090\09\0Agpr\09ebx\094\090x090\090\09\0Agpr\09bx\092\090x090\090\09\0Agpr\09bl\091\090x090\090\09\0Agpr\09rsp\098\090x098\090\09\0Agpr\09esp\094\090x098\090\09\0Agpr\09sp\092\090x098\090\09\0Agpr\09spl\091\090x098\090\09\0Agpr\09rbp\098\090x0A0\090\09\0Agpr\09ebp\094\090x0A0\090\09\0Agpr\09bp\092\090x0A0\090\09\0Agpr\09bpl\091\090x0A0\090\09\0Agpr\09rsi\098\090x0A8\090\09\0Agpr\09esi\094\090x0A8\090\09\0Agpr\09si\092\090x0A8\090\09\0Agpr\09sil\091\090x0A8\090\09\0Agpr\09rdi\098\090x0B0\090\09\0Agpr\09edi\094\090x0B0\090\09\0Agpr\09di\092\090x0B0\090\09\0Agpr\09dil\091\090x0B0\090\09\0Agpr\09r8\098\090x0B8\090\09\0Agpr\09r8d\094\090x0B8\090\09\0Agpr\09r8w\092\090x0B8\090\09\0Agpr\09r8b\091\090x0B8\090\09\0Agpr\09r9\098\090x0C0\090\09\0Agpr\09r9d\094\090x0C0\090\09\0Agpr\09r9w\092\090x0C0\090\09\0Agpr\09r9b\091\090x0C0\090\09\0Agpr\09r10\098\090x0C8\090\09\0Agpr\09r10d\094\090x0C8\090\09\0Agpr\09r10w\092\090x0C8\090\09\0Agpr\09r10b\091\090x0C8\090\09\0Agpr\09r11\098\090x0D0\090\09\0Agpr\09r11d\094\090x0D0\090\09\0Agpr\09r11w\092\090x0D0\090\09\0Agpr\09r11b\091\090x0D0\090\09\0Agpr\09r12\098\090x0D8\090\09\0Agpr\09r12d\094\090x0D8\090\09\0Agpr\09r12w\092\090x0D8\090\09\0Agpr\09r12b\091\090x0D8\090\09\0Agpr\09r13\098\090x0E0\090\09\0Agpr\09r13d\094\090x0E0\090\09\0Agpr\09r13w\092\090x0E0\090\09\0Agpr\09r13b\091\090x0E0\090\09\0Agpr\09r14\098\090x0E8\090\09\0Agpr\09r14d\094\090x0E8\090\09\0Agpr\09r14w\092\090x0E8\090\09\0Agpr\09r14b\091\090x0E8\090\09\0Agpr\09r15\098\090x0F0\090\09\0Agpr\09r15d\094\090x0F0\090\09\0Agpr\09r15w\092\090x0F0\090\09\0Agpr\09r15b\091\090x0F0\090\09\0Agpr\09rip\098\090x0F8\090\09\0Agpr\09eip\094\090x0F8\090\09\0Agpr\09csip\098\090x000\090\09\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*)* @r_debug_bochs_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_debug_bochs_reg_profile(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 16
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 64
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12, %1
  %19 = call i8* @strdup(i8* getelementptr inbounds ([1444 x i8], [1444 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %2, align 8
  br label %21

20:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
