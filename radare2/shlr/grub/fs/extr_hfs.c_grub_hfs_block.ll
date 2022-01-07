; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.grub_hfs_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.grub_hfs_extent_key = type { i8*, i32, i64 }

@grub_hfs_block.cache_file = internal global i32 0, align 4
@grub_hfs_block.cache_pos = internal global i32 0, align 4
@grub_hfs_block.cache_dr = internal global %struct.TYPE_7__* null, align 8
@GRUB_HFS_BLKS = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_hfs_data*, %struct.TYPE_7__*, i32, i32, i32)* @grub_hfs_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfs_block(%struct.grub_hfs_data* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.grub_hfs_data*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.grub_hfs_extent_key, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.grub_hfs_data* %0, %struct.grub_hfs_data** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = call i32 @grub_memcpy(%struct.TYPE_7__* %18, %struct.TYPE_7__* %19, i32 8)
  %21 = getelementptr inbounds %struct.grub_hfs_extent_key, %struct.grub_hfs_extent_key* %14, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @grub_cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.grub_hfs_extent_key, %struct.grub_hfs_extent_key* %14, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %5
  %28 = load i32, i32* @grub_hfs_block.cache_file, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @grub_hfs_block.cache_pos, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* @grub_hfs_block.cache_pos, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i8* @grub_cpu_to_be16(i32 %37)
  %39 = getelementptr inbounds %struct.grub_hfs_extent_key, %struct.grub_hfs_extent_key* %14, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @grub_hfs_block.cache_dr, align 8
  %42 = call i32 @grub_memcpy(%struct.TYPE_7__* %40, %struct.TYPE_7__* %41, i32 8)
  br label %43

43:                                               ; preds = %35, %31, %27, %5
  br label %44

44:                                               ; preds = %120, %43
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %103, %44
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %106

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @grub_be_to_cpu16(i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %48
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @grub_be_to_cpu16(i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* @grub_hfs_block.cache_file, align 4
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* @grub_hfs_block.cache_pos, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @grub_hfs_block.cache_dr, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %78 = call i32 @grub_memcpy(%struct.TYPE_7__* %76, %struct.TYPE_7__* %77, i32 8)
  br label %79

79:                                               ; preds = %73, %70, %60
  %80 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %7, align 8
  %81 = getelementptr inbounds %struct.grub_hfs_data, %struct.grub_hfs_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @grub_be_to_cpu16(i32 %83)
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load i32, i32* @GRUB_HFS_BLKS, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %84, %91
  store i32 %92, i32* %6, align 4
  br label %121

93:                                               ; preds = %48
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @grub_be_to_cpu16(i32 %99)
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %45

106:                                              ; preds = %45
  %107 = load i32, i32* %13, align 4
  %108 = call i8* @grub_cpu_to_be16(i32 %107)
  %109 = getelementptr inbounds %struct.grub_hfs_extent_key, %struct.grub_hfs_extent_key* %14, i32 0, i32 0
  store i8* %108, i8** %109, align 8
  store i32 1, i32* %15, align 4
  %110 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %7, align 8
  %111 = bitcast %struct.grub_hfs_extent_key* %14 to i8*
  %112 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %7, align 8
  %113 = getelementptr inbounds %struct.grub_hfs_data, %struct.grub_hfs_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = bitcast %struct.TYPE_7__** %12 to i8*
  %116 = call i32 @grub_hfs_find_node(%struct.grub_hfs_data* %110, i8* %111, i32 %114, i32 1, i8* %115, i32 8)
  %117 = load i64, i64* @grub_errno, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %121

120:                                              ; preds = %106
  br label %44

121:                                              ; preds = %119, %79
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @grub_memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @grub_cpu_to_be32(i32) #1

declare dso_local i8* @grub_cpu_to_be16(i32) #1

declare dso_local i32 @grub_be_to_cpu16(i32) #1

declare dso_local i32 @grub_hfs_find_node(%struct.grub_hfs_data*, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
