; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arc.c_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arc.c_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [638 x i8] c"=PC\09pcl\0A=SP\09sp\0A=LR\09blink\0A=A0\09r0\0A=A1\09r1\0A=A2\09r2\0A=A3\09r3\0Agpr\09r0\09.32\090\090\0Agpr\09r1\09.32\094\090\0Agpr\09r2\09.32\098\090\0Agpr\09r3\09.32\0912\090\0Agpr\09r4\09.32\0916\090\0Agpr\09r5\09.32\0920\090\0Agpr\09r6\09.32\0924\090\0Agpr\09r7\09.32\0928\090\0Agpr\09r8\09.32\0932\090\0Agpr\09r9\09.32\0936\090\0Agpr\09r10\09.32\0940\090\0Agpr\09r11\09.32\0944\090\0Agpr\09r12\09.32\0948\090\0Agpr\09r13\09.32\0952\090\0Agpr\09r14\09.32\0956\090\0Agpr\09r15\09.32\0960\090\0Agpr\09r16\09.32\0964\090\0Agpr\09r17\09.32\0968\090\0Agpr\09r18\09.32\0972\090\0Agpr\09r19\09.32\0976\090\0Agpr\09r20\09.32\0980\090\0Agpr\09r21\09.32\0984\090\0Agpr\09r22\09.32\0988\090\0Agpr\09r23\09.32\0992\090\0Agpr\09r24\09.32\0996\090\0Agpr\09r25\09.32\09100\090\0Agpr\09gp\09.32\09104\090\0Agpr\09fp\09.32\09108\090\0Agpr\09sp\09.32\09112\090\0Agpr\09ilink1\09.32\09116\090\0Agpr\09ilink2\09.32\09120\090\0Agpr\09blink\09.32\09124\090\0Agpr\09lp_count\09.32\09128\090\0Agpr\09pcl\09.32\09132\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 16
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([638 x i8], [638 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @r_reg_set_profile_string(i32 %13, i8* %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @r_reg_set_profile_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
