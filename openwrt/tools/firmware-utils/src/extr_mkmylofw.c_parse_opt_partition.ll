; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_parse_opt_partition.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_parse_opt_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_part = type { i8*, %struct.mylo_partition }
%struct.mylo_partition = type { i64, i64, i32, i64 }
%struct.fw_block = type { i64, i64, i32, i32 }

@MAX_ARG_LEN = common dso_local global i32 0, align 4
@MAX_ARG_COUNT = common dso_local global i32 0, align 4
@fw_num_partitions = common dso_local global i64 0, align 8
@MYLO_MAX_PARTITIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"too many partitions specified\00", align 1
@fw_parts = common dso_local global %struct.fw_part* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"partition address missing in -%c %s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid partition address: %s\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"partition size missing in -%c %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid partition size: %s\00", align 1
@PARTITION_FLAG_ACTIVE = common dso_local global i32 0, align 4
@PARTITION_FLAG_PRELOAD = common dso_local global i32 0, align 4
@PARTITION_FLAG_LZMA = common dso_local global i32 0, align 4
@PARTITION_FLAG_HAVEHDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"invalid partition flag \22%c\22\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"invalid partition parameter: %s\00", align 1
@PART_NAME_LEN = common dso_local global i32 0, align 4
@flash_size = common dso_local global i64 0, align 8
@fw_num_blocks = common dso_local global i64 0, align 8
@MAX_FW_BLOCKS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"too many blocks specified\00", align 1
@fw_blocks = common dso_local global %struct.fw_block* null, align 8
@BLOCK_FLAG_HAVEHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_partition(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mylo_partition*, align 8
  %12 = alloca %struct.fw_part*, align 8
  %13 = alloca %struct.fw_block*, align 8
  %14 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @MAX_ARG_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @MAX_ARG_COUNT, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8*, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i8, i8* %4, align 1
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @required_arg(i8 signext %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %229

27:                                               ; preds = %2
  %28 = load i64, i64* @fw_num_partitions, align 8
  %29 = load i64, i64* @MYLO_MAX_PARTITIONS, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %229

33:                                               ; preds = %27
  %34 = load %struct.fw_part*, %struct.fw_part** @fw_parts, align 8
  %35 = load i64, i64* @fw_num_partitions, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @fw_num_partitions, align 8
  %37 = getelementptr inbounds %struct.fw_part, %struct.fw_part* %34, i64 %35
  store %struct.fw_part* %37, %struct.fw_part** %12, align 8
  %38 = load %struct.fw_part*, %struct.fw_part** %12, align 8
  %39 = getelementptr inbounds %struct.fw_part, %struct.fw_part* %38, i32 0, i32 1
  store %struct.mylo_partition* %39, %struct.mylo_partition** %11, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @parse_arg(i8* %40, i8* %18, i8** %21)
  store i32 %41, i32* %9, align 4
  %42 = getelementptr inbounds i8*, i8** %21, i64 0
  %43 = load i8*, i8** %42, align 16
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @is_empty_arg(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load i8, i8* %4, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* %50)
  br label %229

52:                                               ; preds = %33
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %55 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %54, i32 0, i32 0
  %56 = call i64 @str2u32(i8* %53, i64* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %229

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds i8*, i8** %21, i64 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i64 @is_empty_arg(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i8, i8* %4, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* %71)
  br label %229

73:                                               ; preds = %62
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %76 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %75, i32 0, i32 1
  %77 = call i64 @str2u32(i8* %74, i64* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  br label %229

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds i8*, i8** %21, i64 2
  %85 = load i8*, i8** %84, align 16
  store i8* %85, i8** %10, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i64 @is_empty_arg(i8* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %133

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %129, %89
  %91 = load i8*, i8** %10, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %132

95:                                               ; preds = %90
  %96 = load i8*, i8** %10, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  switch i32 %98, label %123 [
    i32 97, label %99
    i32 112, label %105
    i32 108, label %111
    i32 104, label %117
  ]

99:                                               ; preds = %95
  %100 = load i32, i32* @PARTITION_FLAG_ACTIVE, align 4
  %101 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %102 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %128

105:                                              ; preds = %95
  %106 = load i32, i32* @PARTITION_FLAG_PRELOAD, align 4
  %107 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %108 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %128

111:                                              ; preds = %95
  %112 = load i32, i32* @PARTITION_FLAG_LZMA, align 4
  %113 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %114 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %128

117:                                              ; preds = %95
  %118 = load i32, i32* @PARTITION_FLAG_HAVEHDR, align 4
  %119 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %120 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %128

123:                                              ; preds = %95
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  br label %229

128:                                              ; preds = %117, %111, %105, %99
  br label %129

129:                                              ; preds = %128
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %10, align 8
  br label %90

132:                                              ; preds = %90
  br label %133

133:                                              ; preds = %132, %83
  %134 = getelementptr inbounds i8*, i8** %21, i64 3
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %10, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = call i64 @is_empty_arg(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %141 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %140, i32 0, i32 3
  store i64 0, i64* %141, align 8
  br label %152

142:                                              ; preds = %133
  %143 = load i8*, i8** %10, align 8
  %144 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %145 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %144, i32 0, i32 3
  %146 = call i64 @str2u32(i8* %143, i64* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i8*, i8** %10, align 8
  %150 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %149)
  br label %229

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %139
  %153 = getelementptr inbounds i8*, i8** %21, i64 4
  %154 = load i8*, i8** %153, align 16
  store i8* %154, i8** %10, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = call i64 @is_empty_arg(i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load %struct.fw_part*, %struct.fw_part** %12, align 8
  %160 = getelementptr inbounds %struct.fw_part, %struct.fw_part* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  store i8 0, i8* %162, align 1
  br label %170

163:                                              ; preds = %152
  %164 = load %struct.fw_part*, %struct.fw_part** %12, align 8
  %165 = getelementptr inbounds %struct.fw_part, %struct.fw_part* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load i32, i32* @PART_NAME_LEN, align 4
  %169 = call i32 @strncpy(i8* %166, i8* %167, i32 %168)
  br label %170

170:                                              ; preds = %163, %158
  %171 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %172 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load i64, i64* @flash_size, align 8
  %177 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %178 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %176, %179
  %181 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %182 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %175, %170
  %184 = getelementptr inbounds i8*, i8** %21, i64 5
  %185 = load i8*, i8** %184, align 8
  store i8* %185, i8** %10, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = call i64 @is_empty_arg(i8* %186)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %228

189:                                              ; preds = %183
  %190 = load i64, i64* @fw_num_blocks, align 8
  %191 = load i64, i64* @MAX_FW_BLOCKS, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i8*, i8** %10, align 8
  %195 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %194)
  br label %229

196:                                              ; preds = %189
  %197 = load %struct.fw_block*, %struct.fw_block** @fw_blocks, align 8
  %198 = load i64, i64* @fw_num_blocks, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* @fw_num_blocks, align 8
  %200 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %197, i64 %198
  store %struct.fw_block* %200, %struct.fw_block** %13, align 8
  %201 = load i8*, i8** %10, align 8
  %202 = call i32 @strdup(i8* %201)
  %203 = load %struct.fw_block*, %struct.fw_block** %13, align 8
  %204 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  %205 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %206 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.fw_block*, %struct.fw_block** %13, align 8
  %209 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  %210 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %211 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.fw_block*, %struct.fw_block** %13, align 8
  %214 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  %215 = load %struct.mylo_partition*, %struct.mylo_partition** %11, align 8
  %216 = getelementptr inbounds %struct.mylo_partition, %struct.mylo_partition* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @PARTITION_FLAG_HAVEHDR, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %196
  %222 = load i32, i32* @BLOCK_FLAG_HAVEHDR, align 4
  %223 = load %struct.fw_block*, %struct.fw_block** %13, align 8
  %224 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %221, %196
  br label %228

228:                                              ; preds = %227, %183
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %230

229:                                              ; preds = %193, %148, %123, %79, %68, %58, %47, %31, %26
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %230

230:                                              ; preds = %229, %228
  %231 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @required_arg(i8 signext, i8*) #2

declare dso_local i32 @errmsg(i32, i8*, ...) #2

declare dso_local i32 @parse_arg(i8*, i8*, i8**) #2

declare dso_local i64 @is_empty_arg(i8*) #2

declare dso_local i64 @str2u32(i8*, i64*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
