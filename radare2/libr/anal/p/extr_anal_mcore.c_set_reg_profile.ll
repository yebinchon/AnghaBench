; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_mcore.c_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_mcore.c_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1018 x i8] c"=PC\09pc\0A=SP\09r1\0A=SR\09sr\0A=A0\09r3\0A=A1\09r4\0A=A2\09r5\0A=A3\09r6\0A=A4\09r7\0A=A5\09r8\0A=A6\09r6\0Agpr\09r0\09.32 0   0\0Agpr\09r1\09.32 4   0\0Agpr\09r2\09.32 8   0\0Agpr\09r3\09.32 12  0\0Agpr\09r4\09.32 16  0\0Agpr\09r5\09.32 20  0\0Agpr\09r6\09.32 24  0\0Agpr\09r7\09.32 28  0\0Agpr\09r8\09.32 32  0\0Agpr\09r9\09.32 36  0\0Agpr\09r10   .32 40  0\0Agpr\09r11   .32 44  0\0Agpr\09r12   .32 48  0\0Agpr\09r13   .32 52  0\0Agpr\09r14   .32 56  0\0Agpr\09r15   .32 60  0\0Agpr\09psr   .32 64  0\0Agpr\09vbr   .32 68  0\0Agpr\09epsr  .32 72  0\0Agpr\09fpsr  .32 76  0\0Agpr\09epc   .32 80  0\0Agpr\09fpc   .32 84  0\0Agpr\09ss0   .32 88  0\0Agpr\09ss1   .32 92  0\0Agpr\09ss2   .32 96  0\0Agpr\09ss3   .32 100 0\0Agpr\09ss4   .32 104 0\0Agpr\09gcr   .32 108 0\0Agpr\09gsr   .32 112 0\0Agpr\09cpidr .32 116 0\0Agpr\09dcsr  .32 120 0\0Agpr\09cwr   .32 124 0\0Agpr\09cr16  .32 128 0\0Agpr\09cfr   .32 132 0\0Agpr\09ccr   .32 136 0\0Agpr\09capr  .32 140 0\0Agpr\09pacr  .32 144 0\0Agpr\09prsr  .32 148 0\0Agpr\09cr22  .32 152 0\0Agpr\09cr23  .32 156 0\0Agpr\09cr24  .32 160 0\0Agpr\09cr25  .32 164 0\0Agpr\09cr26  .32 168 0\0Agpr\09cr27  .32 172 0\0Agpr\09cr28  .32 176 0\0Agpr\09cr29  .32 180 0\0Agpr\09cr30  .32 184 0\0Agpr\09cr31  .32 188 0\0Agpr\09pc\09.32 192 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* getelementptr inbounds ([1018 x i8], [1018 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @r_reg_set_profile_string(i32 %6, i8* %7)
  ret i32 %8
}

declare dso_local i32 @r_reg_set_profile_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
