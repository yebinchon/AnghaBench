; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_riscv.c_get_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_riscv.c_get_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1249 x i8] c"=PC\09pc\0A=SP\09sp\0A=LR\09ra\0A=BP\09s0\0Agpr\09pc\09.32\090\090\0Agpr\09ra\09.32\094\090\0Agpr\09sp\09.32\098\090\0Agpr\09gp\09.32\0912\090\0Agpr\09tp\09.32\0916\090\0Agpr\09t0\09.32\0920\090\0Agpr\09t1\09.32\0924\090\0Agpr\09t2\09.32\0928\090\0Agpr\09s0\09.32\0932\090\0Agpr\09s1\09.32\0936\090\0Agpr\09a0\09.32\0940\090\0Agpr\09a1\09.32\0944\090\0Agpr\09a2\09.32\0948\090\0Agpr\09a3\09.32\0952\090\0Agpr\09a4\09.32\0956\090\0Agpr\09a5\09.32\0960\090\0Agpr\09a6\09.32\0964\090\0Agpr\09a7\09.32\0968\090\0Agpr\09s2\09.32\0972\090\0Agpr\09s3\09.32\0976\090\0Agpr\09s4\09.32\0980\090\0Agpr\09s5\09.32\0984\090\0Agpr\09s6\09.32\0988\090\0Agpr\09s7\09.32\0992\090\0Agpr\09s8\09.32\0996\090\0Agpr\09s9\09.32\09100\090\0Agpr\09s10\09.32\09104\090\0Agpr\09s11\09.32\09108\090\0Agpr\09t3\09.32\09112\090\0Agpr\09t4\09.32\09116\090\0Agpr\09t5\09.32\09120\090\0Agpr\09t6\09.32\09124\090\0Agpr\09ft0\09.64\09128\090\0Agpr\09ft1\09.64\09136\090\0Agpr\09ft2\09.64\09144\090\0Agpr\09ft3\09.64\09152\090\0Agpr\09ft4\09.64\09160\090\0Agpr\09ft5\09.64\09168\090\0Agpr\09ft6\09.64\09176\090\0Agpr\09ft7\09.64\09184\090\0Agpr\09fs0\09.64\09192\090\0Agpr\09fs1\09.64\09200\090\0Agpr\09fa0\09.64\09208\090\0Agpr\09fa1\09.64\09216\090\0Agpr\09fa2\09.64\09224\090\0Agpr\09fa3\09.64\09232\090\0Agpr\09fa4\09.64\09240\090\0Agpr\09fa5\09.64\09248\090\0Agpr\09fa6\09.64\09256\090\0Agpr\09fa7\09.64\09264\090\0Agpr\09fs2\09.64\09272\090\0Agpr\09fs3\09.64\09280\090\0Agpr\09fs4\09.64\09288\090\0Agpr\09fs5\09.64\09296\090\0Agpr\09fs6\09.64\09304\090\0Agpr\09fs7\09.64\09312\090\0Agpr\09fs8\09.64\09320\090\0Agpr\09fs9\09.64\09328\090\0Agpr\09fs10\09.64\09336\090\0Agpr\09fs11\09.64\09344\090\0Agpr\09ft8\09.64\09352\090\0Agpr\09ft9\09.64\09360\090\0Agpr\09ft10\09.64\09368\090\0Agpr\09ft11\09.64\09376\090\0Agpr\09fcsr\09.32\09384\090\0Aflg\09nx\09.1\093072\090\0Aflg\09uf\09.1\093073\090\0Aflg\09of\09.1\093074\090\0Aflg\09dz\09.1\093075\090\0Aflg\09nv\09.1\093076\090\0Aflg\09frm\09.3\093077\090\0A\00", align 1
@.str.1 = private unnamed_addr constant [1262 x i8] c"=PC\09pc\0A=SP\09sp\0A=LR\09ra\0A=BP\09s0\0Agpr\09pc\09.64\090\090\0Agpr\09ra\09.64\098\090\0Agpr\09sp\09.64\0916\090\0Agpr\09gp\09.64\0924\090\0Agpr\09tp\09.64\0932\090\0Agpr\09t0\09.64\0940\090\0Agpr\09t1\09.64\0948\090\0Agpr\09t2\09.64\0956\090\0Agpr\09s0\09.64\0964\090\0Agpr\09s1\09.64\0972\090\0Agpr\09a0\09.64\0980\090\0Agpr\09a1\09.64\0988\090\0Agpr\09a2\09.64\0996\090\0Agpr\09a3\09.64\09104\090\0Agpr\09a4\09.64\09112\090\0Agpr\09a5\09.64\09120\090\0Agpr\09a6\09.64\09128\090\0Agpr\09a7\09.64\09136\090\0Agpr\09s2\09.64\09144\090\0Agpr\09s3\09.64\09152\090\0Agpr\09s4\09.64\09160\090\0Agpr\09s5\09.64\09168\090\0Agpr\09s6\09.64\09176\090\0Agpr\09s7\09.64\09184\090\0Agpr\09s8\09.64\09192\090\0Agpr\09s9\09.64\09200\090\0Agpr\09s10\09.64\09208\090\0Agpr\09s11\09.64\09216\090\0Agpr\09t3\09.64\09224\090\0Agpr\09t4\09.64\09232\090\0Agpr\09t5\09.64\09240\090\0Agpr\09t6\09.64\09248\090\0Agpr\09ft0\09.64\09256\090\0Agpr\09ft1\09.64\09264\090\0Agpr\09ft2\09.64\09272\090\0Agpr\09ft3\09.64\09280\090\0Agpr\09ft4\09.64\09288\090\0Agpr\09ft5\09.64\09296\090\0Agpr\09ft6\09.64\09304\090\0Agpr\09ft7\09.64\09312\090\0Agpr\09fs0\09.64\09320\090\0Agpr\09fs1\09.64\09328\090\0Agpr\09fa0\09.64\09336\090\0Agpr\09fa1\09.64\09344\090\0Agpr\09fa2\09.64\09352\090\0Agpr\09fa3\09.64\09360\090\0Agpr\09fa4\09.64\09368\090\0Agpr\09fa5\09.64\09376\090\0Agpr\09fa6\09.64\09384\090\0Agpr\09fa7\09.64\09392\090\0Agpr\09fs2\09.64\09400\090\0Agpr\09fs3\09.64\09408\090\0Agpr\09fs4\09.64\09416\090\0Agpr\09fs5\09.64\09424\090\0Agpr\09fs6\09.64\09432\090\0Agpr\09fs7\09.64\09440\090\0Agpr\09fs8\09.64\09448\090\0Agpr\09fs9\09.64\09456\090\0Agpr\09fs10\09.64\09464\090\0Agpr\09fs11\09.64\09472\090\0Agpr\09ft8\09.64\09480\090\0Agpr\09ft9\09.64\09488\090\0Agpr\09ft10\09.64\09496\090\0Agpr\09ft11\09.64\09504\090\0Agpr\09fcsr\09.32\09512\090\0Aflg\09nx\09.1\094096\090\0Aflg\09uf\09.1\094097\090\0Aflg\09of\09.1\094098\090\0Aflg\09dz\09.1\094099\090\0Aflg\09nv\09.1\094100\090\0Aflg\09frm\09.3\094101\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @get_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %9 [
    i32 32, label %7
    i32 64, label %8
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([1249 x i8], [1249 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %9

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([1262 x i8], [1262 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %9

9:                                                ; preds = %1, %8, %7
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @strdup(i8* %18)
  br label %21

20:                                               ; preds = %12, %9
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i8* [ %19, %17 ], [ null, %20 ]
  ret i8* %22
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
