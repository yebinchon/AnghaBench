; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_ring.c_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_ring.c_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@ring = common dso_local global %struct.desc* null, align 8
@ring_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate ring buffer.\0A\00", align 1
@event = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to allocate event buffer.\0A\00", align 1
@guest = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@host = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@data = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to allocate data buffer.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_ring() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.desc, align 4
  %4 = load i32, i32* @ring_size, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = trunc i64 %6 to i32
  %8 = call i32 @posix_memalign(i8** bitcast (%struct.desc** @ring to i8**), i32 4096, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @exit(i32 3) #4
  unreachable

14:                                               ; preds = %0
  %15 = call i8* @calloc(i32 1, i32 1)
  store i8* %15, i8** @event, align 8
  %16 = load i8*, i8** @event, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = call i32 @perror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @exit(i32 3) #4
  unreachable

21:                                               ; preds = %14
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @guest, i32 0, i32 3), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @guest, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @guest, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @host, i32 0, i32 1), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @host, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @ring_size, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.desc, %struct.desc* %3, i32 0, i32 0
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %27, align 4
  %29 = load %struct.desc*, %struct.desc** @ring, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.desc, %struct.desc* %29, i64 %31
  %33 = bitcast %struct.desc* %32 to i8*
  %34 = bitcast %struct.desc* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %22

38:                                               ; preds = %22
  %39 = load i32, i32* @ring_size, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @guest, i32 0, i32 1), align 4
  %40 = load i32, i32* @ring_size, align 4
  %41 = call i8* @calloc(i32 %40, i32 1)
  store i8* %41, i8** @data, align 8
  %42 = load i8*, i8** @data, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @exit(i32 3) #4
  unreachable

47:                                               ; preds = %38
  ret void
}

declare dso_local i32 @posix_memalign(i8**, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @calloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
