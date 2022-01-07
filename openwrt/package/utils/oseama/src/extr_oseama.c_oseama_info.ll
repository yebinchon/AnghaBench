; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/oseama/src/extr_oseama.c_oseama_info.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/oseama/src/extr_oseama.c_oseama_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seama_seal_header = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No Seama file passed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@seama_path = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Couldn't read %s header\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SEAMA_MAGIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Invalid Seama magic: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Too small buffer (%zu B) to read all meta info (%d B)\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Invalid Seama image size: 0x%08x (should be 0)\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Couldn't read %d B of meta\0A\00", align 1
@entity_idx = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"Meta size:\09%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Image size:\09%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Meta entry:\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @oseama_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oseama_info(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.seama_seal_header, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x %struct.seama_seal_header], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  br label %145

21:                                               ; preds = %2
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** @seama_path, align 8
  store i32 3, i32* @optind, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i8**, i8*** %4, align 8
  %27 = call i32 @oseama_info_parse_options(i32 %25, i8** %26)
  %28 = load i8*, i8** @seama_path, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** @seama_path, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @EACCES, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %145

38:                                               ; preds = %21
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @fread(%struct.seama_seal_header* %6, i32 1, i32 12, i32* %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 12
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** @seama_path, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %142

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.seama_seal_header, %struct.seama_seal_header* %6, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = getelementptr inbounds %struct.seama_seal_header, %struct.seama_seal_header* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = getelementptr inbounds %struct.seama_seal_header, %struct.seama_seal_header* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = load i32, i32* @SEAMA_MAGIC, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %49
  %62 = load i32, i32* @stderr, align 4
  %63 = getelementptr inbounds %struct.seama_seal_header, %struct.seama_seal_header* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %142

69:                                               ; preds = %49
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp uge i64 %71, 12288
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i64 12288, i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %142

79:                                               ; preds = %69
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* @stderr, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %142

88:                                               ; preds = %79
  %89 = getelementptr inbounds [1024 x %struct.seama_seal_header], [1024 x %struct.seama_seal_header]* %10, i64 0, i64 0
  %90 = load i32, i32* %8, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = call i64 @fread(%struct.seama_seal_header* %89, i32 1, i32 %90, i32* %91)
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ne i64 %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load i32, i32* @stderr, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  br label %142

103:                                              ; preds = %88
  %104 = load i64, i64* @entity_idx, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %139

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [1024 x %struct.seama_seal_header], [1024 x %struct.seama_seal_header]* %10, i64 0, i64 %113
  %115 = bitcast %struct.seama_seal_header* %114 to i8*
  store i8* %115, i8** %12, align 8
  %116 = load i8*, i8** %12, align 8
  store i8 0, i8* %116, align 1
  %117 = getelementptr inbounds [1024 x %struct.seama_seal_header], [1024 x %struct.seama_seal_header]* %10, i64 0, i64 0
  %118 = bitcast %struct.seama_seal_header* %117 to i8*
  store i8* %118, i8** %13, align 8
  br label %119

119:                                              ; preds = %132, %106
  %120 = load i8*, i8** %13, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = icmp ult i8* %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i8*, i8** %13, align 8
  %125 = call i64 @strlen(i8* %124)
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i1 [ false, %119 ], [ %126, %123 ]
  br i1 %128, label %129, label %138

129:                                              ; preds = %127
  %130 = load i8*, i8** %13, align 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %129
  %133 = load i8*, i8** %13, align 8
  %134 = call i64 @strlen(i8* %133)
  %135 = add nsw i64 %134, 1
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  store i8* %137, i8** %13, align 8
  br label %119

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %103
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @oseama_info_entities(i32* %140)
  br label %142

142:                                              ; preds = %139, %97, %82, %73, %61, %43
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @fclose(i32* %143)
  br label %145

145:                                              ; preds = %142, %32, %16
  %146 = load i32, i32* %11, align 4
  ret i32 %146
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @oseama_info_parse_options(i32, i8**) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(%struct.seama_seal_header*, i32, i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @oseama_info_entities(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
