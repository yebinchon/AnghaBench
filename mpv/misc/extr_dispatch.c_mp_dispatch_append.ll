; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_append.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_dispatch_queue = type { i32, i32, i32 (i32)*, i32, i32, %struct.mp_dispatch_item*, %struct.mp_dispatch_item* }
%struct.mp_dispatch_item = type { i64, i64, %struct.mp_dispatch_item*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_dispatch_queue*, %struct.mp_dispatch_item*)* @mp_dispatch_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_dispatch_append(%struct.mp_dispatch_queue* %0, %struct.mp_dispatch_item* %1) #0 {
  %3 = alloca %struct.mp_dispatch_queue*, align 8
  %4 = alloca %struct.mp_dispatch_item*, align 8
  %5 = alloca %struct.mp_dispatch_item*, align 8
  store %struct.mp_dispatch_queue* %0, %struct.mp_dispatch_queue** %3, align 8
  store %struct.mp_dispatch_item* %1, %struct.mp_dispatch_item** %4, align 8
  %6 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %7 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %6, i32 0, i32 3
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  %9 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %4, align 8
  %10 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %15 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %14, i32 0, i32 6
  %16 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %15, align 8
  store %struct.mp_dispatch_item* %16, %struct.mp_dispatch_item** %5, align 8
  br label %17

17:                                               ; preds = %48, %13
  %18 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %19 = icmp ne %struct.mp_dispatch_item* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %22 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %27 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %4, align 8
  %30 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %25
  %34 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %35 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %4, align 8
  %38 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %4, align 8
  %43 = call i32 @talloc_free(%struct.mp_dispatch_item* %42)
  %44 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %45 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %44, i32 0, i32 3
  %46 = call i32 @pthread_mutex_unlock(i32* %45)
  br label %98

47:                                               ; preds = %33, %25, %20
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %5, align 8
  %50 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %49, i32 0, i32 2
  %51 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %50, align 8
  store %struct.mp_dispatch_item* %51, %struct.mp_dispatch_item** %5, align 8
  br label %17

52:                                               ; preds = %17
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %55 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %54, i32 0, i32 5
  %56 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %55, align 8
  %57 = icmp ne %struct.mp_dispatch_item* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %4, align 8
  %60 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %61 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %60, i32 0, i32 5
  %62 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %61, align 8
  %63 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %62, i32 0, i32 2
  store %struct.mp_dispatch_item* %59, %struct.mp_dispatch_item** %63, align 8
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %4, align 8
  %66 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %67 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %66, i32 0, i32 6
  store %struct.mp_dispatch_item* %65, %struct.mp_dispatch_item** %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %4, align 8
  %70 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %71 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %70, i32 0, i32 5
  store %struct.mp_dispatch_item* %69, %struct.mp_dispatch_item** %71, align 8
  %72 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %73 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %72, i32 0, i32 4
  %74 = call i32 @pthread_cond_broadcast(i32* %73)
  %75 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %76 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %75, i32 0, i32 2
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = icmp ne i32 (i32)* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %81 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %68
  %83 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %84 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %83, i32 0, i32 3
  %85 = call i32 @pthread_mutex_unlock(i32* %84)
  %86 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %87 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %86, i32 0, i32 2
  %88 = load i32 (i32)*, i32 (i32)** %87, align 8
  %89 = icmp ne i32 (i32)* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %92 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %91, i32 0, i32 2
  %93 = load i32 (i32)*, i32 (i32)** %92, align 8
  %94 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %3, align 8
  %95 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 %93(i32 %96)
  br label %98

98:                                               ; preds = %41, %90, %82
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @talloc_free(%struct.mp_dispatch_item*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
