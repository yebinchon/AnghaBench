; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.c_msg_fp.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_error.c_msg_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msgfp = common dso_local global i32* null, align 8
@M_FATAL = common dso_local global i32 0, align 4
@M_USAGE_SMALL = common dso_local global i32 0, align 4
@default_err = common dso_local global i32* null, align 8
@default_out = common dso_local global i32* null, align 8
@OPENVPN_EXIT_STATUS_CANNOT_OPEN_DEBUG_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @msg_fp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @msgfp, align 8
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @M_FATAL, align 4
  %10 = load i32, i32* @M_USAGE_SMALL, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = load i32*, i32** @default_err, align 8
  br label %18

16:                                               ; preds = %7
  %17 = load i32*, i32** @default_out, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32* [ %15, %14 ], [ %17, %16 ]
  store i32* %19, i32** %3, align 8
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32*, i32** %3, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @OPENVPN_EXIT_STATUS_CANNOT_OPEN_DEBUG_FILE, align 4
  %25 = call i32 @openvpn_exit(i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32*, i32** %3, align 8
  ret i32* %27
}

declare dso_local i32 @openvpn_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
