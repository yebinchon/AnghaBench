; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.c_error_reset.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.c_error_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@std_redir = common dso_local global i32 0, align 4
@use_syslog = common dso_local global i32 0, align 4
@suppress_timestamps = common dso_local global i32 0, align 4
@machine_readable_output = common dso_local global i32 0, align 4
@x_debug_level = common dso_local global i32 0, align 4
@mute_cutoff = common dso_local global i64 0, align 8
@mute_count = common dso_local global i64 0, align 8
@mute_category = common dso_local global i64 0, align 8
@OPENVPN_MSG_FP = common dso_local global i8* null, align 8
@default_out = common dso_local global i8* null, align 8
@default_err = common dso_local global i8* null, align 8
@msgfp = common dso_local global i32* null, align 8
@OPENVPN_DEBUG_FILE = common dso_local global i32 0, align 4
@OPENVPN_EXIT_STATUS_CANNOT_OPEN_DEBUG_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @error_reset() #0 {
  store i32 0, i32* @std_redir, align 4
  store i32 0, i32* @use_syslog, align 4
  store i32 0, i32* @suppress_timestamps, align 4
  store i32 0, i32* @machine_readable_output, align 4
  store i32 1, i32* @x_debug_level, align 4
  store i64 0, i64* @mute_cutoff, align 8
  store i64 0, i64* @mute_count, align 8
  store i64 0, i64* @mute_category, align 8
  %1 = load i8*, i8** @OPENVPN_MSG_FP, align 8
  store i8* %1, i8** @default_out, align 8
  %2 = load i8*, i8** @OPENVPN_MSG_FP, align 8
  store i8* %2, i8** @default_err, align 8
  store i32* null, i32** @msgfp, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
