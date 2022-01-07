; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_ring.c_get_buf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_ring.c_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32* }

@ring_size = common dso_local global i32 0, align 4
@guest = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ring = common dso_local global %struct.TYPE_4__* null, align 8
@DESC_HW = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_buf(i32* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @ring_size, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @guest, i32 0, i32 0), align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ring, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DESC_HW, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %71

23:                                               ; preds = %2
  %24 = call i32 (...) @smp_acquire()
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ring, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %4, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ring, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ring_size, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %8, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load i8**, i8*** %5, align 8
  store i8* %54, i8** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @guest, i32 0, i32 1), align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @guest, i32 0, i32 1), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @guest, i32 0, i32 0), align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @guest, i32 0, i32 0), align 4
  %70 = load i8*, i8** %8, align 8
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %23, %22
  %72 = load i8*, i8** %3, align 8
  ret i8* %72
}

declare dso_local i32 @smp_acquire(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
