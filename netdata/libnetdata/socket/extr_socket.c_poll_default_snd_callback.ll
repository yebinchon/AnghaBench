; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_poll_default_snd_callback.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_poll_default_snd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@POLLOUT = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [82 x i8] c"POLLFD: internal error: poll_default_snd_callback(): nothing to send on socket %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll_default_snd_callback(%struct.TYPE_3__* %0, i16* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i16*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i16* %1, i16** %4, align 8
  %5 = load i16, i16* @POLLOUT, align 2
  %6 = sext i16 %5 to i32
  %7 = xor i32 %6, -1
  %8 = load i16*, i16** %4, align 8
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i32
  %11 = and i32 %10, %7
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %8, align 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @info(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %15)
  ret i32 0
}

declare dso_local i32 @info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
