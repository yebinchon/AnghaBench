; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_write_to_ao.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_write_to_ao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, i32, i32, %struct.ao*, i32, i64 }
%struct.ao = type { i32 }
%struct.mp_chmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, i32**, i32, i32)* @write_to_ao to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_to_ao(%struct.MPContext* %0, i32** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MPContext*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ao*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mp_chmap, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %87

21:                                               ; preds = %4
  %22 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 4
  %24 = load %struct.ao*, %struct.ao** %23, align 8
  store %struct.ao* %24, %struct.ao** %10, align 8
  %25 = load %struct.ao*, %struct.ao** %10, align 8
  %26 = call i32 @ao_get_format(%struct.ao* %25, i32* %11, i32* %12, %struct.mp_chmap* %13)
  %27 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %31 = call i32 @playing_audio_pts(%struct.MPContext* %30)
  %32 = call i32 @encode_lavc_set_audio_pts(i32 %29, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %87

36:                                               ; preds = %21
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %39 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %37, %40
  %42 = sitofp i32 %41 to double
  store double %42, double* %14, align 8
  %43 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %44 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %43, i32 0, i32 4
  %45 = load %struct.ao*, %struct.ao** %44, align 8
  %46 = load i32**, i32*** %7, align 8
  %47 = bitcast i32** %46 to i8**
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ao_play(%struct.ao* %45, i8** %47, i32 %48, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sle i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %15, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %36
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sitofp i32 %64 to double
  %66 = load double, double* %14, align 8
  %67 = fdiv double %65, %66
  %68 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %69 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sitofp i32 %70 to double
  %72 = fadd double %71, %67
  %73 = fptosi double %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sitofp i32 %74 to double
  %76 = load i32, i32* %11, align 4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %75, %77
  %79 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %80 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = sitofp i32 %81 to double
  %83 = fadd double %82, %78
  %84 = fptosi double %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %5, align 4
  br label %87

86:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %58, %35, %20
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @ao_get_format(%struct.ao*, i32*, i32*, %struct.mp_chmap*) #1

declare dso_local i32 @encode_lavc_set_audio_pts(i32, i32) #1

declare dso_local i32 @playing_audio_pts(%struct.MPContext*) #1

declare dso_local i32 @ao_play(%struct.ao*, i8**, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
