; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_write_out_blocks.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_write_out_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.fw_block = type { i32, i32, i32, i32 }
%struct.mylo_fw_blockdesc = type { i8*, i8*, i8*, i8* }

@fw_num_partitions = common dso_local global i64 0, align 8
@FW_DESC_TYPE_USED = common dso_local global i32 0, align 4
@board = common dso_local global %struct.TYPE_2__* null, align 8
@MYLO_MAX_PARTITIONS = common dso_local global i32 0, align 4
@PART_NAME_LEN = common dso_local global i32 0, align 4
@fw_num_blocks = common dso_local global i32 0, align 4
@fw_blocks = common dso_local global %struct.fw_block* null, align 8
@BLOCK_FLAG_HAVEHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_blocks(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mylo_fw_blockdesc, align 8
  %7 = alloca %struct.fw_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i64, i64* @fw_num_partitions, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load i32, i32* @FW_DESC_TYPE_USED, align 4
  %14 = call i8* @HOST_TO_LE32(i32 %13)
  %15 = getelementptr inbounds %struct.mylo_fw_blockdesc, %struct.mylo_fw_blockdesc* %6, i32 0, i32 3
  store i8* %14, i8** %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @HOST_TO_LE32(i32 %18)
  %20 = getelementptr inbounds %struct.mylo_fw_blockdesc, %struct.mylo_fw_blockdesc* %6, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @MYLO_MAX_PARTITIONS, align 4
  %22 = load i32, i32* @PART_NAME_LEN, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @HOST_TO_LE32(i32 %26)
  %28 = getelementptr inbounds %struct.mylo_fw_blockdesc, %struct.mylo_fw_blockdesc* %6, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @HOST_TO_LE32(i32 %31)
  %33 = getelementptr inbounds %struct.mylo_fw_blockdesc, %struct.mylo_fw_blockdesc* %6, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @write_out_desc(i32* %34, %struct.mylo_fw_blockdesc* %6, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %126

39:                                               ; preds = %12
  br label %40

40:                                               ; preds = %39, %2
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %89, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @fw_num_blocks, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %41
  %46 = load %struct.fw_block*, %struct.fw_block** @fw_blocks, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %46, i64 %48
  store %struct.fw_block* %49, %struct.fw_block** %7, align 8
  %50 = load %struct.fw_block*, %struct.fw_block** %7, align 8
  %51 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.fw_block*, %struct.fw_block** %7, align 8
  %54 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BLOCK_FLAG_HAVEHDR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %45
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ALIGN(i32 %65, i32 4)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @FW_DESC_TYPE_USED, align 4
  %68 = call i8* @HOST_TO_LE32(i32 %67)
  %69 = getelementptr inbounds %struct.mylo_fw_blockdesc, %struct.mylo_fw_blockdesc* %6, i32 0, i32 3
  store i8* %68, i8** %69, align 8
  %70 = load %struct.fw_block*, %struct.fw_block** %7, align 8
  %71 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @HOST_TO_LE32(i32 %72)
  %74 = getelementptr inbounds %struct.mylo_fw_blockdesc, %struct.mylo_fw_blockdesc* %6, i32 0, i32 2
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @HOST_TO_LE32(i32 %75)
  %77 = getelementptr inbounds %struct.mylo_fw_blockdesc, %struct.mylo_fw_blockdesc* %6, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = load %struct.fw_block*, %struct.fw_block** %7, align 8
  %79 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @HOST_TO_LE32(i32 %80)
  %82 = getelementptr inbounds %struct.mylo_fw_blockdesc, %struct.mylo_fw_blockdesc* %6, i32 0, i32 0
  store i8* %81, i8** %82, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i64 @write_out_desc(i32* %83, %struct.mylo_fw_blockdesc* %6, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %126

88:                                               ; preds = %64
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %41

92:                                               ; preds = %41
  %93 = call i32 @memset(%struct.mylo_fw_blockdesc* %6, i32 0, i32 32)
  %94 = load i32*, i32** %4, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i64 @write_out_desc(i32* %94, %struct.mylo_fw_blockdesc* %6, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 -1, i32* %3, align 4
  br label %126

99:                                               ; preds = %92
  %100 = load i32*, i32** %4, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i64 @write_out_partitions(i32* %100, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 -1, i32* %3, align 4
  br label %126

105:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %122, %105
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @fw_num_blocks, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %106
  %111 = load %struct.fw_block*, %struct.fw_block** @fw_blocks, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %111, i64 %113
  store %struct.fw_block* %114, %struct.fw_block** %7, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.fw_block*, %struct.fw_block** %7, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = call i64 @write_out_file(i32* %115, %struct.fw_block* %116, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i32 -1, i32* %3, align 4
  br label %126

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %106

125:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %120, %104, %98, %87, %38
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i8* @HOST_TO_LE32(i32) #1

declare dso_local i64 @write_out_desc(i32*, %struct.mylo_fw_blockdesc*, i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @memset(%struct.mylo_fw_blockdesc*, i32, i32) #1

declare dso_local i64 @write_out_partitions(i32*, i32*) #1

declare dso_local i64 @write_out_file(i32*, %struct.fw_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
