; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_output_slabs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_output_slabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i64 }

@output_lines = common dso_local global i32 0, align 4
@slabinfo = common dso_local global %struct.slabinfo* null, align 8
@slabs = common dso_local global i32 0, align 4
@show_numa = common dso_local global i64 0, align 8
@show_track = common dso_local global i64 0, align 8
@validate = common dso_local global i64 0, align 8
@shrink = common dso_local global i64 0, align 8
@set_debug = common dso_local global i64 0, align 8
@show_ops = common dso_local global i64 0, align 8
@show_slab = common dso_local global i64 0, align 8
@show_report = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_slabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_slabs() #0 {
  %1 = alloca %struct.slabinfo*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @output_lines, align 4
  store i32 %3, i32* %2, align 4
  %4 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  store %struct.slabinfo* %4, %struct.slabinfo** %1, align 8
  br label %5

5:                                                ; preds = %85, %0
  %6 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %7 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  %8 = load i32, i32* @slabs, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %7, i64 %9
  %11 = icmp ult %struct.slabinfo* %6, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i1 [ false, %5 ], [ %14, %12 ]
  br i1 %16, label %17, label %88

17:                                               ; preds = %15
  %18 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %19 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %85

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* @show_numa, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %34 = call i32 @slab_numa(%struct.slabinfo* %33, i32 0)
  br label %84

35:                                               ; preds = %29
  %36 = load i64, i64* @show_track, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %40 = call i32 @show_tracking(%struct.slabinfo* %39)
  br label %83

41:                                               ; preds = %35
  %42 = load i64, i64* @validate, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %46 = call i32 @slab_validate(%struct.slabinfo* %45)
  br label %82

47:                                               ; preds = %41
  %48 = load i64, i64* @shrink, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %52 = call i32 @slab_shrink(%struct.slabinfo* %51)
  br label %81

53:                                               ; preds = %47
  %54 = load i64, i64* @set_debug, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %58 = call i32 @slab_debug(%struct.slabinfo* %57)
  br label %80

59:                                               ; preds = %53
  %60 = load i64, i64* @show_ops, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %64 = call i32 @ops(%struct.slabinfo* %63)
  br label %79

65:                                               ; preds = %59
  %66 = load i64, i64* @show_slab, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %70 = call i32 @slabcache(%struct.slabinfo* %69)
  br label %78

71:                                               ; preds = %65
  %72 = load i64, i64* @show_report, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %76 = call i32 @report(%struct.slabinfo* %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %68
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79, %56
  br label %81

81:                                               ; preds = %80, %50
  br label %82

82:                                               ; preds = %81, %44
  br label %83

83:                                               ; preds = %82, %38
  br label %84

84:                                               ; preds = %83, %32
  br label %85

85:                                               ; preds = %84, %22
  %86 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %87 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %86, i32 1
  store %struct.slabinfo* %87, %struct.slabinfo** %1, align 8
  br label %5

88:                                               ; preds = %15
  ret void
}

declare dso_local i32 @slab_numa(%struct.slabinfo*, i32) #1

declare dso_local i32 @show_tracking(%struct.slabinfo*) #1

declare dso_local i32 @slab_validate(%struct.slabinfo*) #1

declare dso_local i32 @slab_shrink(%struct.slabinfo*) #1

declare dso_local i32 @slab_debug(%struct.slabinfo*) #1

declare dso_local i32 @ops(%struct.slabinfo*) #1

declare dso_local i32 @slabcache(%struct.slabinfo*) #1

declare dso_local i32 @report(%struct.slabinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
