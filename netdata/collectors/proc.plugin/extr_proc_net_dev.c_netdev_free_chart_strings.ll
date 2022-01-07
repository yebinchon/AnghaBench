; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_free_chart_strings.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_net_dev.c_netdev_free_chart_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdev*)* @netdev_free_chart_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_free_chart_strings(%struct.netdev* %0) #0 {
  %2 = alloca %struct.netdev*, align 8
  store %struct.netdev* %0, %struct.netdev** %2, align 8
  %3 = load %struct.netdev*, %struct.netdev** %2, align 8
  %4 = getelementptr inbounds %struct.netdev, %struct.netdev* %3, i32 0, i32 14
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = call i32 @freez(i8* %6)
  %8 = load %struct.netdev*, %struct.netdev** %2, align 8
  %9 = getelementptr inbounds %struct.netdev, %struct.netdev* %8, i32 0, i32 13
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @freez(i8* %11)
  %13 = load %struct.netdev*, %struct.netdev** %2, align 8
  %14 = getelementptr inbounds %struct.netdev, %struct.netdev* %13, i32 0, i32 12
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @freez(i8* %16)
  %18 = load %struct.netdev*, %struct.netdev** %2, align 8
  %19 = getelementptr inbounds %struct.netdev, %struct.netdev* %18, i32 0, i32 11
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @freez(i8* %21)
  %23 = load %struct.netdev*, %struct.netdev** %2, align 8
  %24 = getelementptr inbounds %struct.netdev, %struct.netdev* %23, i32 0, i32 10
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @freez(i8* %26)
  %28 = load %struct.netdev*, %struct.netdev** %2, align 8
  %29 = getelementptr inbounds %struct.netdev, %struct.netdev* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @freez(i8* %31)
  %33 = load %struct.netdev*, %struct.netdev** %2, align 8
  %34 = getelementptr inbounds %struct.netdev, %struct.netdev* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @freez(i8* %36)
  %38 = load %struct.netdev*, %struct.netdev** %2, align 8
  %39 = getelementptr inbounds %struct.netdev, %struct.netdev* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @freez(i8* %41)
  %43 = load %struct.netdev*, %struct.netdev** %2, align 8
  %44 = getelementptr inbounds %struct.netdev, %struct.netdev* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @freez(i8* %46)
  %48 = load %struct.netdev*, %struct.netdev** %2, align 8
  %49 = getelementptr inbounds %struct.netdev, %struct.netdev* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @freez(i8* %51)
  %53 = load %struct.netdev*, %struct.netdev** %2, align 8
  %54 = getelementptr inbounds %struct.netdev, %struct.netdev* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @freez(i8* %56)
  %58 = load %struct.netdev*, %struct.netdev** %2, align 8
  %59 = getelementptr inbounds %struct.netdev, %struct.netdev* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @freez(i8* %61)
  %63 = load %struct.netdev*, %struct.netdev** %2, align 8
  %64 = getelementptr inbounds %struct.netdev, %struct.netdev* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @freez(i8* %66)
  %68 = load %struct.netdev*, %struct.netdev** %2, align 8
  %69 = getelementptr inbounds %struct.netdev, %struct.netdev* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @freez(i8* %71)
  %73 = load %struct.netdev*, %struct.netdev** %2, align 8
  %74 = getelementptr inbounds %struct.netdev, %struct.netdev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @freez(i8* %76)
  ret void
}

declare dso_local i32 @freez(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
