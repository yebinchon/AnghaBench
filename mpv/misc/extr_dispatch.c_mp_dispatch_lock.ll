; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_lock.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_dispatch_queue = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 (i32)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_dispatch_lock(%struct.mp_dispatch_queue* %0) #0 {
  %2 = alloca %struct.mp_dispatch_queue*, align 8
  store %struct.mp_dispatch_queue* %0, %struct.mp_dispatch_queue** %2, align 8
  %3 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %4 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %3, i32 0, i32 3
  %5 = call i32 @pthread_mutex_lock(i32* %4)
  %6 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %7 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %12 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (...) @pthread_self()
  %15 = call i32 @pthread_equal(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %22 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %27 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (...) @pthread_self()
  %30 = call i32 @pthread_equal(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %25, %20
  %36 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %37 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %71, %35
  %41 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %42 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %77

46:                                               ; preds = %40
  %47 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %48 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %47, i32 0, i32 3
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  %50 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %51 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %50, i32 0, i32 8
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = icmp ne i32 (i32)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %56 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %55, i32 0, i32 8
  %57 = load i32 (i32)*, i32 (i32)** %56, align 8
  %58 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %59 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %57(i32 %60)
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %64 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %63, i32 0, i32 3
  %65 = call i32 @pthread_mutex_lock(i32* %64)
  %66 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %67 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %77

71:                                               ; preds = %62
  %72 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %73 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %72, i32 0, i32 5
  %74 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %75 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %74, i32 0, i32 3
  %76 = call i32 @pthread_cond_wait(i32* %73, i32* %75)
  br label %40

77:                                               ; preds = %70, %40
  br label %78

78:                                               ; preds = %90, %77
  %79 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %80 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %85 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ true, %78 ], [ %87, %83 ]
  br i1 %89, label %90, label %96

90:                                               ; preds = %88
  %91 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %92 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %91, i32 0, i32 5
  %93 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %94 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %93, i32 0, i32 3
  %95 = call i32 @pthread_cond_wait(i32* %92, i32* %94)
  br label %78

96:                                               ; preds = %88
  %97 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %98 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %102 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %109 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %116 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %115, i32 0, i32 2
  store i32 1, i32* %116, align 8
  %117 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %118 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = call i32 (...) @pthread_self()
  %120 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %121 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %123 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %122, i32 0, i32 3
  %124 = call i32 @pthread_mutex_unlock(i32* %123)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_equal(i32, i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
