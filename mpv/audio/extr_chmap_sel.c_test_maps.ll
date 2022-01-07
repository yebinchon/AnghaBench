; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_test_maps.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_test_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap_sel = type { i32, %struct.mp_chmap* }
%struct.mp_chmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_chmap_sel*, %struct.mp_chmap*)* @test_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_maps(%struct.mp_chmap_sel* %0, %struct.mp_chmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_chmap_sel*, align 8
  %5 = alloca %struct.mp_chmap*, align 8
  %6 = alloca i32, align 4
  store %struct.mp_chmap_sel* %0, %struct.mp_chmap_sel** %4, align 8
  store %struct.mp_chmap* %1, %struct.mp_chmap** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %10 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %15 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %14, i32 0, i32 1
  %16 = load %struct.mp_chmap*, %struct.mp_chmap** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %16, i64 %18
  %20 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %21 = call i64 @mp_chmap_equals_reordered(%struct.mp_chmap* %19, %struct.mp_chmap* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %13
  %24 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %25 = load %struct.mp_chmap_sel*, %struct.mp_chmap_sel** %4, align 8
  %26 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %25, i32 0, i32 1
  %27 = load %struct.mp_chmap*, %struct.mp_chmap** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %27, i64 %29
  %31 = bitcast %struct.mp_chmap* %24 to i8*
  %32 = bitcast %struct.mp_chmap* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  store i32 1, i32* %3, align 4
  br label %38

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @mp_chmap_equals_reordered(%struct.mp_chmap*, %struct.mp_chmap*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
