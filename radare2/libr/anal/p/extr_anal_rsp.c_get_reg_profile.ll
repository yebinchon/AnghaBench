; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_rsp.c_get_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_rsp.c_get_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_reg_profile.p = internal global i8* getelementptr inbounds ([1609 x i8], [1609 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [1609 x i8] c"=PC    pc\0A=SP    sp\0A=A0    a0\0A=A1    a1\0A=A2    a2\0A=A3    a3\0A=R0    v0\0A=R1    v1\0Agpr\09zero\09.32\090\090\0Agpr\09at\09.32\094\090\0Agpr\09v0\09.32\098\090\0Agpr\09v1\09.32\0912\090\0Agpr\09a0\09.32\0916\090\0Agpr\09a1\09.32\0920\090\0Agpr\09a2\09.32\0924\090\0Agpr\09a3\09.32\0928\090\0Agpr\09t0\09.32\0932\090\0Agpr\09t1\09.32\0936\090\0Agpr\09t2\09.32\0940\090\0Agpr\09t3\09.32\0944\090\0Agpr\09t4\09.32\0948\090\0Agpr\09t5\09.32\0952\090\0Agpr\09t6\09.32\0956\090\0Agpr\09t7\09.32\0960\090\0Agpr\09s0\09.32\0964\090\0Agpr\09s1\09.32\0968\090\0Agpr\09s2\09.32\0972\090\0Agpr\09s3\09.32\0976\090\0Agpr\09s4\09.32\0980\090\0Agpr\09s5\09.32\0984\090\0Agpr\09s6\09.32\0988\090\0Agpr\09s7\09.32\0992\090\0Agpr\09t8\09.32\0996\090\0Agpr\09t9\09.32\09100\090\0Agpr\09k0\09.32\09104\090\0Agpr\09k1\09.32\09108\090\0Agpr\09gp\09.32\09112\090\0Agpr\09sp\09.32\09116\090\0Agpr\09s8\09.32\09120\090\0Agpr\09ra\09.32\09124\090\0Agpr\09pc\09.32\09128\090\0Agpr\09$c0\09.32\09132\090\0Agpr\09$c1\09.32\09136\090\0Agpr\09$c2\09.32\09140\090\0Agpr\09$c3\09.32\09144\090\0Agpr\09$c4\09.32\09148\090\0Agpr\09$c5\09.32\09152\090\0Agpr\09$c6\09.32\09156\090\0Agpr\09$c7\09.32\09160\090\0Agpr\09$c8\09.32\09164\090\0Agpr\09$c9\09.32\09168\090\0Agpr\09$c10\09.32\09172\090\0Agpr\09$c11\09.32\09176\090\0Agpr\09$c12\09.32\09180\090\0Agpr\09$c13\09.32\09184\090\0Agpr\09$c14\09.32\09188\090\0Agpr\09$c15\09.32\09192\090\0Agpr\09$v0\09.128\09196\090\0Agpr\09$v1\09.128\09212\090\0Agpr\09$v2\09.128\09228\090\0Agpr\09$v3\09.128\09244\090\0Agpr\09$v4\09.128\09260\090\0Agpr\09$v5\09.128\09276\090\0Agpr\09$v6\09.128\09292\090\0Agpr\09$v7\09.128\09308\090\0Agpr\09$v8\09.128\09324\090\0Agpr\09$v9\09.128\09340\090\0Agpr\09$v10\09.128\09356\090\0Agpr\09$v11\09.128\09372\090\0Agpr\09$v12\09.128\09388\090\0Agpr\09$v13\09.128\09404\090\0Agpr\09$v14\09.128\09420\090\0Agpr\09$v15\09.128\09436\090\0Agpr\09$v16\09.128\09452\090\0Agpr\09$v17\09.128\09468\090\0Agpr\09$v18\09.128\09484\090\0Agpr\09$v19\09.128\09500\090\0Agpr\09$v20\09.128\09516\090\0Agpr\09$v21\09.128\09532\090\0Agpr\09$v22\09.128\09548\090\0Agpr\09$v23\09.128\09564\090\0Agpr\09$v24\09.128\09580\090\0Agpr\09$v25\09.128\09596\090\0Agpr\09$v26\09.128\09612\090\0Agpr\09$v27\09.128\09628\090\0Agpr\09$v28\09.128\09644\090\0Agpr\09$v29\09.128\09660\090\0Agpr\09$v30\09.128\09676\090\0Agpr\09$v31\09.128\09692\090\0Agpr    $vco\09.128\09708\090\0Agpr    $vcc\09.128\09724\090\0Agpr    $vce\09.128\09740\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @get_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_reg_profile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i8*, i8** @get_reg_profile.p, align 8
  %4 = call i8* @strdup(i8* %3)
  ret i8* %4
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
