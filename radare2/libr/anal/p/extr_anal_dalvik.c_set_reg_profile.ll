; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_dalvik.c_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_dalvik.c_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [694 x i8] c"=PC\09ip\0A=SP\09sp\0A=BP\09bp\0A=A0\09v0\0A=A1\09v1\0A=A2\09v2\0A=A3\09v3\0A=SN\09v0\0Agpr\09v0\09.32\090\090\0Agpr\09v1\09.32\094\090\0Agpr\09v2\09.32\098\090\0Agpr\09v3\09.32\0912\090\0Agpr\09v4\09.32\0916\090\0Agpr\09v5\09.32\0920\090\0Agpr\09v6\09.32\0924\090\0Agpr\09v7\09.32\0928\090\0Agpr\09v8\09.32\0932\090\0Agpr\09v9\09.32\0936\090\0Agpr\09v10\09.32\0940\090\0Agpr\09v11\09.32\0944\090\0Agpr\09v12\09.32\0948\090\0Agpr\09v13\09.32\0952\090\0Agpr\09v14\09.32\0956\090\0Agpr\09v15\09.32\0960\090\0Agpr\09v16\09.32\0940\090\0Agpr\09v17\09.32\0944\090\0Agpr\09v18\09.32\0948\090\0Agpr\09v19\09.32\0952\090\0Agpr\09v20\09.32\0956\090\0Agpr\09v21\09.32\0960\090\0Agpr\09v22\09.32\0964\090\0Agpr\09v23\09.32\0968\090\0Agpr\09v24\09.32\0972\090\0Agpr\09v25\09.32\0976\090\0Agpr\09v26\09.32\0980\090\0Agpr\09v27\09.32\0984\090\0Agpr\09v28\09.32\0988\090\0Agpr\09v29\09.32\0992\090\0Agpr\09v30\09.32\0996\090\0Agpr\09v31\09.32\09100\090\0Agpr\09v32\09.32\09104\090\0Agpr\09v33\09.32\09108\090\0Agpr\09v34\09.32\09112\090\0Agpr\09ip\09.32\09116\090\0Agpr\09sp\09.32\09120\090\0Agpr\09bp\09.32\09124\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* getelementptr inbounds ([694 x i8], [694 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
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
