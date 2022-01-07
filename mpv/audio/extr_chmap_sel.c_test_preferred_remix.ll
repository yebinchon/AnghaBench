; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_test_preferred_remix.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap_sel.c_test_preferred_remix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap = type { i32 }

@preferred_remix = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_chmap*, %struct.mp_chmap*)* @test_preferred_remix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_preferred_remix(%struct.mp_chmap* %0, %struct.mp_chmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_chmap*, align 8
  %5 = alloca %struct.mp_chmap*, align 8
  %6 = alloca %struct.mp_chmap, align 4
  %7 = alloca %struct.mp_chmap, align 4
  %8 = alloca i32, align 4
  store %struct.mp_chmap* %0, %struct.mp_chmap** %4, align 8
  store %struct.mp_chmap* %1, %struct.mp_chmap** %5, align 8
  %9 = load %struct.mp_chmap*, %struct.mp_chmap** %4, align 8
  %10 = bitcast %struct.mp_chmap* %6 to i8*
  %11 = bitcast %struct.mp_chmap* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load %struct.mp_chmap*, %struct.mp_chmap** %5, align 8
  %13 = bitcast %struct.mp_chmap* %7 to i8*
  %14 = bitcast %struct.mp_chmap* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = call i32 @mp_chmap_remove_na(%struct.mp_chmap* %6)
  %16 = call i32 @mp_chmap_remove_na(%struct.mp_chmap* %7)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %42, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32**, i32*** @preferred_remix, align 8
  %20 = call i32 @MP_ARRAY_SIZE(i32** %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = load i32**, i32*** @preferred_remix, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i64 @mp_chmap_equals_reordered(%struct.mp_chmap* %6, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i32**, i32*** @preferred_remix, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = call i64 @mp_chmap_equals_reordered(%struct.mp_chmap* %7, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %46

41:                                               ; preds = %31, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %17

45:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_chmap_remove_na(%struct.mp_chmap*) #2

declare dso_local i32 @MP_ARRAY_SIZE(i32**) #2

declare dso_local i64 @mp_chmap_equals_reordered(%struct.mp_chmap*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
