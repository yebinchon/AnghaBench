; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcsysimg.c_parse_opt_block.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcsysimg.c_parse_opt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csys_block = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@MAX_ARG_LEN = common dso_local global i32 0, align 4
@MAX_ARG_COUNT = common dso_local global i32 0, align 4
@num_blocks = common dso_local global i64 0, align 8
@MAX_NUM_BLOCKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"too many blocks specified\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@blocks = common dso_local global %struct.csys_block* null, align 8
@boot_block = common dso_local global %struct.csys_block* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"only one boot block allowed\00", align 1
@BLOCK_TYPE_BOOT = common dso_local global i32 0, align 4
@conf_block = common dso_local global %struct.csys_block* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"only one config block allowed\00", align 1
@BLOCK_TYPE_CONF = common dso_local global i32 0, align 4
@webp_block = common dso_local global %struct.csys_block* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"only one web block allowed\00", align 1
@BLOCK_TYPE_WEBP = common dso_local global i32 0, align 4
@CSUM_SIZE_8 = common dso_local global i32 0, align 4
@code_block = common dso_local global %struct.csys_block* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"only one runtime block allowed\00", align 1
@BLOCK_TYPE_CODE = common dso_local global i32 0, align 4
@CSUM_SIZE_16 = common dso_local global i32 0, align 4
@BLOCK_TYPE_XTRA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"unknown block type \22%c\22\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"no file specified in %s\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"invalid start address in %s\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"invalid alignment value in %s\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"invalid paddig character in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_block(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.csys_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @MAX_ARG_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @MAX_ARG_COUNT, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8*, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load i64, i64* @num_blocks, align 8
  %22 = load i64, i64* @MAX_NUM_BLOCKS, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ERR_FATAL, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %204

27:                                               ; preds = %2
  %28 = load %struct.csys_block*, %struct.csys_block** @blocks, align 8
  %29 = load i64, i64* @num_blocks, align 8
  %30 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %28, i64 %29
  store %struct.csys_block* %30, %struct.csys_block** %11, align 8
  %31 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %32 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %34 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %33, i32 0, i32 1
  store i32 255, i32* %34, align 4
  %35 = load i8, i8* %4, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %93 [
    i32 98, label %37
    i32 99, label %47
    i32 119, label %57
    i32 114, label %74
    i32 120, label %89
  ]

37:                                               ; preds = %27
  %38 = load %struct.csys_block*, %struct.csys_block** @boot_block, align 8
  %39 = icmp ne %struct.csys_block* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %98

42:                                               ; preds = %37
  %43 = load i32, i32* @BLOCK_TYPE_BOOT, align 4
  %44 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %45 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  store %struct.csys_block* %46, %struct.csys_block** @boot_block, align 8
  br label %98

47:                                               ; preds = %27
  %48 = load %struct.csys_block*, %struct.csys_block** @conf_block, align 8
  %49 = icmp ne %struct.csys_block* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %98

52:                                               ; preds = %47
  %53 = load i32, i32* @BLOCK_TYPE_CONF, align 4
  %54 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %55 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 8
  %56 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  store %struct.csys_block* %56, %struct.csys_block** @conf_block, align 8
  br label %98

57:                                               ; preds = %27
  %58 = load %struct.csys_block*, %struct.csys_block** @webp_block, align 8
  %59 = icmp ne %struct.csys_block* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %98

62:                                               ; preds = %57
  %63 = load i32, i32* @BLOCK_TYPE_WEBP, align 4
  %64 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %65 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 8
  %66 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %67 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %66, i32 0, i32 2
  store i32 4, i32* %67, align 8
  %68 = load i32, i32* @CSUM_SIZE_8, align 4
  %69 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %70 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %72 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  store %struct.csys_block* %73, %struct.csys_block** @webp_block, align 8
  br label %98

74:                                               ; preds = %27
  %75 = load %struct.csys_block*, %struct.csys_block** @code_block, align 8
  %76 = icmp ne %struct.csys_block* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %98

