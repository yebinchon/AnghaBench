; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_8051.c_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_8051.c_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [411 x i8] c"=PC\09pc\0A=SP\09sp\0Agpr\09r0\09.8\090\090\0Agpr\09r1\09.8\091\090\0Agpr\09r2\09.8\092\090\0Agpr\09r3\09.8\093\090\0Agpr\09r4\09.8\094\090\0Agpr\09r5\09.8\095\090\0Agpr\09r6\09.8\096\090\0Agpr\09r7\09.8\097\090\0Agpr\09a\09.8\098\090\0Agpr\09b\09.8\099\090\0Agpr\09dptr\09.16\0910\090\0Agpr\09dpl\09.8\0910\090\0Agpr\09dph\09.8\0911\090\0Agpr\09psw\09.8\0912\090\0Agpr\09p\09.1\09.96\090\0Agpr\09ov\09.1\09.98\090\0Agpr\09ac\09.1\09.102\090\0Agpr\09c\09.1\09.103\090\0Agpr\09sp\09.8\0913\090\0Agpr\09pc\09.16\0915\090\0Agpr\09_code\09.32\0920 0\0Agpr\09_idata\09.32 24 0\0Agpr\09_sfr\09.32\0928 0\0Agpr\09_xdata\09.32 32 0\0Agpr\09_pdata\09.32\0936 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_profile(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i8* getelementptr inbounds ([411 x i8], [411 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @r_reg_set_profile_string(i32 %7, i8* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = call i32 @set_cpu_model(%struct.TYPE_4__* %13, i32 1)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %4, align 4
  ret i32 %16
}

declare dso_local i32 @r_reg_set_profile_string(i32, i8*) #1

declare dso_local i32 @set_cpu_model(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
