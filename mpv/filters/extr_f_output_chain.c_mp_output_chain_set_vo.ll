; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_mp_output_chain_set_vo.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_mp_output_chain_set_vo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_output_chain = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.chain* }
%struct.chain = type { %struct.vo*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.vo*, i32*, i32* }
%struct.vo = type { %struct.TYPE_4__*, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@VO_CAP_ROTATE90 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_output_chain_set_vo(%struct.mp_output_chain* %0, %struct.vo* %1) #0 {
  %3 = alloca %struct.mp_output_chain*, align 8
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.chain*, align 8
  store %struct.mp_output_chain* %0, %struct.mp_output_chain** %3, align 8
  store %struct.vo* %1, %struct.vo** %4, align 8
  %6 = load %struct.mp_output_chain*, %struct.mp_output_chain** %3, align 8
  %7 = getelementptr inbounds %struct.mp_output_chain, %struct.mp_output_chain* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.chain*, %struct.chain** %9, align 8
  store %struct.chain* %10, %struct.chain** %5, align 8
  %11 = load %struct.vo*, %struct.vo** %4, align 8
  %12 = icmp ne %struct.vo* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.vo*, %struct.vo** %4, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32* [ %16, %13 ], [ null, %17 ]
  %20 = load %struct.chain*, %struct.chain** %5, align 8
  %21 = getelementptr inbounds %struct.chain, %struct.chain* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32* %19, i32** %22, align 8
  %23 = load %struct.vo*, %struct.vo** %4, align 8
  %24 = icmp ne %struct.vo* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.vo*, %struct.vo** %4, align 8
  %27 = getelementptr inbounds %struct.vo, %struct.vo* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  br label %30

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32* [ %28, %25 ], [ null, %29 ]
  %32 = load %struct.chain*, %struct.chain** %5, align 8
  %33 = getelementptr inbounds %struct.chain, %struct.chain* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32* %31, i32** %34, align 8
  %35 = load %struct.vo*, %struct.vo** %4, align 8
  %36 = icmp ne %struct.vo* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.vo*, %struct.vo** %4, align 8
  %39 = getelementptr inbounds %struct.vo, %struct.vo* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VO_CAP_ROTATE90, align 4
  %44 = and i32 %42, %43
  br label %46

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi i32 [ %44, %37 ], [ 0, %45 ]
  %48 = load %struct.chain*, %struct.chain** %5, align 8
  %49 = getelementptr inbounds %struct.chain, %struct.chain* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.vo*, %struct.vo** %4, align 8
  %52 = load %struct.chain*, %struct.chain** %5, align 8
  %53 = getelementptr inbounds %struct.chain, %struct.chain* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store %struct.vo* %51, %struct.vo** %54, align 8
  %55 = load %struct.vo*, %struct.vo** %4, align 8
  %56 = load %struct.chain*, %struct.chain** %5, align 8
  %57 = getelementptr inbounds %struct.chain, %struct.chain* %56, i32 0, i32 0
  store %struct.vo* %55, %struct.vo** %57, align 8
  %58 = load %struct.chain*, %struct.chain** %5, align 8
  %59 = call i32 @update_output_caps(%struct.chain* %58)
  ret void
}

declare dso_local i32 @update_output_caps(%struct.chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
