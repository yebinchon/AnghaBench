; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_read_extent_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_read_extent_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_path = type { i32 }
%struct.btrfs_file_extent_item = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [56 x i8] c"Tried to read offset (%llu) beyond extent length (%lu)\0A\00", align 1
@READ_ERROR = common dso_local global i64 0, align 8
@INVALID_ADDRESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Unable to convert logical address to physical: %llu\0A\00", align 1
@BTRFS_COMPRESS_NONE = common dso_local global i64 0, align 8
@SECTOR_SIZE = common dso_local global i32 0, align 4
@TAG_BTRFS_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"No compression supported right now\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btrfs_path*, %struct.btrfs_file_extent_item*, i64, i64, i8*)* @btrfs_read_extent_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_read_extent_reg(%struct.btrfs_path* %0, %struct.btrfs_file_extent_item* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca %struct.btrfs_file_extent_item*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.btrfs_path* %0, %struct.btrfs_path** %7, align 8
  store %struct.btrfs_file_extent_item* %1, %struct.btrfs_file_extent_item** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %17 = getelementptr inbounds %struct.btrfs_file_extent_item, %struct.btrfs_file_extent_item* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %13, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i64, i64* @READ_ERROR, align 8
  store i64 %26, i64* %6, align 8
  br label %183

27:                                               ; preds = %5
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub nsw i64 %29, %30
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %39 = getelementptr inbounds %struct.btrfs_file_extent_item, %struct.btrfs_file_extent_item* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_file_extent_item, %struct.btrfs_file_extent_item* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @RtlZeroMemory(i8* %48, i64 %49)
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %6, align 8
  br label %183

52:                                               ; preds = %42, %37
  %53 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %54 = getelementptr inbounds %struct.btrfs_file_extent_item, %struct.btrfs_file_extent_item* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @logical_physical(i64 %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @INVALID_ADDRESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %62 = getelementptr inbounds %struct.btrfs_file_extent_item, %struct.btrfs_file_extent_item* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load i64, i64* @READ_ERROR, align 8
  store i64 %65, i64* %6, align 8
  br label %183

66:                                               ; preds = %52
  %67 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %68 = getelementptr inbounds %struct.btrfs_file_extent_item, %struct.btrfs_file_extent_item* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BTRFS_COMPRESS_NONE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %180

72:                                               ; preds = %66
  %73 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %8, align 8
  %74 = getelementptr inbounds %struct.btrfs_file_extent_item, %struct.btrfs_file_extent_item* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i64, i64* %12, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i32, i32* @SECTOR_SIZE, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = and i64 %80, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %169

86:                                               ; preds = %72
  %87 = load i32, i32* @SECTOR_SIZE, align 4
  %88 = load i32, i32* @TAG_BTRFS_FILE, align 4
  %89 = call i8* @FrLdrTempAlloc(i32 %87, i32 %88)
  store i8* %89, i8** %14, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i32, i32* @SECTOR_SIZE, align 4
  %92 = call i64 @ALIGN_DOWN_BY(i64 %90, i32 %91)
  %93 = load i8*, i8** %14, align 8
  %94 = load i32, i32* @SECTOR_SIZE, align 4
  %95 = sext i32 %94 to i64
  %96 = call i32 @disk_read(i64 %92, i8* %93, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %86
  %99 = load i8*, i8** %14, align 8
  %100 = load i32, i32* @TAG_BTRFS_FILE, align 4
  %101 = call i32 @FrLdrTempFree(i8* %99, i32 %100)
  %102 = load i64, i64* @READ_ERROR, align 8
  store i64 %102, i64* %6, align 8
  br label %183

103:                                              ; preds = %86
  %104 = load i64, i64* %12, align 8
  %105 = load i32, i32* @SECTOR_SIZE, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = and i64 %104, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %15, align 4
  %110 = load i64, i64* %10, align 8
  %111 = load i32, i32* @SECTOR_SIZE, align 4
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = icmp sle i64 %110, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %103
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i64, i64* %10, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(i8* %117, i8* %121, i32 %123)
  %125 = load i8*, i8** %14, align 8
  %126 = load i32, i32* @TAG_BTRFS_FILE, align 4
  %127 = call i32 @FrLdrTempFree(i8* %125, i32 %126)
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %6, align 8
  br label %183

129:                                              ; preds = %103
  %130 = load i8*, i8** %11, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i32, i32* @SECTOR_SIZE, align 4
  %136 = load i32, i32* %15, align 4
  %137 = sub nsw i32 %135, %136
  %138 = call i32 @memcpy(i8* %130, i8* %134, i32 %137)
  %139 = load i8*, i8** %14, align 8
  %140 = load i32, i32* @TAG_BTRFS_FILE, align 4
  %141 = call i32 @FrLdrTempFree(i8* %139, i32 %140)
  %142 = load i64, i64* %12, align 8
  %143 = load i32, i32* @SECTOR_SIZE, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = sub nsw i64 %145, %147
  %149 = load i8*, i8** %11, align 8
  %150 = load i32, i32* @SECTOR_SIZE, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i64, i64* %10, align 8
  %158 = load i32, i32* @SECTOR_SIZE, align 4
  %159 = sext i32 %158 to i64
  %160 = sub nsw i64 %157, %159
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %160, %162
  %164 = call i32 @disk_read(i64 %148, i8* %156, i64 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %129
  %167 = load i64, i64* @READ_ERROR, align 8
  store i64 %167, i64* %6, align 8
  br label %183

168:                                              ; preds = %129
  br label %178

169:                                              ; preds = %72
  %170 = load i64, i64* %12, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @disk_read(i64 %170, i8* %171, i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %169
  %176 = load i64, i64* @READ_ERROR, align 8
  store i64 %176, i64* %6, align 8
  br label %183

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %168
  %179 = load i64, i64* %10, align 8
  store i64 %179, i64* %6, align 8
  br label %183

180:                                              ; preds = %66
  %181 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %182 = load i64, i64* @READ_ERROR, align 8
  store i64 %182, i64* %6, align 8
  br label %183

183:                                              ; preds = %180, %178, %175, %166, %116, %98, %60, %47, %22
  %184 = load i64, i64* %6, align 8
  ret i64 %184
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @RtlZeroMemory(i8*, i64) #1

declare dso_local i64 @logical_physical(i64) #1

declare dso_local i8* @FrLdrTempAlloc(i32, i32) #1

declare dso_local i32 @disk_read(i64, i8*, i64) #1

declare dso_local i64 @ALIGN_DOWN_BY(i64, i32) #1

declare dso_local i32 @FrLdrTempFree(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
