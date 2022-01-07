; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_xembed_handle_message.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_xembed_handle_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@_XEMBED = common dso_local global i32 0, align 4
@XEMBED_EMBEDDED_NOTIFY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Parent windows supports XEmbed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.TYPE_5__*)* @vo_x11_xembed_handle_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_xembed_handle_message(%struct.vo* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.vo_x11_state*, align 8
  %6 = alloca i64, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.vo_x11_state*, %struct.vo_x11_state** %8, align 8
  store %struct.vo_x11_state* %9, %struct.vo_x11_state** %5, align 8
  %10 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %11 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %16 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %24 = load i32, i32* @_XEMBED, align 4
  %25 = call i64 @XA(%struct.vo_x11_state* %23, i32 %24)
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %14, %2
  br label %41

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @XEMBED_EMBEDDED_NOTIFY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  %40 = call i32 @MP_VERBOSE(%struct.vo_x11_state* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %27, %38, %28
  ret void
}

declare dso_local i64 @XA(%struct.vo_x11_state*, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo_x11_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
