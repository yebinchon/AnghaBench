; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_process_version.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_process_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciffile = type { i32 }
%struct.inf_section = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"DisplayName\00", align 1
@DEFAULT_INSTALLER_DESC = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciffile*, %struct.inf_section*)* @process_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_version(%struct.ciffile* %0, %struct.inf_section* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ciffile*, align 8
  %5 = alloca %struct.inf_section*, align 8
  store %struct.ciffile* %0, %struct.ciffile** %4, align 8
  store %struct.inf_section* %1, %struct.inf_section** %5, align 8
  %6 = load %struct.inf_section*, %struct.inf_section** %5, align 8
  %7 = load %struct.ciffile*, %struct.ciffile** %4, align 8
  %8 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %7, i32 0, i32 0
  %9 = load i32, i32* @DEFAULT_INSTALLER_DESC, align 4
  %10 = call i32 @section_get_str(%struct.inf_section* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %3, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @S_OK, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @section_get_str(%struct.inf_section*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
