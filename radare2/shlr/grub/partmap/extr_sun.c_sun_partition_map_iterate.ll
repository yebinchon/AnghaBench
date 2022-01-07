; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/partmap/extr_sun.c_sun_partition_map_iterate.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/partmap/extr_sun.c_sun_partition_map_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i32* }
%struct.grub_sun_block = type { i32, i32, %struct.grub_sun_partition_descriptor*, %struct.TYPE_4__*, i32 }
%struct.grub_sun_partition_descriptor = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@grub_errno = common dso_local global i64 0, align 8
@grub_sun_partition_map = common dso_local global i32 0, align 4
@GRUB_PARTMAP_SUN_MAGIC = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_PART_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"not a sun partition table\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid checksum\00", align 1
@GRUB_PARTMAP_SUN_MAX_PARTS = common dso_local global i32 0, align 4
@GRUB_PARTMAP_SUN_WHOLE_DISK_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32 (i32, %struct.TYPE_5__*, i8*)*, i8*)* @sun_partition_map_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun_partition_map_iterate(i32 %0, i32 (i32, %struct.TYPE_5__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (i32, %struct.TYPE_5__*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.grub_sun_block, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.grub_sun_partition_descriptor*, align 8
  store i32 %0, i32* %5, align 4
  store i32 (i32, %struct.TYPE_5__*, i8*)* %1, i32 (i32, %struct.TYPE_5__*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = call i64 @grub_zalloc(i32 4)
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @grub_errno, align 8
  store i64 %18, i64* %4, align 8
  br label %128

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 4
  store i32* @grub_sun_partition_map, i32** %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @grub_disk_read(i32 %22, i32 0, i32 0, i32 32, %struct.grub_sun_block* %9)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = call i32 @grub_free(%struct.TYPE_5__* %27)
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %4, align 8
  br label %128

30:                                               ; preds = %19
  %31 = load i32, i32* @GRUB_PARTMAP_SUN_MAGIC, align 4
  %32 = getelementptr inbounds %struct.grub_sun_block, %struct.grub_sun_block* %9, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @grub_be_to_cpu16(i32 %33)
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = call i32 @grub_free(%struct.TYPE_5__* %37)
  %39 = load i32, i32* @GRUB_ERR_BAD_PART_TABLE, align 4
  %40 = call i64 @grub_error(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 %40, i64* %4, align 8
  br label %128

41:                                               ; preds = %30
  %42 = call i32 @grub_sun_is_valid(%struct.grub_sun_block* %9)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = call i32 @grub_free(%struct.TYPE_5__* %45)
  %47 = load i32, i32* @GRUB_ERR_BAD_PART_TABLE, align 4
  %48 = call i64 @grub_error(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i64 %48, i64* %4, align 8
  br label %128

49:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %121, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @GRUB_PARTMAP_SUN_MAX_PARTS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %124

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.grub_sun_block, %struct.grub_sun_block* %9, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.grub_sun_block, %struct.grub_sun_block* %9, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @GRUB_PARTMAP_SUN_WHOLE_DISK_ID, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63, %54
  br label %121

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.grub_sun_block, %struct.grub_sun_block* %9, i32 0, i32 2
  %76 = load %struct.grub_sun_partition_descriptor*, %struct.grub_sun_partition_descriptor** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.grub_sun_partition_descriptor, %struct.grub_sun_partition_descriptor* %76, i64 %78
  store %struct.grub_sun_partition_descriptor* %79, %struct.grub_sun_partition_descriptor** %12, align 8
  %80 = load %struct.grub_sun_partition_descriptor*, %struct.grub_sun_partition_descriptor** %12, align 8
  %81 = getelementptr inbounds %struct.grub_sun_partition_descriptor, %struct.grub_sun_partition_descriptor* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @grub_be_to_cpu32(i32 %82)
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.grub_sun_block, %struct.grub_sun_block* %9, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @grub_be_to_cpu16(i32 %86)
  %88 = mul nsw i32 %84, %87
  %89 = getelementptr inbounds %struct.grub_sun_block, %struct.grub_sun_block* %9, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @grub_be_to_cpu16(i32 %90)
  %92 = mul nsw i32 %88, %91
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.grub_sun_partition_descriptor*, %struct.grub_sun_partition_descriptor** %12, align 8
  %96 = getelementptr inbounds %struct.grub_sun_partition_descriptor, %struct.grub_sun_partition_descriptor* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @grub_be_to_cpu32(i32 %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %74
  %111 = load i32 (i32, %struct.TYPE_5__*, i8*)*, i32 (i32, %struct.TYPE_5__*, i8*)** %6, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 %111(i32 %112, %struct.TYPE_5__* %113, i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @GRUB_PARTMAP_SUN_MAX_PARTS, align 4
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %117, %110
  br label %120

120:                                              ; preds = %119, %74
  br label %121

121:                                              ; preds = %120, %73
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %50

124:                                              ; preds = %50
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %126 = call i32 @grub_free(%struct.TYPE_5__* %125)
  %127 = load i64, i64* @grub_errno, align 8
  store i64 %127, i64* %4, align 8
  br label %128

128:                                              ; preds = %124, %44, %36, %26, %17
  %129 = load i64, i64* %4, align 8
  ret i64 %129
}

declare dso_local i64 @grub_zalloc(i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, %struct.grub_sun_block*) #1

declare dso_local i32 @grub_free(%struct.TYPE_5__*) #1

declare dso_local i32 @grub_be_to_cpu16(i32) #1

declare dso_local i64 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_sun_is_valid(%struct.grub_sun_block*) #1

declare dso_local i64 @grub_be_to_cpu32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
