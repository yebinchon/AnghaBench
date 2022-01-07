; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_bf.c_r_debug_bf_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_bf.c_r_debug_bf_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [176 x i8] c"=PC\09pc\0A=SP\09esp\0A=BP\09ptr\0Agpr\09pc\09.32\090\090\0Agpr\09ptr\09.32\094\090\0Agpr\09esp\09.32\098\090\0Agpr\09scr\09.32\0912\090\0Agpr\09scri\09.32\0916\090\0Agpr\09inp\09.32\0920\090\0Agpr\09inpi\09.32\0924\090\0Agpr\09mem\09.32\0928\090\0Agpr\09memi\09.32\0932\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @r_debug_bf_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_debug_bf_reg_profile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i8* @strdup(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str, i64 0, i64 0))
  ret i8* %3
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
