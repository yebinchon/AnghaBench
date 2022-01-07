; ModuleID = '/home/carl/AnghaBench/mpv/test/extr_chmap.c_run.c'
source_filename = "/home/carl/AnghaBench/mpv/test/extr_chmap.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_ctx = type { i32 }
%struct.mp_chmap = type { i32 }
%struct.mp_chmap_sel = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"5.1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"7.1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"7.1(wide-side)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"5.1(side)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"3.1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"7.1(rear)\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"7.1(alsa)\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"fl-fr-lfe-fc-bl-br-flc-frc\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"3.0(back)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"quad\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"quad(side)\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"7.0\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"fl-fr-sl-sr\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"fl-fr-fc-bl-br\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"fl-fr-bl-br-na-na-na-na\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"fl-fr-fc-lfe-sl-sr\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"fl-fr-lfe-fc-bl-br-na-na\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"fl-fr-lfe-fc-bl-br-sdl-sdr\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"na-fl-fr\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"na-fl-fr-na\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"fl-na-fr\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"fl-fr-na-na\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"na-na-fl-fr\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"6.1(back)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_ctx*)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(%struct.test_ctx* %0) #0 {
  %2 = alloca %struct.test_ctx*, align 8
  %3 = alloca %struct.mp_chmap, align 4
  %4 = alloca %struct.mp_chmap, align 4
  %5 = alloca %struct.mp_chmap_sel, align 4
  store %struct.test_ctx* %0, %struct.test_ctx** %2, align 8
  %6 = bitcast %struct.mp_chmap_sel* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @test_sel(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @test_sel(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @test_sel(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @test_sel(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %13)
  %15 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %16 = call i32 @test_sel(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %18 = call i32 @test_sel(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %17)
  %19 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @test_sel(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %22 = call i32 @test_sel(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %21)
  %23 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @test_sel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %23)
  %25 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @test_sel(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  %27 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %28 = call i32 @test_sel(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %27)
  %29 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %30 = call i32 @test_sel(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %29)
  %31 = call i32 @mp_chmap_set_unknown(%struct.mp_chmap* %3, i32 2)
  %32 = call i32 @bstr0(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @mp_chmap_from_str(%struct.mp_chmap* %4, i32 %32)
  %34 = call i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel* %5, %struct.mp_chmap* %3)
  %35 = call i32 @mp_chmap_sel_fallback(%struct.mp_chmap_sel* %5, %struct.mp_chmap* %4)
  %36 = call i32 @assert_false(i32 %35)
  %37 = call i32 @mp_chmap_to_str(%struct.mp_chmap* %4)
  %38 = call i32 @assert_string_equal(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %40 = call i32 @test_sel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %39)
  %41 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %42 = call i32 @test_sel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %41)
  %43 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %44 = call i32 @test_sel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %43)
  %45 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %46 = call i32 @test_sel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @test_sel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %50 = call i32 @test_sel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %49)
  %51 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i32 @test_sel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %51)
  %53 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %54 = call i32 @test_sel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %53)
  %55 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %56 = call i32 @test_sel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %55)
  %57 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %58 = call i32 @test_sel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %57)
  %59 = call i32 (i8*, ...) @LAYOUTS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %60 = call i32 @test_sel(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %59)
  %61 = call i32 @bstr0(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i32 @mp_chmap_from_str(%struct.mp_chmap* %3, i32 %61)
  %63 = call i32 @bstr0(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %64 = call i32 @mp_chmap_from_str(%struct.mp_chmap* %4, i32 %63)
  %65 = call i32 @mp_chmap_diffn(%struct.mp_chmap* %3, %struct.mp_chmap* %4)
  %66 = call i32 @assert_int_equal(i32 %65, i32 1)
  %67 = call i32 @bstr0(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %68 = call i32 @mp_chmap_from_str(%struct.mp_chmap* %4, i32 %67)
  %69 = call i32 @mp_chmap_diffn(%struct.mp_chmap* %3, %struct.mp_chmap* %4)
  %70 = call i32 @assert_int_equal(i32 %69, i32 0)
  %71 = call i32 @mp_chmap_diffn(%struct.mp_chmap* %4, %struct.mp_chmap* %3)
  %72 = call i32 @assert_int_equal(i32 %71, i32 3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @test_sel(i8*, i8*, i32) #2

declare dso_local i32 @LAYOUTS(i8*, ...) #2

declare dso_local i32 @mp_chmap_set_unknown(%struct.mp_chmap*, i32) #2

declare dso_local i32 @mp_chmap_from_str(%struct.mp_chmap*, i32) #2

declare dso_local i32 @bstr0(i8*) #2

declare dso_local i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel*, %struct.mp_chmap*) #2

declare dso_local i32 @assert_false(i32) #2

declare dso_local i32 @mp_chmap_sel_fallback(%struct.mp_chmap_sel*, %struct.mp_chmap*) #2

declare dso_local i32 @assert_string_equal(i32, i8*) #2

declare dso_local i32 @mp_chmap_to_str(%struct.mp_chmap*) #2

declare dso_local i32 @assert_int_equal(i32, i32) #2

declare dso_local i32 @mp_chmap_diffn(%struct.mp_chmap*, %struct.mp_chmap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
