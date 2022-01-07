; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_context.c_ra_ctx_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_context.c_ra_ctx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.ra_ctx*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ra_ctx*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_ctx_destroy(%struct.ra_ctx** %0) #0 {
  %2 = alloca %struct.ra_ctx**, align 8
  %3 = alloca %struct.ra_ctx*, align 8
  store %struct.ra_ctx** %0, %struct.ra_ctx*** %2, align 8
  %4 = load %struct.ra_ctx**, %struct.ra_ctx*** %2, align 8
  %5 = load %struct.ra_ctx*, %struct.ra_ctx** %4, align 8
  store %struct.ra_ctx* %5, %struct.ra_ctx** %3, align 8
  %6 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %7 = icmp ne %struct.ra_ctx* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.ra_ctx*)*, i32 (%struct.ra_ctx*)** %20, align 8
  %22 = icmp ne i32 (%struct.ra_ctx*)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ra_ctx*)*, i32 (%struct.ra_ctx*)** %29, align 8
  %31 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %32 = call i32 %30(%struct.ra_ctx* %31)
  br label %33

33:                                               ; preds = %23, %14, %9
  %34 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.ra_ctx*)*, i32 (%struct.ra_ctx*)** %37, align 8
  %39 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %40 = call i32 %38(%struct.ra_ctx* %39)
  %41 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %42 = call i32 @talloc_free(%struct.ra_ctx* %41)
  %43 = load %struct.ra_ctx**, %struct.ra_ctx*** %2, align 8
  store %struct.ra_ctx* null, %struct.ra_ctx** %43, align 8
  br label %44

44:                                               ; preds = %33, %8
  ret void
}

declare dso_local i32 @talloc_free(%struct.ra_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
