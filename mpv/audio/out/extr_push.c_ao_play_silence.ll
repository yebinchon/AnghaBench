; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_push.c_ao_play_silence.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_push.c_ao_play_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.TYPE_2__*, %struct.ao_push_state*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.ao*, i8**, i32, i32)* }
%struct.ao_push_state = type { i64 }

@ao_api_push = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ao_play_silence(%struct.ao* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ao_push_state*, align 8
  store %struct.ao* %0, %struct.ao** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ao*, %struct.ao** %4, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, @ao_api_push
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.ao*, %struct.ao** %4, align 8
  %14 = getelementptr inbounds %struct.ao, %struct.ao* %13, i32 0, i32 1
  %15 = load %struct.ao_push_state*, %struct.ao_push_state** %14, align 8
  store %struct.ao_push_state* %15, %struct.ao_push_state** %6, align 8
  %16 = load %struct.ao*, %struct.ao** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @realloc_silence(%struct.ao* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.ao*, %struct.ao** %4, align 8
  %22 = getelementptr inbounds %struct.ao, %struct.ao* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.ao*, i8**, i32, i32)*, i32 (%struct.ao*, i8**, i32, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.ao*, i8**, i32, i32)* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %41

28:                                               ; preds = %20
  %29 = load %struct.ao*, %struct.ao** %4, align 8
  %30 = getelementptr inbounds %struct.ao, %struct.ao* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ao*, i8**, i32, i32)*, i32 (%struct.ao*, i8**, i32, i32)** %32, align 8
  %34 = load %struct.ao*, %struct.ao** %4, align 8
  %35 = load %struct.ao_push_state*, %struct.ao_push_state** %6, align 8
  %36 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8**
  %39 = load i32, i32* %5, align 4
  %40 = call i32 %33(%struct.ao* %34, i8** %38, i32 %39, i32 0)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %28, %27
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @realloc_silence(%struct.ao*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
