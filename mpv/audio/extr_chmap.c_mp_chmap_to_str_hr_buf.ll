; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_to_str_hr_buf.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_chmap.c_mp_chmap_to_str_hr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap = type { i32 }

@std_layout_names = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_chmap_to_str_hr_buf(i8* %0, i64 %1, %struct.mp_chmap* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mp_chmap*, align 8
  %7 = alloca %struct.mp_chmap, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_chmap, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mp_chmap* %2, %struct.mp_chmap** %6, align 8
  %10 = load %struct.mp_chmap*, %struct.mp_chmap** %6, align 8
  %11 = bitcast %struct.mp_chmap* %7 to i8*
  %12 = bitcast %struct.mp_chmap* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = call i32 @mp_chmap_remove_na(%struct.mp_chmap* %7)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %41, %3
  %15 = load i64**, i64*** @std_layout_names, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64*, i64** %15, i64 %17
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %14
  %24 = load i64**, i64*** @std_layout_names, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64*, i64** %24, i64 %26
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @bstr0(i64 %30)
  %32 = call i64 @mp_chmap_from_str(%struct.mp_chmap* %9, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = call i64 @mp_chmap_equals_reordered(%struct.mp_chmap* %9, %struct.mp_chmap* %7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = bitcast %struct.mp_chmap* %7 to i8*
  %39 = bitcast %struct.mp_chmap* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  br label %44

40:                                               ; preds = %34, %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %14

44:                                               ; preds = %37, %14
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i8* @mp_chmap_to_str_buf(i8* %45, i64 %46, %struct.mp_chmap* %7)
  ret i8* %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_chmap_remove_na(%struct.mp_chmap*) #2

declare dso_local i64 @mp_chmap_from_str(%struct.mp_chmap*, i32) #2

declare dso_local i32 @bstr0(i64) #2

declare dso_local i64 @mp_chmap_equals_reordered(%struct.mp_chmap*, %struct.mp_chmap*) #2

declare dso_local i8* @mp_chmap_to_str_buf(i8*, i64, %struct.mp_chmap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
