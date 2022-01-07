; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/oseama/src/extr_oseama.c_oseama_extract.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/oseama/src/extr_oseama.c_oseama_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seama_seal_header = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No Seama file passed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@seama_path = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@entity_idx = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"No entity specified\0A\00", align 1
@out_path = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"No output file specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Couldn't read %s header\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @oseama_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oseama_extract(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.seama_seal_header, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  br label %91

18:                                               ; preds = %2
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @seama_path, align 8
  store i32 3, i32* @optind, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = call i32 @oseama_extract_parse_options(i32 %22, i8** %23)
  %25 = load i64, i64* @entity_idx, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %91

32:                                               ; preds = %18
  %33 = load i8*, i8** @out_path, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %91

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** @seama_path, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** @seama_path, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @EACCES, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %91

52:                                               ; preds = %41
  %53 = load i8*, i8** @out_path, align 8
  %54 = call i32* @fopen(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** @out_path, align 8
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @EACCES, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %88

63:                                               ; preds = %52
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @fread(%struct.seama_seal_header* %7, i32 1, i32 4, i32* %64)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 4
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8*, i8** @seama_path, align 8
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  br label %85

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.seama_seal_header, %struct.seama_seal_header* %7, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be16_to_cpu(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @SEEK_CUR, align 4
  %81 = call i32 @fseek(i32* %78, i32 %79, i32 %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @oseama_extract_entity(i32* %82, i32* %83)
  br label %85

85:                                               ; preds = %74, %68
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @fclose(i32* %86)
  br label %88

88:                                               ; preds = %85, %57
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @fclose(i32* %89)
  br label %91

91:                                               ; preds = %88, %46, %35, %27, %13
  %92 = load i32, i32* %10, align 4
  ret i32 %92
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @oseama_extract_parse_options(i32, i8**) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(%struct.seama_seal_header*, i32, i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @oseama_extract_entity(i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