79:                                               ; preds = %74
  %80 = load i32, i32* @BLOCK_TYPE_CODE, align 4
  %81 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %82 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %84 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %83, i32 0, i32 2
  store i32 4, i32* %84, align 8
  %85 = load i32, i32* @CSUM_SIZE_16, align 4
  %86 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %87 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %86, i32 0, i32 9
  store i32 %85, i32* %87, align 4
  %88 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  store %struct.csys_block* %88, %struct.csys_block** @code_block, align 8
  br label %98

89:                                               ; preds = %27
  %90 = load i32, i32* @BLOCK_TYPE_XTRA, align 4
  %91 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %92 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  br label %98

93:                                               ; preds = %27
  %94 = load i8, i8* %4, align 1
  %95 = sext i8 %94 to i32
  %96 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @ERR_FATAL, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %204

98:                                               ; preds = %89, %79, %77, %62, %60, %52, %50, %42, %40
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @parse_arg(i8* %99, i8* %17, i8** %20)
  store i32 %100, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8*, i8** %20, i64 %103
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %10, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @is_empty_arg(i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %98
  %110 = load i8*, i8** %10, align 8
  %111 = call i32* @strdup(i8* %110)
  %112 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %113 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %112, i32 0, i32 7
  store i32* %111, i32** %113, align 8
  %114 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %115 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* @ERR_FATAL, align 4
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %204

121:                                              ; preds = %109
  br label %132

122:                                              ; preds = %98
  %123 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %124 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  %130 = load i32, i32* @ERR_FATAL, align 4
  store i32 %130, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %204

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %121
  %133 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %134 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %132
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8*, i8** %20, i64 %140
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %10, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 @is_empty_arg(i8* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %159, label %146

146:                                              ; preds = %137
  %147 = load i8*, i8** %10, align 8
  %148 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %149 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %148, i32 0, i32 6
  %150 = call i64 @str2u32(i8* %147, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i8*, i8** %5, align 8
  %154 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %153)
  %155 = load i32, i32* @ERR_FATAL, align 4
  store i32 %155, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %204

156:                                              ; preds = %146
  %157 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %158 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %157, i32 0, i32 3
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %137
  br label %160

160:                                              ; preds = %159, %132
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8*, i8** %20, i64 %163
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %10, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = call i32 @is_empty_arg(i8* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %182, label %169

169:                                              ; preds = %160
  %170 = load i8*, i8** %10, align 8
  %171 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %172 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %171, i32 0, i32 5
  %173 = call i64 @str2u32(i8* %170, i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load i8*, i8** %5, align 8
  %177 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %176)
  %178 = load i32, i32* @ERR_FATAL, align 4
  store i32 %178, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %204

179:                                              ; preds = %169
  %180 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %181 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %180, i32 0, i32 4
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %179, %160
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8*, i8** %20, i64 %185
  %187 = load i8*, i8** %186, align 8
  store i8* %187, i8** %10, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = call i32 @is_empty_arg(i8* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %182
  %192 = load i8*, i8** %10, align 8
  %193 = load %struct.csys_block*, %struct.csys_block** %11, align 8
  %194 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %193, i32 0, i32 1
  %195 = call i64 @str2u8(i8* %192, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load i8*, i8** %5, align 8
  %199 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %198)
  %200 = load i32, i32* @ERR_FATAL, align 4
  store i32 %200, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %204

201:                                              ; preds = %191, %182
  %202 = load i64, i64* @num_blocks, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* @num_blocks, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %204

204:                                              ; preds = %201, %197, %175, %152, %127, %118, %93, %24
  %205 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ERR(i8*, ...) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i32 @parse_arg(i8*, i8*, i8**) #2

declare dso_local i32 @is_empty_arg(i8*) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i64 @str2u32(i8*, i32*) #2

declare dso_local i64 @str2u8(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
