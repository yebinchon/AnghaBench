; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [390 x i8] c"=PC\09mpc\0A=SP\09sp\0A=A0\09af\0A=A1\09bc\0A=A2\09de\0A=A3\09hl\0Agpr\09mpc\09.32\090\090\0Agpr\09pc\09.16\090\090\0Agpr\09m\09.16\092\090\0Agpr\09sp\09.16\094\090\0Agpr\09af\09.16\096\090\0Agpr\09f\09.8\096\090\0Agpr\09a\09.8\097\090\0Agpr\09Z\09.1\09.55\090\0Agpr\09N\09.1\09.54\090\0Agpr\09H\09.1\09.53\090\0Agpr\09C\09.1\09.52\090\0Agpr\09bc\09.16\098\090\0Agpr\09c\09.8\098\090\0Agpr\09b\09.8\099\090\0Agpr\09de\09.16\0910\090\0Agpr\09e\09.8\0910\090\0Agpr\09d\09.8\0911\090\0Agpr\09hl\09.16\0912\090\0Agpr\09l\09.8\0912\090\0Agpr\09h\09.8\0913\090\0Agpr\09mbcrom\09.16\0914\090\0Agpr\09mbcram\09.16\0916\090\0Agpr\09ime\09.1\0918\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* getelementptr inbounds ([390 x i8], [390 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
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
