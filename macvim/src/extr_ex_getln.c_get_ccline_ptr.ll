; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_get_ccline_ptr.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_get_ccline_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_info = type { i32* }

@State = common dso_local global i32 0, align 4
@CMDLINE = common dso_local global i32 0, align 4
@ccline = common dso_local global %struct.cmdline_info zeroinitializer, align 8
@prev_ccline_used = common dso_local global i64 0, align 8
@prev_ccline = common dso_local global %struct.cmdline_info zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmdline_info* ()* @get_ccline_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmdline_info* @get_ccline_ptr() #0 {
  %1 = alloca %struct.cmdline_info*, align 8
  %2 = load i32, i32* @State, align 4
  %3 = load i32, i32* @CMDLINE, align 4
  %4 = and i32 %2, %3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.cmdline_info* null, %struct.cmdline_info** %1, align 8
  br label %19

7:                                                ; preds = %0
  %8 = load i32*, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 0), align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store %struct.cmdline_info* @ccline, %struct.cmdline_info** %1, align 8
  br label %19

11:                                               ; preds = %7
  %12 = load i64, i64* @prev_ccline_used, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32*, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @prev_ccline, i32 0, i32 0), align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store %struct.cmdline_info* @prev_ccline, %struct.cmdline_info** %1, align 8
  br label %19

18:                                               ; preds = %14, %11
  store %struct.cmdline_info* null, %struct.cmdline_info** %1, align 8
  br label %19

19:                                               ; preds = %18, %17, %10, %6
  %20 = load %struct.cmdline_info*, %struct.cmdline_info** %1, align 8
  ret %struct.cmdline_info* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
