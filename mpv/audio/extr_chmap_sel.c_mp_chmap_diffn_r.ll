; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_mp_chmap_diffn_r.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_mp_chmap_diffn_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@speaker_replacements = common dso_local global i64* null, align 8
@MP_CHMAP_INIT_MONO = common dso_local global %struct.mp_chmap zeroinitializer, align 4
@MP_CHMAP_INIT_STEREO = common dso_local global %struct.mp_chmap zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_chmap*, %struct.mp_chmap*)* @mp_chmap_diffn_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_chmap_diffn_r(%struct.mp_chmap* %0, %struct.mp_chmap* %1) #0 {
  %3 = alloca %struct.mp_chmap*, align 8
  %4 = alloca %struct.mp_chmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_chmap, align 4
  %8 = alloca %struct.mp_chmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_chmap, align 4
  %11 = alloca %struct.mp_chmap, align 4
  store %struct.mp_chmap* %0, %struct.mp_chmap** %3, align 8
  store %struct.mp_chmap* %1, %struct.mp_chmap** %4, align 8
  %12 = load i32, i32* @INT_MAX, align 4
  store i32 %12, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  br label %13

13:                                               ; preds = %46, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i64*, i64** @speaker_replacements, align 8
  %16 = call i64 @MP_ARRAY_SIZE(i64* %15)
  %17 = trunc i64 %16 to i32
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %13
  %20 = load %struct.mp_chmap*, %struct.mp_chmap** %3, align 8
  %21 = bitcast %struct.mp_chmap* %7 to i8*
  %22 = bitcast %struct.mp_chmap* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i64*, i64** @speaker_replacements, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.mp_chmap*
  store %struct.mp_chmap* %31, %struct.mp_chmap** %8, align 8
  %32 = load %struct.mp_chmap*, %struct.mp_chmap** %8, align 8
  %33 = call i32 @replace_speakers(%struct.mp_chmap* %7, %struct.mp_chmap* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %46

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.mp_chmap*, %struct.mp_chmap** %4, align 8
  %39 = call i32 @mp_chmap_diffn(%struct.mp_chmap* %7, %struct.mp_chmap* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %37
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %13

49:                                               ; preds = %13
  %50 = bitcast %struct.mp_chmap* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 bitcast (%struct.mp_chmap* @MP_CHMAP_INIT_MONO to i8*), i64 4, i1 false)
  %51 = bitcast %struct.mp_chmap* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 bitcast (%struct.mp_chmap* @MP_CHMAP_INIT_STEREO to i8*), i64 4, i1 false)
  %52 = load %struct.mp_chmap*, %struct.mp_chmap** %4, align 8
  %53 = call i64 @mp_chmap_equals(%struct.mp_chmap* %10, %struct.mp_chmap* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.mp_chmap*, %struct.mp_chmap** %3, align 8
  %57 = call i64 @mp_chmap_equals(%struct.mp_chmap* %11, %struct.mp_chmap* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %55, %49
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @MP_ARRAY_SIZE(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @replace_speakers(%struct.mp_chmap*, %struct.mp_chmap*) #1

declare dso_local i32 @mp_chmap_diffn(%struct.mp_chmap*, %struct.mp_chmap*) #1

declare dso_local i64 @mp_chmap_equals(%struct.mp_chmap*, %struct.mp_chmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
