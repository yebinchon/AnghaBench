; ModuleID = '/home/carl/AnghaBench/netdata/collectors/diskspace.plugin/extr_plugin_diskspace.c_mount_point_cleanup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/diskspace.plugin/extr_plugin_diskspace.c_mount_point_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount_point_metadata = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i64, i64 }

@cleanup_mount_points = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mount_point_cleanup(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mount_point_metadata*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mount_point_metadata*
  store %struct.mount_point_metadata* %9, %struct.mount_point_metadata** %6, align 8
  %10 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %11 = icmp ne %struct.mount_point_metadata* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

13:                                               ; preds = %2
  %14 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %15 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %21 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  store i32 0, i32* %3, align 4
  br label %63

22:                                               ; preds = %13
  %23 = load i64, i64* @cleanup_mount_points, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %27 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %26, i32 0, i32 10
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %37 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %36, i32 0, i32 10
  store i64 0, i64* %37, align 8
  %38 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %39 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %41 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %40, i32 0, i32 9
  store i64 0, i64* %41, align 8
  %42 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %43 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %42, i32 0, i32 8
  store i32* null, i32** %43, align 8
  %44 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %45 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %44, i32 0, i32 7
  store i32* null, i32** %45, align 8
  %46 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %47 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %46, i32 0, i32 6
  store i32* null, i32** %47, align 8
  %48 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %49 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %48, i32 0, i32 5
  store i32* null, i32** %49, align 8
  %50 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %51 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %53 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %55 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @rrdset_obsolete_and_pointer_null(i32 %56)
  %58 = load %struct.mount_point_metadata*, %struct.mount_point_metadata** %6, align 8
  %59 = getelementptr inbounds %struct.mount_point_metadata, %struct.mount_point_metadata* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rrdset_obsolete_and_pointer_null(i32 %60)
  br label %62

62:                                               ; preds = %35, %30
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %19, %12
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rrdset_obsolete_and_pointer_null(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
