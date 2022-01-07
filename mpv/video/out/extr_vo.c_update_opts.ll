; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_update_opts.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_update_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.vo*, i32, i32*)* }

@VOCTRL_SET_PANSCAN = common dso_local global i32 0, align 4
@VOCTRL_UPDATE_RENDER_OPTS = common dso_local global i32 0, align 4
@VOCTRL_SET_EQUALIZER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @update_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_opts(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vo*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vo*
  store %struct.vo* %5, %struct.vo** %3, align 8
  %6 = load %struct.vo*, %struct.vo** %3, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @m_config_cache_update(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.vo*, %struct.vo** %3, align 8
  %13 = call i32 @read_opts(%struct.vo* %12)
  %14 = load %struct.vo*, %struct.vo** %3, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*, i32, i32*)** %17, align 8
  %19 = icmp ne i32 (%struct.vo*, i32, i32*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.vo*, %struct.vo** %3, align 8
  %22 = getelementptr inbounds %struct.vo, %struct.vo* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*, i32, i32*)** %24, align 8
  %26 = load %struct.vo*, %struct.vo** %3, align 8
  %27 = load i32, i32* @VOCTRL_SET_PANSCAN, align 4
  %28 = call i32 %25(%struct.vo* %26, i32 %27, i32* null)
  br label %29

29:                                               ; preds = %20, %11
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.vo*, %struct.vo** %3, align 8
  %32 = getelementptr inbounds %struct.vo, %struct.vo* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load %struct.vo*, %struct.vo** %3, align 8
  %37 = getelementptr inbounds %struct.vo, %struct.vo* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @m_config_cache_update(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load %struct.vo*, %struct.vo** %3, align 8
  %43 = getelementptr inbounds %struct.vo, %struct.vo* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*, i32, i32*)** %45, align 8
  %47 = icmp ne i32 (%struct.vo*, i32, i32*)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.vo*, %struct.vo** %3, align 8
  %50 = getelementptr inbounds %struct.vo, %struct.vo* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*, i32, i32*)** %52, align 8
  %54 = load %struct.vo*, %struct.vo** %3, align 8
  %55 = load i32, i32* @VOCTRL_UPDATE_RENDER_OPTS, align 4
  %56 = call i32 %53(%struct.vo* %54, i32 %55, i32* null)
  br label %57

57:                                               ; preds = %48, %41
  br label %58

58:                                               ; preds = %57, %35, %30
  %59 = load %struct.vo*, %struct.vo** %3, align 8
  %60 = getelementptr inbounds %struct.vo, %struct.vo* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @m_config_cache_update(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load %struct.vo*, %struct.vo** %3, align 8
  %66 = getelementptr inbounds %struct.vo, %struct.vo* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*, i32, i32*)** %68, align 8
  %70 = icmp ne i32 (%struct.vo*, i32, i32*)* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.vo*, %struct.vo** %3, align 8
  %73 = getelementptr inbounds %struct.vo, %struct.vo* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*, i32, i32*)** %75, align 8
  %77 = load %struct.vo*, %struct.vo** %3, align 8
  %78 = load i32, i32* @VOCTRL_SET_EQUALIZER, align 4
  %79 = call i32 %76(%struct.vo* %77, i32 %78, i32* null)
  br label %80

80:                                               ; preds = %71, %64
  br label %81

81:                                               ; preds = %80, %58
  ret void
}

declare dso_local i64 @m_config_cache_update(i64) #1

declare dso_local i32 @read_opts(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
