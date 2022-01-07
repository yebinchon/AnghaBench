; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_fill_stat.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_fill_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.vfs_stat = type { i8*, i32, i32, i32, i32, i32, i32, %struct.vfs_time, i32 }
%struct.vfs_time = type { i32, i32, i32, i32, i32, i32 }

@FS_OBJ_NAME_LEN = common dso_local global i32 0, align 4
@AM_DIR = common dso_local global i32 0, align 4
@AM_RDO = common dso_local global i32 0, align 4
@AM_HID = common dso_local global i32 0, align 4
@AM_SYS = common dso_local global i32 0, align 4
@AM_ARC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.vfs_stat*)* @myfatfs_fill_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myfatfs_fill_stat(%struct.TYPE_3__* %0, %struct.vfs_stat* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.vfs_stat*, align 8
  %5 = alloca %struct.vfs_time*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.vfs_stat* %1, %struct.vfs_stat** %4, align 8
  %6 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %7 = call i32 @memset(%struct.vfs_stat* %6, i32 0, i32 64)
  %8 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %9 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FS_OBJ_NAME_LEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 @strncpy(i8* %10, i32 %13, i32 %15)
  %17 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %18 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @FS_OBJ_NAME_LEN, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 0, i8* %22, align 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %27 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AM_DIR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %37 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AM_RDO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %47 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AM_HID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %57 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AM_SYS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %67 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AM_ARC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %77 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %79 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %78, i32 0, i32 7
  store %struct.vfs_time* %79, %struct.vfs_time** %5, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 9
  %84 = add nsw i32 %83, 1980
  %85 = load %struct.vfs_time*, %struct.vfs_time** %5, align 8
  %86 = getelementptr inbounds %struct.vfs_time, %struct.vfs_time* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 5
  %91 = and i32 %90, 15
  %92 = load %struct.vfs_time*, %struct.vfs_time** %5, align 8
  %93 = getelementptr inbounds %struct.vfs_time, %struct.vfs_time* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 31
  %98 = load %struct.vfs_time*, %struct.vfs_time** %5, align 8
  %99 = getelementptr inbounds %struct.vfs_time, %struct.vfs_time* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 11
  %104 = load %struct.vfs_time*, %struct.vfs_time** %5, align 8
  %105 = getelementptr inbounds %struct.vfs_time, %struct.vfs_time* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 5
  %110 = and i32 %109, 63
  %111 = load %struct.vfs_time*, %struct.vfs_time** %5, align 8
  %112 = getelementptr inbounds %struct.vfs_time, %struct.vfs_time* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 63
  %117 = load %struct.vfs_time*, %struct.vfs_time** %5, align 8
  %118 = getelementptr inbounds %struct.vfs_time, %struct.vfs_time* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.vfs_stat*, %struct.vfs_stat** %4, align 8
  %120 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %119, i32 0, i32 6
  store i32 1, i32* %120, align 4
  ret void
}

declare dso_local i32 @memset(%struct.vfs_stat*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
