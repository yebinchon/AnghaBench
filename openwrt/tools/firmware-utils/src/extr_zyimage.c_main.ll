; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_zyimage.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_zyimage.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature = type { [4 x i8], i32, [48 x i8], i32 }
%struct.signature.0 = type { i8*, i32, i8*, i32 }

@__const.main.sign = private unnamed_addr constant %struct.signature { [4 x i8] c"ZNBG", i32 1, [48 x i8] c"V.1.0.0(1.0.0)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, align 4
@main.optString = internal global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"v:d:h\00", align 1
@optarg = common dso_local global i32* null, align 8
@optind = common dso_local global i64 0, align 8
@W_OK = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Not open input file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ZNBG\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"Image is already signed as:\0ADevice ID: 0x%08x\0AFirmware version: %s\0AImage CRC32: 0x%x\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"Image signed as:\0ADevice ID: 0x%08x\0AFirmware version: %s\0AImage CRC32: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.signature, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.signature, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast %struct.signature* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 getelementptr inbounds (%struct.signature, %struct.signature* @__const.main.sign, i32 0, i32 0, i32 0), i64 60, i1 false)
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @usage(i8* %17)
  br label %19

19:                                               ; preds = %14, %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** @main.optString, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** @main.optString, align 8
  %23 = call i32 @getopt(i32 %20, i8** %21, i8* %22)
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %63, %19
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %62 [
    i32 118, label %29
    i32 100, label %44
    i32 63, label %57
    i32 104, label %57
  ]

29:                                               ; preds = %27
  %30 = load i32*, i32** @optarg, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @usage(i8* %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 2
  %39 = getelementptr inbounds [48 x i8], [48 x i8]* %38, i64 0, i64 0
  %40 = load i32*, i32** @optarg, align 8
  %41 = call i32 @strncpy(i8* %39, i32* %40, i32 47)
  %42 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 2
  %43 = getelementptr inbounds [48 x i8], [48 x i8]* %42, i64 0, i64 47
  store i8 0, i8* %43, align 1
  br label %63

44:                                               ; preds = %27
  %45 = load i32*, i32** @optarg, align 8
  %46 = call i32 @atoi(i32* %45)
  %47 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32*, i32** @optarg, align 8
  %53 = call i64 @strtol(i32* %52, i32* null, i32 16)
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %44
  br label %63

57:                                               ; preds = %27, %27
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @usage(i8* %60)
  br label %63

62:                                               ; preds = %27
  br label %63

63:                                               ; preds = %62, %57, %56, %37
  %64 = load i32, i32* %4, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** @main.optString, align 8
  %67 = call i32 @getopt(i32 %64, i8** %65, i8* %66)
  store i32 %67, i32* %10, align 4
  br label %24

68:                                               ; preds = %24
  %69 = call i32 (...) @chksum_crc32gentab()
  %70 = load i8**, i8*** %5, align 8
  %71 = load i64, i64* @optind, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @W_OK, align 4
  %76 = call i64 @access(i8* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %68
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* @R_OK, align 4
  %81 = call i64 @access(i8* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78, %68
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = call i32 @exit(i32 1) #4
  unreachable

87:                                               ; preds = %78
  %88 = load i8**, i8*** %5, align 8
  %89 = load i64, i64* @optind, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32* @fopen(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %92, i32** %7, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %134

95:                                               ; preds = %87
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @SEEK_END, align 4
  %98 = call i32 @fseek(i32* %96, i32 -60, i32 %97)
  %99 = bitcast %struct.signature* %8 to %struct.signature.0*
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @fread(%struct.signature.0* %99, i32 60, i32 1, i32* %100)
  %102 = getelementptr inbounds %struct.signature, %struct.signature* %8, i32 0, i32 0
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %102, i64 0, i64 0
  %104 = call i64 @strncmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.signature, %struct.signature* %8, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.signature, %struct.signature* %8, i32 0, i32 2
  %110 = getelementptr inbounds [48 x i8], [48 x i8]* %109, i64 0, i64 0
  %111 = getelementptr inbounds %struct.signature, %struct.signature* %8, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32 %108, i8* %110, i32 %112)
  %114 = call i32 @exit(i32 0) #4
  unreachable

115:                                              ; preds = %95
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* @SEEK_SET, align 4
  %118 = call i32 @fseek(i32* %116, i32 0, i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @chksum_crc32(i32* %119)
  %121 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = bitcast %struct.signature* %6 to %struct.signature.0*
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @fwrite(%struct.signature.0* %122, i32 60, i32 1, i32* %123)
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @fclose(i32* %125)
  %127 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 2
  %130 = getelementptr inbounds [48 x i8], [48 x i8]* %129, i64 0, i64 0
  %131 = getelementptr inbounds %struct.signature, %struct.signature* %6, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %128, i8* %130, i32 %132)
  br label %134

134:                                              ; preds = %115, %87
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strncpy(i8*, i32*, i32) #2

declare dso_local i32 @atoi(i32*) #2

declare dso_local i64 @strtol(i32*, i32*, i32) #2

declare dso_local i32 @chksum_crc32gentab(...) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32 @fread(%struct.signature.0*, i32, i32, i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @chksum_crc32(i32*) #2

declare dso_local i32 @fwrite(%struct.signature.0*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
