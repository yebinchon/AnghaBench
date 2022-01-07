; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/osafeloader/src/extr_osafeloader.c_osafeloader_extract.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/osafeloader/src/extr_osafeloader.c_osafeloader_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safeloader_header = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No SafeLoader file passed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@safeloader_path = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@partition_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"No partition name specified\0A\00", align 1
@out_path = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"No output file specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Couldn't read %s header\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"fwup-ptn %s base 0x%x size 0x%x\09\0D\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Couldn't write %zu B to %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Couldn't extract whole partition %s from %s (%d B left)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @osafeloader_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osafeloader_extract(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.safeloader_header, align 4
  %8 = alloca i64, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1024 x %struct.safeloader_header], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  br label %148

21:                                               ; preds = %2
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** @safeloader_path, align 8
  store i32 3, i32* @optind, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i8**, i8*** %4, align 8
  %27 = call i32 @osafeloader_extract_parse_options(i32 %25, i8** %26)
  %28 = load i8*, i8** @partition_name, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %148

35:                                               ; preds = %21
  %36 = load i8*, i8** @out_path, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %148

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** @safeloader_path, align 8
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** @safeloader_path, align 8
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @EACCES, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %148

55:                                               ; preds = %44
  %56 = load i8*, i8** @out_path, align 8
  %57 = call i32* @fopen(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** @out_path, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @EACCES, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %145

66:                                               ; preds = %55
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @fread(%struct.safeloader_header* %7, i32 1, i32 4, i32* %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 4
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** @safeloader_path, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %142

77:                                               ; preds = %66
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* @SEEK_CUR, align 4
  %80 = call i32 @fseek(i32* %78, i32 4096, i32 %79)
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %93, %77
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %86 = call i32 @fscanf(i32* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %85, i32* %10, i32* %11)
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %141

88:                                               ; preds = %83
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %90 = load i8*, i8** @partition_name, align 8
  %91 = call i64 @strcmp(i8* %89, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %83

94:                                               ; preds = %88
  store i32 0, i32* %12, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 4100, %97
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* @SEEK_SET, align 4
  %101 = call i32 @fseek(i32* %95, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %123, %94
  %103 = getelementptr inbounds [1024 x %struct.safeloader_header], [1024 x %struct.safeloader_header]* %13, i64 0, i64 0
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @osafeloader_min(i32 4096, i32 %104)
  %106 = load i32*, i32** %5, align 8
  %107 = call i64 @fread(%struct.safeloader_header* %103, i32 1, i32 %105, i32* %106)
  store i64 %107, i64* %8, align 8
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %102
  %110 = getelementptr inbounds [1024 x %struct.safeloader_header], [1024 x %struct.safeloader_header]* %13, i64 0, i64 0
  %111 = load i64, i64* %8, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i64 @fwrite(%struct.safeloader_header* %110, i32 1, i64 %111, i32* %112)
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i32, i32* @stderr, align 4
  %118 = load i64, i64* %8, align 8
  %119 = load i8*, i8** @out_path, align 8
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %118, i8* %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %12, align 4
  br label %129

123:                                              ; preds = %109
  %124 = load i64, i64* %8, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = sub i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %11, align 4
  br label %102

129:                                              ; preds = %116, %102
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i32, i32* @stderr, align 4
  %134 = load i8*, i8** @partition_name, align 8
  %135 = load i8*, i8** @safeloader_path, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i8* %134, i8* %135, i32 %136)
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %132, %129
  br label %141

141:                                              ; preds = %140, %83
  br label %142

142:                                              ; preds = %141, %71
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @fclose(i32* %143)
  br label %145

145:                                              ; preds = %142, %60
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @fclose(i32* %146)
  br label %148

148:                                              ; preds = %145, %49, %38, %30, %16
  %149 = load i32, i32* %12, align 4
  ret i32 %149
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @osafeloader_extract_parse_options(i32, i8**) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(%struct.safeloader_header*, i32, i32, i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fscanf(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @osafeloader_min(i32, i32) #1

declare dso_local i64 @fwrite(%struct.safeloader_header*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
