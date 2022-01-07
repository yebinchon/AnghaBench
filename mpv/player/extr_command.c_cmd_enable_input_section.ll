; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_enable_input_section.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_enable_input_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { %struct.TYPE_4__*, %struct.MPContext* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.MPContext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_enable_input_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_enable_input_section(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %6, %struct.mp_cmd_ctx** %3, align 8
  %7 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %7, i32 0, i32 1
  %9 = load %struct.MPContext*, %struct.MPContext** %8, align 8
  store %struct.MPContext* %9, %struct.MPContext** %4, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mp_input_enable_section(i32 %12, i32 %19, i32 %26)
  ret void
}

declare dso_local i32 @mp_input_enable_section(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
