; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_play.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, %struct.TYPE_2__*, i32, %struct.ao_pull_state* }
%struct.TYPE_2__ = type { i32 (%struct.ao*)* }
%struct.ao_pull_state = type { i32, i32, i32, i32* }

@AO_STATE_PLAY = common dso_local global i32 0, align 4
@AOPLAY_FINAL_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Audio underflow by %d samples.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i8**, i32, i32)* @play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play(%struct.ao* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ao_pull_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ao*, %struct.ao** %5, align 8
  %18 = getelementptr inbounds %struct.ao, %struct.ao* %17, i32 0, i32 4
  %19 = load %struct.ao_pull_state*, %struct.ao_pull_state** %18, align 8
  store %struct.ao_pull_state* %19, %struct.ao_pull_state** %9, align 8
  %20 = load %struct.ao*, %struct.ao** %5, align 8
  %21 = call i32 @get_space(%struct.ao* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @MPMIN(i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.ao*, %struct.ao** %5, align 8
  %27 = getelementptr inbounds %struct.ao, %struct.ao* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.ao*, %struct.ao** %5, align 8
  %31 = getelementptr inbounds %struct.ao, %struct.ao* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %57, %4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.ao_pull_state*, %struct.ao_pull_state** %9, align 8
  %39 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i8**, i8*** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @mp_ring_write(i32 %44, i8* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  br label %57

57:                                               ; preds = %37
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %12, align 4
  br label %34

60:                                               ; preds = %34
  %61 = load %struct.ao_pull_state*, %struct.ao_pull_state** %9, align 8
  %62 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %61, i32 0, i32 2
  %63 = call i32 @atomic_load(i32* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @IS_PLAYING(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %60
  %68 = load %struct.ao_pull_state*, %struct.ao_pull_state** %9, align 8
  %69 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %68, i32 0, i32 1
  %70 = call i32 @atomic_store(i32* %69, i32 0)
  %71 = load %struct.ao_pull_state*, %struct.ao_pull_state** %9, align 8
  %72 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %71, i32 0, i32 0
  %73 = call i32 @atomic_store(i32* %72, i32 0)
  %74 = load %struct.ao*, %struct.ao** %5, align 8
  %75 = load i32, i32* @AO_STATE_PLAY, align 4
  %76 = call i32 @set_state(%struct.ao* %74, i32 %75)
  %77 = load %struct.ao*, %struct.ao** %5, align 8
  %78 = getelementptr inbounds %struct.ao, %struct.ao* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %67
  %82 = load %struct.ao*, %struct.ao** %5, align 8
  %83 = getelementptr inbounds %struct.ao, %struct.ao* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %85, align 8
  %87 = load %struct.ao*, %struct.ao** %5, align 8
  %88 = call i32 %86(%struct.ao* %87)
  br label %89

89:                                               ; preds = %81, %67
  br label %90

90:                                               ; preds = %89, %60
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %94, %90
  %100 = phi i1 [ false, %90 ], [ %98, %94 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %15, align 4
  %102 = load %struct.ao_pull_state*, %struct.ao_pull_state** %9, align 8
  %103 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %102, i32 0, i32 1
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @atomic_store(i32* %103, i32 %104)
  %106 = load %struct.ao_pull_state*, %struct.ao_pull_state** %9, align 8
  %107 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %106, i32 0, i32 0
  %108 = call i32 @atomic_fetch_and(i32* %107, i32 0)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %99
  %112 = load %struct.ao*, %struct.ao** %5, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @MP_WARN(%struct.ao* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %99
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local i32 @get_space(%struct.ao*) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @mp_ring_write(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local i32 @IS_PLAYING(i32) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @set_state(%struct.ao*, i32) #1

declare dso_local i32 @atomic_fetch_and(i32*, i32) #1

declare dso_local i32 @MP_WARN(%struct.ao*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
