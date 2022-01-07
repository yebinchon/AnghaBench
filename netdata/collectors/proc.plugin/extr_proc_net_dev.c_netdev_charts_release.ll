; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_charts_release.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_charts_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdev*)* @netdev_charts_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_charts_release(%struct.netdev* %0) #0 {
  %2 = alloca %struct.netdev*, align 8
  store %struct.netdev* %0, %struct.netdev** %2, align 8
  %3 = load %struct.netdev*, %struct.netdev** %2, align 8
  %4 = getelementptr inbounds %struct.netdev, %struct.netdev* %3, i32 0, i32 22
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.netdev*, %struct.netdev** %2, align 8
  %9 = getelementptr inbounds %struct.netdev, %struct.netdev* %8, i32 0, i32 22
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @rrdset_is_obsolete(i32* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.netdev*, %struct.netdev** %2, align 8
  %14 = getelementptr inbounds %struct.netdev, %struct.netdev* %13, i32 0, i32 16
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.netdev*, %struct.netdev** %2, align 8
  %19 = getelementptr inbounds %struct.netdev, %struct.netdev* %18, i32 0, i32 16
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @rrdset_is_obsolete(i32* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.netdev*, %struct.netdev** %2, align 8
  %24 = getelementptr inbounds %struct.netdev, %struct.netdev* %23, i32 0, i32 19
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.netdev*, %struct.netdev** %2, align 8
  %29 = getelementptr inbounds %struct.netdev, %struct.netdev* %28, i32 0, i32 19
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @rrdset_is_obsolete(i32* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.netdev*, %struct.netdev** %2, align 8
  %34 = getelementptr inbounds %struct.netdev, %struct.netdev* %33, i32 0, i32 20
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.netdev*, %struct.netdev** %2, align 8
  %39 = getelementptr inbounds %struct.netdev, %struct.netdev* %38, i32 0, i32 20
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rrdset_is_obsolete(i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.netdev*, %struct.netdev** %2, align 8
  %44 = getelementptr inbounds %struct.netdev, %struct.netdev* %43, i32 0, i32 17
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.netdev*, %struct.netdev** %2, align 8
  %49 = getelementptr inbounds %struct.netdev, %struct.netdev* %48, i32 0, i32 17
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @rrdset_is_obsolete(i32* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.netdev*, %struct.netdev** %2, align 8
  %54 = getelementptr inbounds %struct.netdev, %struct.netdev* %53, i32 0, i32 21
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.netdev*, %struct.netdev** %2, align 8
  %59 = getelementptr inbounds %struct.netdev, %struct.netdev* %58, i32 0, i32 21
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @rrdset_is_obsolete(i32* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.netdev*, %struct.netdev** %2, align 8
  %64 = getelementptr inbounds %struct.netdev, %struct.netdev* %63, i32 0, i32 18
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.netdev*, %struct.netdev** %2, align 8
  %69 = getelementptr inbounds %struct.netdev, %struct.netdev* %68, i32 0, i32 18
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @rrdset_is_obsolete(i32* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.netdev*, %struct.netdev** %2, align 8
  %74 = getelementptr inbounds %struct.netdev, %struct.netdev* %73, i32 0, i32 22
  store i32* null, i32** %74, align 8
  %75 = load %struct.netdev*, %struct.netdev** %2, align 8
  %76 = getelementptr inbounds %struct.netdev, %struct.netdev* %75, i32 0, i32 21
  store i32* null, i32** %76, align 8
  %77 = load %struct.netdev*, %struct.netdev** %2, align 8
  %78 = getelementptr inbounds %struct.netdev, %struct.netdev* %77, i32 0, i32 20
  store i32* null, i32** %78, align 8
  %79 = load %struct.netdev*, %struct.netdev** %2, align 8
  %80 = getelementptr inbounds %struct.netdev, %struct.netdev* %79, i32 0, i32 19
  store i32* null, i32** %80, align 8
  %81 = load %struct.netdev*, %struct.netdev** %2, align 8
  %82 = getelementptr inbounds %struct.netdev, %struct.netdev* %81, i32 0, i32 18
  store i32* null, i32** %82, align 8
  %83 = load %struct.netdev*, %struct.netdev** %2, align 8
  %84 = getelementptr inbounds %struct.netdev, %struct.netdev* %83, i32 0, i32 17
  store i32* null, i32** %84, align 8
  %85 = load %struct.netdev*, %struct.netdev** %2, align 8
  %86 = getelementptr inbounds %struct.netdev, %struct.netdev* %85, i32 0, i32 16
  store i32* null, i32** %86, align 8
  %87 = load %struct.netdev*, %struct.netdev** %2, align 8
  %88 = getelementptr inbounds %struct.netdev, %struct.netdev* %87, i32 0, i32 15
  store i32* null, i32** %88, align 8
  %89 = load %struct.netdev*, %struct.netdev** %2, align 8
  %90 = getelementptr inbounds %struct.netdev, %struct.netdev* %89, i32 0, i32 14
  store i32* null, i32** %90, align 8
  %91 = load %struct.netdev*, %struct.netdev** %2, align 8
  %92 = getelementptr inbounds %struct.netdev, %struct.netdev* %91, i32 0, i32 13
  store i32* null, i32** %92, align 8
  %93 = load %struct.netdev*, %struct.netdev** %2, align 8
  %94 = getelementptr inbounds %struct.netdev, %struct.netdev* %93, i32 0, i32 12
  store i32* null, i32** %94, align 8
  %95 = load %struct.netdev*, %struct.netdev** %2, align 8
  %96 = getelementptr inbounds %struct.netdev, %struct.netdev* %95, i32 0, i32 11
  store i32* null, i32** %96, align 8
  %97 = load %struct.netdev*, %struct.netdev** %2, align 8
  %98 = getelementptr inbounds %struct.netdev, %struct.netdev* %97, i32 0, i32 10
  store i32* null, i32** %98, align 8
  %99 = load %struct.netdev*, %struct.netdev** %2, align 8
  %100 = getelementptr inbounds %struct.netdev, %struct.netdev* %99, i32 0, i32 9
  store i32* null, i32** %100, align 8
  %101 = load %struct.netdev*, %struct.netdev** %2, align 8
  %102 = getelementptr inbounds %struct.netdev, %struct.netdev* %101, i32 0, i32 8
  store i32* null, i32** %102, align 8
  %103 = load %struct.netdev*, %struct.netdev** %2, align 8
  %104 = getelementptr inbounds %struct.netdev, %struct.netdev* %103, i32 0, i32 7
  store i32* null, i32** %104, align 8
  %105 = load %struct.netdev*, %struct.netdev** %2, align 8
  %106 = getelementptr inbounds %struct.netdev, %struct.netdev* %105, i32 0, i32 6
  store i32* null, i32** %106, align 8
  %107 = load %struct.netdev*, %struct.netdev** %2, align 8
  %108 = getelementptr inbounds %struct.netdev, %struct.netdev* %107, i32 0, i32 5
  store i32* null, i32** %108, align 8
  %109 = load %struct.netdev*, %struct.netdev** %2, align 8
  %110 = getelementptr inbounds %struct.netdev, %struct.netdev* %109, i32 0, i32 4
  store i32* null, i32** %110, align 8
  %111 = load %struct.netdev*, %struct.netdev** %2, align 8
  %112 = getelementptr inbounds %struct.netdev, %struct.netdev* %111, i32 0, i32 3
  store i32* null, i32** %112, align 8
  %113 = load %struct.netdev*, %struct.netdev** %2, align 8
  %114 = getelementptr inbounds %struct.netdev, %struct.netdev* %113, i32 0, i32 2
  store i32* null, i32** %114, align 8
  %115 = load %struct.netdev*, %struct.netdev** %2, align 8
  %116 = getelementptr inbounds %struct.netdev, %struct.netdev* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  %117 = load %struct.netdev*, %struct.netdev** %2, align 8
  %118 = getelementptr inbounds %struct.netdev, %struct.netdev* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  ret void
}

declare dso_local i32 @rrdset_is_obsolete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
