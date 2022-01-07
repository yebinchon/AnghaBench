; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_vo_chain_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_vo_chain_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_chain = type { i64, i64*, %struct.TYPE_4__*, i64, %struct.track* }
%struct.TYPE_4__ = type { %struct.vo_chain* }
%struct.track = type { %struct.TYPE_3__*, %struct.vo_chain* }
%struct.TYPE_3__ = type { %struct.vo_chain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_chain*)* @vo_chain_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_chain_uninit(%struct.vo_chain* %0) #0 {
  %2 = alloca %struct.vo_chain*, align 8
  %3 = alloca %struct.track*, align 8
  store %struct.vo_chain* %0, %struct.vo_chain** %2, align 8
  %4 = load %struct.vo_chain*, %struct.vo_chain** %2, align 8
  %5 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %4, i32 0, i32 4
  %6 = load %struct.track*, %struct.track** %5, align 8
  store %struct.track* %6, %struct.track** %3, align 8
  %7 = load %struct.track*, %struct.track** %3, align 8
  %8 = icmp ne %struct.track* %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = load %struct.track*, %struct.track** %3, align 8
  %11 = getelementptr inbounds %struct.track, %struct.track* %10, i32 0, i32 1
  %12 = load %struct.vo_chain*, %struct.vo_chain** %11, align 8
  %13 = load %struct.vo_chain*, %struct.vo_chain** %2, align 8
  %14 = icmp eq %struct.vo_chain* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.track*, %struct.track** %3, align 8
  %18 = getelementptr inbounds %struct.track, %struct.track* %17, i32 0, i32 1
  store %struct.vo_chain* null, %struct.vo_chain** %18, align 8
  %19 = load %struct.vo_chain*, %struct.vo_chain** %2, align 8
  %20 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %9
  %24 = load %struct.track*, %struct.track** %3, align 8
  %25 = getelementptr inbounds %struct.track, %struct.track* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.vo_chain*, %struct.vo_chain** %27, align 8
  %29 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vo_chain*, %struct.vo_chain** %2, align 8
  %34 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %23, %9
  %40 = load %struct.track*, %struct.track** %3, align 8
  %41 = getelementptr inbounds %struct.track, %struct.track* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.vo_chain*, %struct.vo_chain** %43, align 8
  %45 = call i32 @talloc_free(%struct.vo_chain* %44)
  %46 = load %struct.track*, %struct.track** %3, align 8
  %47 = getelementptr inbounds %struct.track, %struct.track* %46, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %47, align 8
  br label %48

48:                                               ; preds = %39, %1
  %49 = load %struct.vo_chain*, %struct.vo_chain** %2, align 8
  %50 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.vo_chain*, %struct.vo_chain** %2, align 8
  %55 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @mp_pin_disconnect(i64 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.vo_chain*, %struct.vo_chain** %2, align 8
  %60 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.vo_chain*, %struct.vo_chain** %62, align 8
  %64 = call i32 @talloc_free(%struct.vo_chain* %63)
  %65 = load %struct.vo_chain*, %struct.vo_chain** %2, align 8
  %66 = call i32 @talloc_free(%struct.vo_chain* %65)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @talloc_free(%struct.vo_chain*) #1

declare dso_local i32 @mp_pin_disconnect(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
