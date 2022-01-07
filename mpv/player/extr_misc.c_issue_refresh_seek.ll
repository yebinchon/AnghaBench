; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_misc.c_issue_refresh_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_misc.c_issue_refresh_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MPSEEK_ABSOLUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @issue_refresh_seek(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = call i32 @mp_wakeup_core(%struct.MPContext* %11)
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 1
  %22 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 0
  %24 = bitcast %struct.TYPE_2__* %21 to i8*
  %25 = bitcast %struct.TYPE_2__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %27 = call i32 @mp_wakeup_core(%struct.MPContext* %26)
  br label %35

28:                                               ; preds = %13
  %29 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %30 = load i32, i32* @MPSEEK_ABSOLUTE, align 4
  %31 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %32 = call i32 @get_current_time(%struct.MPContext* %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @queue_seek(%struct.MPContext* %29, i32 %30, i32 %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %28, %19, %10
  ret void
}

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @queue_seek(%struct.MPContext*, i32, i32, i32, i32) #1

declare dso_local i32 @get_current_time(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
