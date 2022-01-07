; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xtensa.c_get_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xtensa.c_get_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [484 x i8] c"# a0\09\09return address\0A# a1\09\09stack pointer\0A# a2-a7\09arguments\0A# a2-a5\09return value (call0 ABI)\0A# a12-a15\09callee-saved (call0 ABI)\0A=PC\09pc\0A=BP\09a14\0A=SP\09a1\0A=A0\09a2\0A=A1\09a3\0A=A2\09a4\0A=A3\09a5\0A=A4\09a6\0A=A5\09a7\0Agpr\09a0\09.32\090\090\0Agpr\09a1\09.32\094\090\0Agpr\09a2\09.32\098\090\0Agpr\09a3\09.32\0916\090\0Agpr\09a4\09.32\0920\090\0Agpr\09a5\09.32\0924\090\0Agpr\09a6\09.32\0928\090\0Agpr\09a7\09.32\0932\090\0Agpr\09a8\09.32\0936\090\0Agpr\09a9\09.32\0940\090\0Agpr\09a10\09.32\0944\090\0Agpr\09a11\09.32\0948\090\0Agpr\09a12\09.32\0952\090\0Agpr\09a13\09.32\0956\090\0Agpr\09a14\09.32\0960\090\0Agpr\09a15\09.32\0964\090\0Agpr\09pc\09.32\0968\090\0Agpr\09sar\09.32\0972\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @get_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_reg_profile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i8* @strdup(i8* getelementptr inbounds ([484 x i8], [484 x i8]* @.str, i64 0, i64 0))
  ret i8* %3
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
