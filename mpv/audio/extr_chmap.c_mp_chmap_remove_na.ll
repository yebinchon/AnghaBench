; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_remove_na.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_remove_na.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap = type { i32, i32*, i32 }

@MP_SPEAKER_ID_NA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_chmap_remove_na(%struct.mp_chmap* %0) #0 {
  %2 = alloca %struct.mp_chmap*, align 8
  %3 = alloca %struct.mp_chmap, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mp_chmap* %0, %struct.mp_chmap** %2, align 8
  %6 = bitcast %struct.mp_chmap* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %40, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.mp_chmap*, %struct.mp_chmap** %2, align 8
  %10 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %7
  %14 = load %struct.mp_chmap*, %struct.mp_chmap** %2, align 8
  %15 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MP_SPEAKER_ID_NA, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %13
  %25 = load %struct.mp_chmap*, %struct.mp_chmap** %2, align 8
  %26 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %3, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32 %31, i32* %38, align 4
  br label %39

39:                                               ; preds = %24, %13
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %7

43:                                               ; preds = %7
  %44 = load %struct.mp_chmap*, %struct.mp_chmap** %2, align 8
  %45 = bitcast %struct.mp_chmap* %44 to i8*
  %46 = bitcast %struct.mp_chmap* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
