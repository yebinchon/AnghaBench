; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_hook_ack.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_hook_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.MPContext* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.MPContext = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Can be used from client API only.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_hook_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_hook_ack(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %6, %struct.mp_cmd_ctx** %3, align 8
  %7 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %7, i32 0, i32 3
  %9 = load %struct.MPContext*, %struct.MPContext** %8, align 8
  store %struct.MPContext* %9, %struct.MPContext** %4, align 8
  %10 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %18 = call i32 @MP_ERR(%struct.MPContext* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %36

21:                                               ; preds = %1
  %22 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %23 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mp_hook_continue(%struct.MPContext* %22, i32 %27, i32 %34)
  br label %36

36:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_hook_continue(%struct.MPContext*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
