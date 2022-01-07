; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_virtio_ring_0_9.c_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_virtio_ring_0_9.c_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64 }

@ring_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate ring buffer.\0A\00", align 1
@ring = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@guest = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@host = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@data = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to allocate data buffer.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_ring() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @ring_size, align 4
  %5 = call i32 @vring_size(i32 %4, i32 4096)
  %6 = call i32 @posix_memalign(i8** %3, i32 4096, i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @exit(i32 3) #3
  unreachable

12:                                               ; preds = %0
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @ring_size, align 4
  %15 = call i32 @vring_size(i32 %14, i32 4096)
  %16 = call i32 @memset(i8* %13, i32 0, i32 %15)
  %17 = load i32, i32* @ring_size, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @vring_init(%struct.TYPE_7__* @ring, i32 %17, i8* %18, i32 4096)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @guest, i32 0, i32 4), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @guest, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @guest, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @guest, i32 0, i32 2), align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %33, %12
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @ring_size, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ring, i32 0, i32 0), align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %20

36:                                               ; preds = %20
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @host, i32 0, i32 1), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @host, i32 0, i32 0), align 8
  %37 = load i32, i32* @ring_size, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @guest, i32 0, i32 1), align 4
  %38 = load i32, i32* @ring_size, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i8* @malloc(i32 %41)
  store i8* %42, i8** @data, align 8
  %43 = load i8*, i8** @data, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @exit(i32 3) #3
  unreachable

48:                                               ; preds = %36
  %49 = load i8*, i8** @data, align 8
  %50 = load i32, i32* @ring_size, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(i8* %49, i32 0, i32 %53)
  ret void
}

declare dso_local i32 @posix_memalign(i8**, i32, i32) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @vring_init(%struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
