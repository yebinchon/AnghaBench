; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_push.c_realloc_silence.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_push.c_realloc_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.TYPE_2__, %struct.ao_push_state* }
%struct.TYPE_2__ = type { i32 }
%struct.ao_push_state = type { i32, i32* }

@MP_NUM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32)* @realloc_silence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realloc_silence(%struct.ao* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ao_push_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ao*, %struct.ao** %4, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 2
  %11 = load %struct.ao_push_state*, %struct.ao_push_state** %10, align 8
  store %struct.ao_push_state* %11, %struct.ao_push_state** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.ao*, %struct.ao** %4, align 8
  %16 = getelementptr inbounds %struct.ao, %struct.ao* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @af_fmt_is_pcm(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %86

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ao_push_state*, %struct.ao_push_state** %6, align 8
  %24 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %21
  %28 = load %struct.ao_push_state*, %struct.ao_push_state** %6, align 8
  %29 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @talloc_free(i32 %32)
  %34 = load %struct.ao*, %struct.ao** %4, align 8
  %35 = getelementptr inbounds %struct.ao, %struct.ao* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @af_fmt_to_bytes(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load %struct.ao*, %struct.ao** %4, align 8
  %41 = getelementptr inbounds %struct.ao, %struct.ao* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %39, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.ao_push_state*, %struct.ao_push_state** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @talloc_size(%struct.ao_push_state* %45, i32 %46)
  %48 = load %struct.ao_push_state*, %struct.ao_push_state** %6, align 8
  %49 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  store i32 1, i32* %8, align 4
  br label %52

52:                                               ; preds = %68, %27
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MP_NUM_CHANNELS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.ao_push_state*, %struct.ao_push_state** %6, align 8
  %58 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ao_push_state*, %struct.ao_push_state** %6, align 8
  %63 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.ao_push_state*, %struct.ao_push_state** %6, align 8
  %74 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ao_push_state*, %struct.ao_push_state** %6, align 8
  %76 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ao*, %struct.ao** %4, align 8
  %82 = getelementptr inbounds %struct.ao, %struct.ao* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @af_fill_silence(i32 %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %71, %21
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %20
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @af_fmt_is_pcm(i32) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @af_fmt_to_bytes(i32) #1

declare dso_local i32 @talloc_size(%struct.ao_push_state*, i32) #1

declare dso_local i32 @af_fill_silence(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
