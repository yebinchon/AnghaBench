; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_pic.c_anal_pic_midrange_set_reg_profile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_pic.c_anal_pic_midrange_set_reg_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [383 x i8] c"=PC\09pc\0A=SP\09stkptr\0Agpr\09indf0\09.8\090\090\0Agpr\09indf1\09.8\091\090\0Agpr\09pcl\09\09.8\092\090\0Agpr\09status\09.8\093\090\0Aflg\09c\09\09.1\093.0\090\0Aflg\09dc\09\09.1\093.1\090\0Aflg\09z\09\09.1\093.2\090\0Aflg\09pd\09\09.1\093.3\090\0Aflg\09to\09\09.1\093.4\090\0Agpr\09fsr0l\09.8\094\090\0Agpr\09fsr0h\09.8\095\090\0Agpr\09fsr1l\09.8\096\090\0Agpr\09fsr1h\09.8\097\090\0Agpr\09bsr\09\09.8\098\090\0Agpr\09wreg\09.8\099\090\0Agpr\09pclath\09.8\0910\090\0Agpr\09intcon\09.8\0911\090\0Agpr\09pc\09\09.16\0912\090\0Agpr\09stkptr\09.8\0914\090\0Agpr\09_sram\09.32 15\090\0Agpr\09_stack\09.32 19\090\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @anal_pic_midrange_set_reg_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anal_pic_midrange_set_reg_profile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* getelementptr inbounds ([383 x i8], [383 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
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
