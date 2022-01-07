; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_sort_slabs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_sort_slabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i64, i32 }

@slabinfo = common dso_local global %struct.slabinfo* null, align 8
@slabs = common dso_local global i32 0, align 4
@sort_size = common dso_local global i64 0, align 8
@sort_active = common dso_local global i64 0, align 8
@sort_loss = common dso_local global i64 0, align 8
@sort_partial = common dso_local global i64 0, align 8
@show_inverted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sort_slabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_slabs() #0 {
  %1 = alloca %struct.slabinfo*, align 8
  %2 = alloca %struct.slabinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.slabinfo, align 8
  %5 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  store %struct.slabinfo* %5, %struct.slabinfo** %1, align 8
  br label %6

6:                                                ; preds = %98, %0
  %7 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %8 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  %9 = load i32, i32* @slabs, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %8, i64 %10
  %12 = icmp ult %struct.slabinfo* %7, %11
  br i1 %12, label %13, label %101

13:                                               ; preds = %6
  %14 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %15 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %14, i64 1
  store %struct.slabinfo* %15, %struct.slabinfo** %2, align 8
  br label %16

16:                                               ; preds = %94, %13
  %17 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %18 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  %19 = load i32, i32* @slabs, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %18, i64 %20
  %22 = icmp ult %struct.slabinfo* %17, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %16
  %24 = load i64, i64* @sort_size, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %28 = call i64 @slab_size(%struct.slabinfo* %27)
  %29 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %30 = call i64 @slab_size(%struct.slabinfo* %29)
  %31 = icmp slt i64 %28, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %76

33:                                               ; preds = %23
  %34 = load i64, i64* @sort_active, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %38 = call i64 @slab_activity(%struct.slabinfo* %37)
  %39 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %40 = call i64 @slab_activity(%struct.slabinfo* %39)
  %41 = icmp slt i64 %38, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %75

43:                                               ; preds = %33
  %44 = load i64, i64* @sort_loss, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %48 = call i64 @slab_waste(%struct.slabinfo* %47)
  %49 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %50 = call i64 @slab_waste(%struct.slabinfo* %49)
  %51 = icmp slt i64 %48, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %74

53:                                               ; preds = %43
  %54 = load i64, i64* @sort_partial, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %58 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %61 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %73

65:                                               ; preds = %53
  %66 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %67 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %70 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @strcasecmp(i32 %68, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %56
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %36
  br label %76

76:                                               ; preds = %75, %26
  %77 = load i64, i64* @show_inverted, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %3, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %87 = call i32 @memcpy(%struct.slabinfo* %4, %struct.slabinfo* %86, i32 16)
  %88 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %89 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %90 = call i32 @memcpy(%struct.slabinfo* %88, %struct.slabinfo* %89, i32 16)
  %91 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %92 = call i32 @memcpy(%struct.slabinfo* %91, %struct.slabinfo* %4, i32 16)
  br label %93

93:                                               ; preds = %85, %82
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %96 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %95, i32 1
  store %struct.slabinfo* %96, %struct.slabinfo** %2, align 8
  br label %16

97:                                               ; preds = %16
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %100 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %99, i32 1
  store %struct.slabinfo* %100, %struct.slabinfo** %1, align 8
  br label %6

101:                                              ; preds = %6
  ret void
}

declare dso_local i64 @slab_size(%struct.slabinfo*) #1

declare dso_local i64 @slab_activity(%struct.slabinfo*) #1

declare dso_local i64 @slab_waste(%struct.slabinfo*) #1

declare dso_local i32 @strcasecmp(i32, i32) #1

declare dso_local i32 @memcpy(%struct.slabinfo*, %struct.slabinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
