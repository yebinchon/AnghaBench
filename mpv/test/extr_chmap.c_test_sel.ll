; ModuleID = '/home/carl/AnghaBench/mpv/test/extr_chmap.c_test_sel.c'
source_filename = "/home/carl/AnghaBench/mpv/test/extr_chmap.c_test_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_chmap_sel = type { i32, i32 }
%struct.mp_chmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @test_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sel(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.mp_chmap_sel, align 4
  %8 = alloca %struct.mp_chmap, align 4
  %9 = alloca %struct.mp_chmap, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_chmap, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %13 = bitcast %struct.mp_chmap_sel* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @bstr0(i8* %14)
  %16 = call i32 @mp_chmap_from_str(%struct.mp_chmap* %8, i32 %15)
  %17 = call i32 @assert_true(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @bstr0(i8* %18)
  %20 = call i32 @mp_chmap_from_str(%struct.mp_chmap* %9, i32 %19)
  %21 = call i32 @assert_true(i32 %20)
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %47, %3
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %22
  %30 = load i8**, i8*** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @bstr0(i8* %34)
  %36 = call i32 @mp_chmap_from_str(%struct.mp_chmap* %11, i32 %35)
  %37 = call i32 @assert_true(i32 %36)
  %38 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = call i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel* %7, %struct.mp_chmap* %11)
  %41 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_true(i32 %45)
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %22

50:                                               ; preds = %22
  %51 = call i32 @mp_chmap_sel_fallback(%struct.mp_chmap_sel* %7, %struct.mp_chmap* %8)
  %52 = call i32 @assert_true(i32 %51)
  %53 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %8)
  %54 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %9)
  %55 = call i32 @assert_string_equal(i32 %53, i32 %54)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert_true(i32) #2

declare dso_local i32 @mp_chmap_from_str(%struct.mp_chmap*, i32) #2

declare dso_local i32 @bstr0(i8*) #2

declare dso_local i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel*, %struct.mp_chmap*) #2

declare dso_local i32 @mp_chmap_sel_fallback(%struct.mp_chmap_sel*, %struct.mp_chmap*) #2

declare dso_local i32 @assert_string_equal(i32, i32) #2

declare dso_local i32 @mp_chmap_to_str(%struct.mp_chmap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
