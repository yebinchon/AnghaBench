; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_section_find.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/config/extr_appconfig.c_appconfig_section_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i32 }
%struct.config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.section* (%struct.config*, i8*)* @appconfig_section_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.section* @appconfig_section_find(%struct.config* %0, i8* %1) #0 {
  %3 = alloca %struct.config*, align 8
  %4 = alloca i8*, align 8
  store %struct.config* %0, %struct.config** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.config*, %struct.config** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct.section* @appconfig_index_find(%struct.config* %5, i8* %6, i32 0)
  ret %struct.section* %7
}

declare dso_local %struct.section* @appconfig_index_find(%struct.config*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
