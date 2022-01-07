; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ping.c_check_ping_restart_dowork.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ping.c_check_ping_restart_dowork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gc_arena = type { i32 }

@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%sInactivity timeout (--ping-exit), exiting\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ping-exit\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"%sInactivity timeout (--ping-restart), restarting\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ping-restart\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_ping_restart_dowork(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.gc_arena, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %4 = call i32 (...) @gc_new()
  %5 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %38 [
    i32 129, label %10
    i32 128, label %24
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @M_INFO, align 4
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = call i32 @format_common_name(%struct.context* %12, %struct.gc_arena* %3)
  %14 = call i32 @msg(i32 %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @SIGTERM, align 4
  %16 = load %struct.context*, %struct.context** %2, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %15, i32* %19, align 8
  %20 = load %struct.context*, %struct.context** %2, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  br label %40

24:                                               ; preds = %1
  %25 = load i32, i32* @M_INFO, align 4
  %26 = load %struct.context*, %struct.context** %2, align 8
  %27 = call i32 @format_common_name(%struct.context* %26, %struct.gc_arena* %3)
  %28 = call i32 @msg(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @SIGUSR1, align 4
  %30 = load %struct.context*, %struct.context** %2, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 8
  %34 = load %struct.context*, %struct.context** %2, align 8
  %35 = getelementptr inbounds %struct.context, %struct.context* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %37, align 8
  br label %40

38:                                               ; preds = %1
  %39 = call i32 @ASSERT(i32 0)
  br label %40

40:                                               ; preds = %38, %24, %10
  %41 = call i32 @gc_free(%struct.gc_arena* %3)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @format_common_name(%struct.context*, %struct.gc_arena*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
