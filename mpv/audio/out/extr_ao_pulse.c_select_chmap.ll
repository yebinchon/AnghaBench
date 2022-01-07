; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_select_chmap.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_select_chmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32 }
%struct.mp_chmap_sel = type { i32 }

@speaker_map = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32*)* @select_chmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_chmap(%struct.ao* %0, i32* %1) #0 {
  %3 = alloca %struct.ao*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mp_chmap_sel, align 4
  %6 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = bitcast %struct.mp_chmap_sel* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32**, i32*** @speaker_map, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %9, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %29

17:                                               ; preds = %8
  %18 = load i32**, i32*** @speaker_map, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mp_chmap_sel_add_speaker(%struct.mp_chmap_sel* %5, i32 %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.ao*, %struct.ao** %3, align 8
  %31 = load %struct.ao*, %struct.ao** %3, align 8
  %32 = getelementptr inbounds %struct.ao, %struct.ao* %31, i32 0, i32 0
  %33 = call i64 @ao_chmap_sel_adjust(%struct.ao* %30, %struct.mp_chmap_sel* %5, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.ao*, %struct.ao** %3, align 8
  %38 = getelementptr inbounds %struct.ao, %struct.ao* %37, i32 0, i32 0
  %39 = call i64 @chmap_pa_from_mp(i32* %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ false, %29 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mp_chmap_sel_add_speaker(%struct.mp_chmap_sel*, i32) #2

declare dso_local i64 @ao_chmap_sel_adjust(%struct.ao*, %struct.mp_chmap_sel*, i32*) #2

declare dso_local i64 @chmap_pa_from_mp(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
