; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_v810.c_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_v810.c_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [802 x i8] c"=PC\09pc\0A=SP\09r3\0A=ZF\09z\0A=SF\09s\0A=OF\09ov\0A=CF\09cy\0Agpr\09r0\09.32\090   0\0Agpr\09r1\09.32\094   0\0Agpr\09r2\09.32\098   0\0Agpr\09r3\09.32\0912  0\0Agpr\09r4\09.32\0916  0\0Agpr\09r5\09.32\0920  0\0Agpr\09r6\09.32\0924  0\0Agpr\09r7\09.32\0928  0\0Agpr\09r8\09.32\0932  0\0Agpr\09r9\09.32\0936  0\0Agpr\09r10\09.32\0940  0\0Agpr\09r11\09.32\0944  0\0Agpr\09r12\09.32\0948  0\0Agpr\09r13\09.32\0952  0\0Agpr\09r14\09.32\0956  0\0Agpr\09r15\09.32\0960  0\0Agpr\09r16\09.32\0964  0\0Agpr\09r17\09.32\0968  0\0Agpr\09r18\09.32\0972  0\0Agpr\09r19\09.32\0976  0\0Agpr\09r20\09.32\0980  0\0Agpr\09r21\09.32\0984  0\0Agpr\09r22\09.32\0988  0\0Agpr\09r23\09.32\0992  0\0Agpr\09r24\09.32\0996  0\0Agpr\09r25\09.32\09100 0\0Agpr\09r26\09.32\09104 0\0Agpr\09r27\09.32\09108 0\0Agpr\09r28\09.32\09112 0\0Agpr\09r29\09.32\09116 0\0Agpr\09r30\09.32\09120 0\0Agpr\09r31\09.32\09124 0\0Agpr\09pc\09.32\09128 0\0Agpr\09psw .32 132 0\0Agpr\09np  .1 132.16 0\0Agpr\09ep  .1 132.17 0\0Agpr\09ae  .1 132.18 0\0Agpr\09id  .1 132.19 0\0Aflg\09cy  .1 132.28 0\0Aflg\09ov  .1 132.29 0\0Aflg\09s   .1 132.30 0\0Aflg\09z   .1 132.31 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* getelementptr inbounds ([802 x i8], [802 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
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
