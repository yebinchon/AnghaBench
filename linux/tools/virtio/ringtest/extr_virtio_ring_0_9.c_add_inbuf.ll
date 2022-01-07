; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_virtio_ring_0_9.c_add_inbuf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_virtio_ring_0_9.c_add_inbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.vring_desc* }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.vring_desc = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i8* }

@guest = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ring = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VRING_DESC_F_NEXT = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_8__* null, align 8
@ring_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_inbuf(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vring_desc*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @guest, i32 0, i32 2), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %78

14:                                               ; preds = %3
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @guest, i32 0, i32 0), align 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @guest, i32 0, i32 2), align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @guest, i32 0, i32 2), align 8
  %18 = load %struct.vring_desc*, %struct.vring_desc** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ring, i32 0, i32 1), align 8
  store %struct.vring_desc* %18, %struct.vring_desc** %10, align 8
  %19 = load i32, i32* @VRING_DESC_F_NEXT, align 4
  %20 = load %struct.vring_desc*, %struct.vring_desc** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %20, i64 %22
  %24 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %23, i32 0, i32 3
  store i32 %19, i32* %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.vring_desc*, %struct.vring_desc** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %27, i64 %29
  %31 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %30, i32 0, i32 0
  store i64 %26, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.vring_desc*, %struct.vring_desc** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %33, i64 %35
  %37 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %36, i32 0, i32 1
  store i32 %32, i32* %37, align 8
  %38 = load i32, i32* @VRING_DESC_F_NEXT, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.vring_desc*, %struct.vring_desc** %10, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %40, i64 %42
  %44 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %39
  store i32 %46, i32* %44, align 8
  %47 = load %struct.vring_desc*, %struct.vring_desc** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %47, i64 %49
  %51 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @guest, i32 0, i32 0), align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @data, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i8* %53, i8** %58, align 8
  %59 = call i32 (...) @smp_release()
  %60 = load i32, i32* @ring_size, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @guest, i32 0, i32 1), align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @guest, i32 0, i32 1), align 8
  %65 = and i64 %62, %63
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ring, i32 0, i32 0), align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = call i32 (...) @smp_release()
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @guest, i32 0, i32 1), align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ring, i32 0, i32 0), align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %14, %13
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @smp_release(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
