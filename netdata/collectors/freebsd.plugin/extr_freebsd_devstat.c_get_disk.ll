; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_devstat.c_get_disk.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_devstat.c_get_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i64, i8*, %struct.disk*, i32 }

@disks_last_used = common dso_local global %struct.disk* null, align 8
@disks_root = common dso_local global %struct.disk* null, align 8
@disks_added = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.disk* (i8*)* @get_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.disk* @get_disk(i8* %0) #0 {
  %2 = alloca %struct.disk*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.disk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.disk*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @simple_hash(i8* %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.disk*, %struct.disk** @disks_last_used, align 8
  store %struct.disk* %9, %struct.disk** %4, align 8
  br label %10

10:                                               ; preds = %38, %1
  %11 = load %struct.disk*, %struct.disk** %4, align 8
  %12 = icmp ne %struct.disk* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.disk*, %struct.disk** %4, align 8
  %16 = getelementptr inbounds %struct.disk, %struct.disk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.disk*, %struct.disk** %4, align 8
  %22 = getelementptr inbounds %struct.disk, %struct.disk* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* %20, i8* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %19, %13
  %28 = phi i1 [ false, %13 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.disk*, %struct.disk** %4, align 8
  %34 = getelementptr inbounds %struct.disk, %struct.disk* %33, i32 0, i32 2
  %35 = load %struct.disk*, %struct.disk** %34, align 8
  store %struct.disk* %35, %struct.disk** @disks_last_used, align 8
  %36 = load %struct.disk*, %struct.disk** %4, align 8
  store %struct.disk* %36, %struct.disk** %2, align 8
  br label %119

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.disk*, %struct.disk** %4, align 8
  %40 = getelementptr inbounds %struct.disk, %struct.disk* %39, i32 0, i32 2
  %41 = load %struct.disk*, %struct.disk** %40, align 8
  store %struct.disk* %41, %struct.disk** %4, align 8
  br label %10

42:                                               ; preds = %10
  %43 = load %struct.disk*, %struct.disk** @disks_root, align 8
  store %struct.disk* %43, %struct.disk** %4, align 8
  br label %44

44:                                               ; preds = %73, %42
  %45 = load %struct.disk*, %struct.disk** %4, align 8
  %46 = load %struct.disk*, %struct.disk** @disks_last_used, align 8
  %47 = icmp ne %struct.disk* %45, %46
  br i1 %47, label %48, label %77

48:                                               ; preds = %44
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.disk*, %struct.disk** %4, align 8
  %51 = getelementptr inbounds %struct.disk, %struct.disk* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i8*, i8** %3, align 8
  %56 = load %struct.disk*, %struct.disk** %4, align 8
  %57 = getelementptr inbounds %struct.disk, %struct.disk* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* %55, i8* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %54, %48
  %63 = phi i1 [ false, %48 ], [ %61, %54 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.disk*, %struct.disk** %4, align 8
  %69 = getelementptr inbounds %struct.disk, %struct.disk* %68, i32 0, i32 2
  %70 = load %struct.disk*, %struct.disk** %69, align 8
  store %struct.disk* %70, %struct.disk** @disks_last_used, align 8
  %71 = load %struct.disk*, %struct.disk** %4, align 8
  store %struct.disk* %71, %struct.disk** %2, align 8
  br label %119

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.disk*, %struct.disk** %4, align 8
  %75 = getelementptr inbounds %struct.disk, %struct.disk* %74, i32 0, i32 2
  %76 = load %struct.disk*, %struct.disk** %75, align 8
  store %struct.disk* %76, %struct.disk** %4, align 8
  br label %44

77:                                               ; preds = %44
  %78 = call %struct.disk* @callocz(i32 1, i32 32)
  store %struct.disk* %78, %struct.disk** %4, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = call i8* @strdupz(i8* %79)
  %81 = load %struct.disk*, %struct.disk** %4, align 8
  %82 = getelementptr inbounds %struct.disk, %struct.disk* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.disk*, %struct.disk** %4, align 8
  %84 = getelementptr inbounds %struct.disk, %struct.disk* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @simple_hash(i8* %85)
  %87 = load %struct.disk*, %struct.disk** %4, align 8
  %88 = getelementptr inbounds %struct.disk, %struct.disk* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.disk*, %struct.disk** %4, align 8
  %90 = getelementptr inbounds %struct.disk, %struct.disk* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = load %struct.disk*, %struct.disk** %4, align 8
  %94 = getelementptr inbounds %struct.disk, %struct.disk* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @disks_added, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @disks_added, align 4
  %97 = load %struct.disk*, %struct.disk** @disks_root, align 8
  %98 = icmp ne %struct.disk* %97, null
  br i1 %98, label %99, label %115

99:                                               ; preds = %77
  %100 = load %struct.disk*, %struct.disk** @disks_root, align 8
  store %struct.disk* %100, %struct.disk** %6, align 8
  br label %101

101:                                              ; preds = %107, %99
  %102 = load %struct.disk*, %struct.disk** %6, align 8
  %103 = getelementptr inbounds %struct.disk, %struct.disk* %102, i32 0, i32 2
  %104 = load %struct.disk*, %struct.disk** %103, align 8
  %105 = icmp ne %struct.disk* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.disk*, %struct.disk** %6, align 8
  %109 = getelementptr inbounds %struct.disk, %struct.disk* %108, i32 0, i32 2
  %110 = load %struct.disk*, %struct.disk** %109, align 8
  store %struct.disk* %110, %struct.disk** %6, align 8
  br label %101

111:                                              ; preds = %101
  %112 = load %struct.disk*, %struct.disk** %4, align 8
  %113 = load %struct.disk*, %struct.disk** %6, align 8
  %114 = getelementptr inbounds %struct.disk, %struct.disk* %113, i32 0, i32 2
  store %struct.disk* %112, %struct.disk** %114, align 8
  br label %117

115:                                              ; preds = %77
  %116 = load %struct.disk*, %struct.disk** %4, align 8
  store %struct.disk* %116, %struct.disk** @disks_root, align 8
  br label %117

117:                                              ; preds = %115, %111
  %118 = load %struct.disk*, %struct.disk** %4, align 8
  store %struct.disk* %118, %struct.disk** %2, align 8
  br label %119

119:                                              ; preds = %117, %67, %32
  %120 = load %struct.disk*, %struct.disk** %2, align 8
  ret %struct.disk* %120
}

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.disk* @callocz(i32, i32) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
