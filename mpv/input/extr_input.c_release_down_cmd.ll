; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_release_down_cmd.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_release_down_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32, i64, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*, i32)* @release_down_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_down_cmd(%struct.input_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %19, %16
  %29 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memset(i32 %31, i32 0, i32 4)
  %33 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %38 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @mp_input_queue_cmd(%struct.input_ctx* %37, %struct.TYPE_5__* %40)
  br label %47

42:                                               ; preds = %19, %9, %2
  %43 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @talloc_free(%struct.TYPE_5__* %45)
  br label %47

47:                                               ; preds = %42, %28
  %48 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %48, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %49, align 8
  %50 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %57 = call i32 @update_mouse_section(%struct.input_ctx* %56)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mp_input_queue_cmd(%struct.input_ctx*, %struct.TYPE_5__*) #1

declare dso_local i32 @talloc_free(%struct.TYPE_5__*) #1

declare dso_local i32 @update_mouse_section(%struct.input_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
