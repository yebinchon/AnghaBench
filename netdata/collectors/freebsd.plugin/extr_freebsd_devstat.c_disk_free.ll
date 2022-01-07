; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_devstat.c_disk_free.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_devstat.c_disk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { %struct.disk*, i32, i32, i32, i32, i32, i32, i32, i32 }

@disks_added = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disk*)* @disk_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disk_free(%struct.disk* %0) #0 {
  %2 = alloca %struct.disk*, align 8
  store %struct.disk* %0, %struct.disk** %2, align 8
  %3 = load %struct.disk*, %struct.disk** %2, align 8
  %4 = getelementptr inbounds %struct.disk, %struct.disk* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @likely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.disk*, %struct.disk** %2, align 8
  %10 = getelementptr inbounds %struct.disk, %struct.disk* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rrdset_is_obsolete(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.disk*, %struct.disk** %2, align 8
  %15 = getelementptr inbounds %struct.disk, %struct.disk* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.disk*, %struct.disk** %2, align 8
  %21 = getelementptr inbounds %struct.disk, %struct.disk* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @rrdset_is_obsolete(i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.disk*, %struct.disk** %2, align 8
  %26 = getelementptr inbounds %struct.disk, %struct.disk* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.disk*, %struct.disk** %2, align 8
  %32 = getelementptr inbounds %struct.disk, %struct.disk* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rrdset_is_obsolete(i32 %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.disk*, %struct.disk** %2, align 8
  %37 = getelementptr inbounds %struct.disk, %struct.disk* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.disk*, %struct.disk** %2, align 8
  %43 = getelementptr inbounds %struct.disk, %struct.disk* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @rrdset_is_obsolete(i32 %44)
  br label %46

46:                                               ; preds = %41, %35
  %47 = load %struct.disk*, %struct.disk** %2, align 8
  %48 = getelementptr inbounds %struct.disk, %struct.disk* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.disk*, %struct.disk** %2, align 8
  %54 = getelementptr inbounds %struct.disk, %struct.disk* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rrdset_is_obsolete(i32 %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.disk*, %struct.disk** %2, align 8
  %59 = getelementptr inbounds %struct.disk, %struct.disk* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @likely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.disk*, %struct.disk** %2, align 8
  %65 = getelementptr inbounds %struct.disk, %struct.disk* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @rrdset_is_obsolete(i32 %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.disk*, %struct.disk** %2, align 8
  %70 = getelementptr inbounds %struct.disk, %struct.disk* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.disk*, %struct.disk** %2, align 8
  %76 = getelementptr inbounds %struct.disk, %struct.disk* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @rrdset_is_obsolete(i32 %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = load %struct.disk*, %struct.disk** %2, align 8
  %81 = getelementptr inbounds %struct.disk, %struct.disk* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @likely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.disk*, %struct.disk** %2, align 8
  %87 = getelementptr inbounds %struct.disk, %struct.disk* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @rrdset_is_obsolete(i32 %88)
  br label %90

90:                                               ; preds = %85, %79
  %91 = load i32, i32* @disks_added, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* @disks_added, align 4
  %93 = load %struct.disk*, %struct.disk** %2, align 8
  %94 = getelementptr inbounds %struct.disk, %struct.disk* %93, i32 0, i32 0
  %95 = load %struct.disk*, %struct.disk** %94, align 8
  %96 = call i32 @freez(%struct.disk* %95)
  %97 = load %struct.disk*, %struct.disk** %2, align 8
  %98 = call i32 @freez(%struct.disk* %97)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rrdset_is_obsolete(i32) #1

declare dso_local i32 @freez(%struct.disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
