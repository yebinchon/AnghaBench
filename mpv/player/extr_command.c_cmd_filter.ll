; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_filter.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, i32, %struct.TYPE_4__*, i64, %struct.MPContext* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.MPContext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %7, %struct.mp_cmd_ctx** %3, align 8
  %8 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %8, i32 0, i32 4
  %10 = load %struct.MPContext*, %struct.MPContext** %9, align 8
  store %struct.MPContext* %10, %struct.MPContext** %4, align 8
  %11 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @edit_filters_osd(%struct.MPContext* %16, i32 %17, i32 %24, i32 %31, i32 %34)
  %36 = icmp sge i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  ret void
}

declare dso_local i64 @edit_filters_osd(%struct.MPContext*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
