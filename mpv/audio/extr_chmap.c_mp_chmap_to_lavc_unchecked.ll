; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_to_lavc_unchecked.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_to_lavc_unchecked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_chmap_to_lavc_unchecked(%struct.mp_chmap* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mp_chmap*, align 8
  %4 = alloca %struct.mp_chmap, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mp_chmap* %0, %struct.mp_chmap** %3, align 8
  %7 = load %struct.mp_chmap*, %struct.mp_chmap** %3, align 8
  %8 = bitcast %struct.mp_chmap* %4 to i8*
  %9 = bitcast %struct.mp_chmap* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 64
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %61

14:                                               ; preds = %1
  %15 = call i64 @mp_chmap_is_unknown(%struct.mp_chmap* %4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 64
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = zext i32 %24 to i64
  %26 = shl i64 1, %25
  %27 = sub i64 %26, 1
  br label %28

28:                                               ; preds = %22, %21
  %29 = phi i64 [ -1, %21 ], [ %27, %22 ]
  store i64 %29, i64* %2, align 8
  br label %61

30:                                               ; preds = %14
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %4, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 64
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %4, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  %53 = load i64, i64* %5, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %44, %36
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %59, %28, %13
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @mp_chmap_is_unknown(%struct.mp_chmap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
