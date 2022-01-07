; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_null.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_null.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, i32, i32, i64, %struct.priv* }
%struct.priv = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.mp_chmap_sel = type { %struct.ao* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_chmap_sel, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %7 = load %struct.ao*, %struct.ao** %2, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 5
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %3, align 8
  %10 = load %struct.priv*, %struct.priv** %3, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ao*, %struct.ao** %2, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 4
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ao*, %struct.ao** %2, align 8
  %25 = getelementptr inbounds %struct.ao, %struct.ao* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.mp_chmap_sel, %struct.mp_chmap_sel* %4, i32 0, i32 0
  %27 = load %struct.ao*, %struct.ao** %2, align 8
  store %struct.ao* %27, %struct.ao** %26, align 8
  %28 = load %struct.priv*, %struct.priv** %3, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.priv*, %struct.priv** %3, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.priv*, %struct.priv** %3, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel* %4, i32* %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %34

53:                                               ; preds = %34
  br label %56

54:                                               ; preds = %20
  %55 = call i32 @mp_chmap_sel_add_any(%struct.mp_chmap_sel* %4)
  br label %56

56:                                               ; preds = %54, %53
  %57 = load %struct.ao*, %struct.ao** %2, align 8
  %58 = load %struct.ao*, %struct.ao** %2, align 8
  %59 = getelementptr inbounds %struct.ao, %struct.ao* %58, i32 0, i32 2
  %60 = call i32 @ao_chmap_sel_adjust(%struct.ao* %57, %struct.mp_chmap_sel* %4, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load %struct.ao*, %struct.ao** %2, align 8
  %64 = getelementptr inbounds %struct.ao, %struct.ao* %63, i32 0, i32 2
  %65 = call i32 @mp_chmap_from_channels(i32* %64, i32 2)
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.priv*, %struct.priv** %3, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ao*, %struct.ao** %2, align 8
  %71 = getelementptr inbounds %struct.ao, %struct.ao* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %69, %72
  %74 = load %struct.priv*, %struct.priv** %3, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ao*, %struct.ao** %2, align 8
  %77 = getelementptr inbounds %struct.ao, %struct.ao* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.priv*, %struct.priv** %3, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  %83 = add nsw i32 %82, 1
  %84 = load %struct.priv*, %struct.priv** %3, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %83, %86
  store i32 %87, i32* %6, align 4
  %88 = load %struct.priv*, %struct.priv** %3, align 8
  %89 = getelementptr inbounds %struct.priv, %struct.priv* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load %struct.priv*, %struct.priv** %3, align 8
  %94 = getelementptr inbounds %struct.priv, %struct.priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %92, %95
  %97 = load %struct.priv*, %struct.priv** %3, align 8
  %98 = getelementptr inbounds %struct.priv, %struct.priv* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = call i32 (...) @mp_time_sec()
  %100 = load %struct.priv*, %struct.priv** %3, align 8
  %101 = getelementptr inbounds %struct.priv, %struct.priv* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.priv*, %struct.priv** %3, align 8
  %103 = getelementptr inbounds %struct.priv, %struct.priv* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ao*, %struct.ao** %2, align 8
  %106 = getelementptr inbounds %struct.ao, %struct.ao* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  ret i32 0
}

declare dso_local i32 @mp_chmap_sel_add_map(%struct.mp_chmap_sel*, i32*) #1

declare dso_local i32 @mp_chmap_sel_add_any(%struct.mp_chmap_sel*) #1

declare dso_local i32 @ao_chmap_sel_adjust(%struct.ao*, %struct.mp_chmap_sel*, i32*) #1

declare dso_local i32 @mp_chmap_from_channels(i32*, i32) #1

declare dso_local i32 @mp_time_sec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
