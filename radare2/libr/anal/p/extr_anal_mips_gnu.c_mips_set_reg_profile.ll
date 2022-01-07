; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_mips_gnu.c_mips_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_mips_gnu.c_mips_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [598 x i8] c"=PC\09pc\0A=SP\09sp\0A=BP\09fp\0A=A0\09a0\0A=A1\09a1\0A=A2\09a2\0A=A3\09a3\0Agpr\09zero\09.64\090\090\0Agpr\09at\09.64\098\090\0Agpr\09v0\09.64\0916\090\0Agpr\09v1\09.64\0924\090\0Agpr\09a0\09.64\0932\090\0Agpr\09a1\09.64\0940\090\0Agpr\09a2\09.64\0948\090\0Agpr\09a3\09.64\0956\090\0Agpr\09t0\09.64\0964\090\0Agpr\09t1\09.64\0972\090\0Agpr\09t2\09.64\0980\090\0Agpr\09t3\09.64\0988\090\0Agpr\09t4\09.64\0996\090\0Agpr\09t5\09.64\09104\090\0Agpr\09t6\09.64\09112\090\0Agpr\09t7\09.64\09120\090\0Agpr\09s0\09.64\09128\090\0Agpr\09s1\09.64\09136\090\0Agpr\09s2\09.64\09144\090\0Agpr\09s3\09.64\09152\090\0Agpr\09s4\09.64\09160\090\0Agpr\09s5\09.64\09168\090\0Agpr\09s6\09.64\09176\090\0Agpr\09s7\09.64\09184\090\0Agpr\09t8\09.64\09192\090\0Agpr\09t9\09.64\09200\090\0Agpr\09k0\09.64\09208\090\0Agpr\09k1\09.64\09216\090\0Agpr\09gp\09.64\09224\090\0Agpr\09sp\09.64\09232\090\0Agpr\09fp\09.64\09240\090\0Agpr\09ra\09.64\09248\090\0Agpr\09pc\09.64\09272\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @mips_set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_set_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* getelementptr inbounds ([598 x i8], [598 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
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
