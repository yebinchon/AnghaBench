; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_self_mountinfo.c_mountinfo_find.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_self_mountinfo.c_mountinfo_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mountinfo = type { i64, i64, %struct.mountinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mountinfo* @mountinfo_find(%struct.mountinfo* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mountinfo*, align 8
  %5 = alloca %struct.mountinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mountinfo*, align 8
  store %struct.mountinfo* %0, %struct.mountinfo** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  store %struct.mountinfo* %9, %struct.mountinfo** %8, align 8
  br label %10

10:                                               ; preds = %33, %3
  %11 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %12 = icmp ne %struct.mountinfo* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %15 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %21 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi i1 [ false, %13 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  store %struct.mountinfo* %31, %struct.mountinfo** %4, align 8
  br label %38

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %35 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %34, i32 0, i32 2
  %36 = load %struct.mountinfo*, %struct.mountinfo** %35, align 8
  store %struct.mountinfo* %36, %struct.mountinfo** %8, align 8
  br label %10

37:                                               ; preds = %10
  store %struct.mountinfo* null, %struct.mountinfo** %4, align 8
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  ret %struct.mountinfo* %39
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
