; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_usage_version.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_usage_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_INFO = common dso_local global i32 0, align 4
@M_NOPREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@title_string = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Originally developed by James Yonan\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Copyright (C) 2002-2018 OpenVPN Inc <sales@openvpn.net>\00", align 1
@OPENVPN_EXIT_STATUS_USAGE = common dso_local global i32 0, align 4
@CONFIGURE_DEFINES = common dso_local global i32 0, align 4
@CONFIGURE_SPECIAL_BUILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage_version() #0 {
  %1 = load i32, i32* @M_INFO, align 4
  %2 = load i32, i32* @M_NOPREFIX, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @title_string, align 4
  %5 = call i32 (i32, i8*, ...) @msg(i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @M_INFO, align 4
  %7 = load i32, i32* @M_NOPREFIX, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @show_library_versions(i32 %8)
  %10 = load i32, i32* @M_INFO, align 4
  %11 = load i32, i32* @M_NOPREFIX, align 4
  %12 = or i32 %10, %11
  %13 = call i32 (i32, i8*, ...) @msg(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @M_INFO, align 4
  %15 = load i32, i32* @M_NOPREFIX, align 4
  %16 = or i32 %14, %15
  %17 = call i32 (i32, i8*, ...) @msg(i32 %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @OPENVPN_EXIT_STATUS_USAGE, align 4
  %19 = call i32 @openvpn_exit(i32 %18)
  ret void
}

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @show_library_versions(i32) #1

declare dso_local i32 @openvpn_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
