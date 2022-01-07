; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_cancel_fn.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_cancel_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_dispatch_queue = type { i32, %struct.mp_dispatch_item*, %struct.mp_dispatch_item* }
%struct.mp_dispatch_item = type { i64, i8*, %struct.mp_dispatch_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_dispatch_cancel_fn(%struct.mp_dispatch_queue* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.mp_dispatch_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mp_dispatch_item**, align 8
  %8 = alloca %struct.mp_dispatch_item*, align 8
  store %struct.mp_dispatch_queue* %0, %struct.mp_dispatch_queue** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %4, align 8
  %10 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %9, i32 0, i32 0
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %4, align 8
  %13 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %12, i32 0, i32 2
  store %struct.mp_dispatch_item** %13, %struct.mp_dispatch_item*** %7, align 8
  %14 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %4, align 8
  %15 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %14, i32 0, i32 1
  store %struct.mp_dispatch_item* null, %struct.mp_dispatch_item** %15, align 8
  br label %16

16:                                               ; preds = %47, %3
  %17 = load %struct.mp_dispatch_item**, %struct.mp_dispatch_item*** %7, align 8
  %18 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %17, align 8
  %19 = icmp ne %struct.mp_dispatch_item* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load %struct.mp_dispatch_item**, %struct.mp_dispatch_item*** %7, align 8
  %22 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %21, align 8
  store %struct.mp_dispatch_item* %22, %struct.mp_dispatch_item** %8, align 8
  %23 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %8, align 8
  %24 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %8, align 8
  %30 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %8, align 8
  %36 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %35, i32 0, i32 2
  %37 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %36, align 8
  %38 = load %struct.mp_dispatch_item**, %struct.mp_dispatch_item*** %7, align 8
  store %struct.mp_dispatch_item* %37, %struct.mp_dispatch_item** %38, align 8
  %39 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %8, align 8
  %40 = call i32 @talloc_free(%struct.mp_dispatch_item* %39)
  br label %47

41:                                               ; preds = %28, %20
  %42 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %8, align 8
  %43 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %4, align 8
  %44 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %43, i32 0, i32 1
  store %struct.mp_dispatch_item* %42, %struct.mp_dispatch_item** %44, align 8
  %45 = load %struct.mp_dispatch_item*, %struct.mp_dispatch_item** %8, align 8
  %46 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %45, i32 0, i32 2
  store %struct.mp_dispatch_item** %46, %struct.mp_dispatch_item*** %7, align 8
  br label %47

47:                                               ; preds = %41, %34
  br label %16

48:                                               ; preds = %16
  %49 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %4, align 8
  %50 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %49, i32 0, i32 0
  %51 = call i32 @pthread_mutex_unlock(i32* %50)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @talloc_free(%struct.mp_dispatch_item*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
