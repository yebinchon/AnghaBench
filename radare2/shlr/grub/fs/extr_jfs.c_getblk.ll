; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_getblk.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_getblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_jfs_treehead = type { i32, i32 }
%struct.grub_jfs_tree_extent = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.getblk_closure = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.anon = type { %struct.grub_jfs_treehead, [254 x %struct.grub_jfs_tree_extent] }

@GRUB_JFS_TREE_LEAF = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_jfs_treehead*, %struct.grub_jfs_tree_extent*, %struct.getblk_closure*)* @getblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getblk(%struct.grub_jfs_treehead* %0, %struct.grub_jfs_tree_extent* %1, %struct.getblk_closure* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.grub_jfs_treehead*, align 8
  %6 = alloca %struct.grub_jfs_tree_extent*, align 8
  %7 = alloca %struct.getblk_closure*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.anon, align 4
  store %struct.grub_jfs_treehead* %0, %struct.grub_jfs_treehead** %5, align 8
  store %struct.grub_jfs_tree_extent* %1, %struct.grub_jfs_tree_extent** %6, align 8
  store %struct.getblk_closure* %2, %struct.getblk_closure** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %109, %3
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.grub_jfs_treehead*, %struct.grub_jfs_treehead** %5, align 8
  %15 = getelementptr inbounds %struct.grub_jfs_treehead, %struct.grub_jfs_treehead* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @grub_le_to_cpu16(i32 %16)
  %18 = sub nsw i64 %17, 2
  %19 = icmp slt i64 %13, %18
  br i1 %19, label %20, label %112

20:                                               ; preds = %11
  %21 = load %struct.grub_jfs_treehead*, %struct.grub_jfs_treehead** %5, align 8
  %22 = getelementptr inbounds %struct.grub_jfs_treehead, %struct.grub_jfs_treehead* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GRUB_JFS_TREE_LEAF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %20
  %28 = load %struct.grub_jfs_tree_extent*, %struct.grub_jfs_tree_extent** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %28, i64 %30
  %32 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @grub_le_to_cpu32(i32 %33)
  %35 = load %struct.getblk_closure*, %struct.getblk_closure** %7, align 8
  %36 = getelementptr inbounds %struct.getblk_closure, %struct.getblk_closure* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %92

39:                                               ; preds = %27
  %40 = load %struct.grub_jfs_tree_extent*, %struct.grub_jfs_tree_extent** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %40, i64 %42
  %44 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @grub_le_to_cpu16(i32 %46)
  %48 = load %struct.grub_jfs_tree_extent*, %struct.grub_jfs_tree_extent** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %48, i64 %50
  %52 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %47, %56
  %58 = load %struct.grub_jfs_tree_extent*, %struct.grub_jfs_tree_extent** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %58, i64 %60
  %62 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @grub_le_to_cpu32(i32 %63)
  %65 = add nsw i64 %57, %64
  %66 = load %struct.getblk_closure*, %struct.getblk_closure** %7, align 8
  %67 = getelementptr inbounds %struct.getblk_closure, %struct.getblk_closure* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %39
  %71 = load %struct.getblk_closure*, %struct.getblk_closure** %7, align 8
  %72 = getelementptr inbounds %struct.getblk_closure, %struct.getblk_closure* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.grub_jfs_tree_extent*, %struct.grub_jfs_tree_extent** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %74, i64 %76
  %78 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @grub_le_to_cpu32(i32 %79)
  %81 = sub nsw i64 %73, %80
  %82 = load %struct.grub_jfs_tree_extent*, %struct.grub_jfs_tree_extent** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %82, i64 %84
  %86 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @grub_le_to_cpu32(i32 %88)
  %90 = add nsw i64 %81, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %151

92:                                               ; preds = %39, %27
  br label %108

93:                                               ; preds = %20
  %94 = load %struct.getblk_closure*, %struct.getblk_closure** %7, align 8
  %95 = getelementptr inbounds %struct.getblk_closure, %struct.getblk_closure* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.grub_jfs_tree_extent*, %struct.grub_jfs_tree_extent** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %97, i64 %99
  %101 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @grub_le_to_cpu32(i32 %102)
  %104 = icmp sge i64 %96, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %105, %93
  br label %108

108:                                              ; preds = %107, %92
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %11

112:                                              ; preds = %11
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %150

115:                                              ; preds = %112
  %116 = load %struct.getblk_closure*, %struct.getblk_closure** %7, align 8
  %117 = getelementptr inbounds %struct.getblk_closure, %struct.getblk_closure* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.grub_jfs_tree_extent*, %struct.grub_jfs_tree_extent** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %121, i64 %123
  %125 = getelementptr inbounds %struct.grub_jfs_tree_extent, %struct.grub_jfs_tree_extent* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @grub_le_to_cpu32(i32 %127)
  %129 = load %struct.getblk_closure*, %struct.getblk_closure** %7, align 8
  %130 = getelementptr inbounds %struct.getblk_closure, %struct.getblk_closure* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @grub_le_to_cpu16(i32 %134)
  %136 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %137 = sext i32 %136 to i64
  %138 = sub nsw i64 %135, %137
  %139 = shl i64 %128, %138
  %140 = bitcast %struct.anon* %10 to i8*
  %141 = call i64 @grub_disk_read(i32 %120, i64 %139, i32 0, i32 4072, i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %115
  store i32 -1, i32* %4, align 4
  br label %151

144:                                              ; preds = %115
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %146 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %147 = getelementptr inbounds [254 x %struct.grub_jfs_tree_extent], [254 x %struct.grub_jfs_tree_extent]* %146, i64 0, i64 0
  %148 = load %struct.getblk_closure*, %struct.getblk_closure** %7, align 8
  %149 = call i32 @getblk(%struct.grub_jfs_treehead* %145, %struct.grub_jfs_tree_extent* %147, %struct.getblk_closure* %148)
  store i32 %149, i32* %4, align 4
  br label %151

150:                                              ; preds = %112
  store i32 -1, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %144, %143, %70
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i64 @grub_le_to_cpu16(i32) #1

declare dso_local i64 @grub_le_to_cpu32(i32) #1

declare dso_local i64 @grub_disk_read(i32, i64, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
