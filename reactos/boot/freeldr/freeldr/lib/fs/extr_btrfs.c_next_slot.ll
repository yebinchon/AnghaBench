; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_next_slot.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_next_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_disk_key = type { i32 }
%struct.btrfs_path = type { i32*, i32*, i64* }
%struct.TYPE_3__ = type { i64 }

@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_disk_key*, %struct.btrfs_path*)* @next_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_slot(%struct.btrfs_disk_key* %0, %struct.btrfs_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_disk_key*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btrfs_disk_key* %0, %struct.btrfs_disk_key** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %9 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %131

15:                                               ; preds = %2
  %16 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %24 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %22, %27
  br i1 %28, label %29, label %111

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %62, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %105

34:                                               ; preds = %30
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %36 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %131

44:                                               ; preds = %34
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %55 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %53, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %30

65:                                               ; preds = %44
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %68 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %74 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %81 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 0, i32* %86, align 4
  %87 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %88 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  store i64 0, i64* %93, align 8
  %94 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %95 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %4, align 8
  %103 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %104 = call i32 @_BtrFsSearchTree(i64 %100, i32 %101, %struct.btrfs_disk_key* %102, %struct.btrfs_path* %103)
  br label %105

105:                                              ; preds = %65, %30
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 1, i32* %3, align 4
  br label %131

110:                                              ; preds = %105
  br label %117

111:                                              ; preds = %15
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %114 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %110
  %118 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %119 = call %struct.TYPE_3__* @path_current_disk_key(%struct.btrfs_path* %118)
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %4, align 8
  %125 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %126 = call %struct.TYPE_3__* @path_current_disk_key(%struct.btrfs_path* %125)
  %127 = call i32 @btrfs_comp_keys_type(%struct.btrfs_disk_key* %124, %struct.TYPE_3__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %131

130:                                              ; preds = %123, %117
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %129, %109, %43, %14
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @_BtrFsSearchTree(i64, i32, %struct.btrfs_disk_key*, %struct.btrfs_path*) #1

declare dso_local %struct.TYPE_3__* @path_current_disk_key(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_comp_keys_type(%struct.btrfs_disk_key*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
