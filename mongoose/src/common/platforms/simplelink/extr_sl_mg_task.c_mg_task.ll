; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/simplelink/extr_sl_mg_task.c_mg_task.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/simplelink/extr_sl_mg_task.c_mg_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_q_msg = type { i32, i32, i32 (%struct.mg_mgr.0*, i32)* }
%struct.mg_mgr.0 = type opaque

@s_mg_q = common dso_local global i32 0, align 4
@OSI_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mg_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mg_mgr, align 4
  %4 = alloca i32 (%struct.mg_mgr*)*, align 8
  %5 = alloca %struct.mg_q_msg, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32 (%struct.mg_mgr*)*
  store i32 (%struct.mg_mgr*)* %7, i32 (%struct.mg_mgr*)** %4, align 8
  %8 = call i32 @mg_mgr_init(%struct.mg_mgr* %3, i32* null)
  %9 = load i32 (%struct.mg_mgr*)*, i32 (%struct.mg_mgr*)** %4, align 8
  %10 = call i32 %9(%struct.mg_mgr* %3)
  br label %11

11:                                               ; preds = %1, %16, %27
  %12 = call i32 @mg_mgr_poll(%struct.mg_mgr* %3, i32 1)
  %13 = call i64 @osi_MsgQRead(i32* @s_mg_q, %struct.mg_q_msg* %5, i32 1)
  %14 = load i64, i64* @OSI_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %11

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mg_q_msg, %struct.mg_q_msg* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %27 [
    i32 128, label %20
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.mg_q_msg, %struct.mg_q_msg* %5, i32 0, i32 2
  %22 = load i32 (%struct.mg_mgr.0*, i32)*, i32 (%struct.mg_mgr.0*, i32)** %21, align 8
  %23 = bitcast %struct.mg_mgr* %3 to %struct.mg_mgr.0*
  %24 = getelementptr inbounds %struct.mg_q_msg, %struct.mg_q_msg* %5, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %22(%struct.mg_mgr.0* %23, i32 %25)
  br label %27

27:                                               ; preds = %20, %17
  br label %11
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

declare dso_local i64 @osi_MsgQRead(i32*, %struct.mg_q_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
