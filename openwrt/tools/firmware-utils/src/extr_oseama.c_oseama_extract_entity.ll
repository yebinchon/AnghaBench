; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_oseama.c_oseama_extract_entity.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_oseama.c_oseama_extract_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seama_entity_header = type { i32, i32, i32 }

@SEAMA_MAGIC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid Seama magic: 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@entity_idx = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't write %zu B to %s\0A\00", align 1
@out_path = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Couldn't extract whole entity %d from %s (%zu B left)\0A\00", align 1
@seama_path = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @oseama_extract_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oseama_extract_entity(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.seama_entity_header, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [1024 x %struct.seama_entity_header], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %42, %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @fread(%struct.seama_entity_header* %5, i32 1, i32 12, i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = icmp eq i64 %15, 12
  br i1 %16, label %17, label %98

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %5, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = load i32, i32* @SEAMA_MAGIC, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* @stderr, align 4
  %25 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %5, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %12, align 4
  br label %98

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be16_to_cpu(i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @entity_idx, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %31
  %43 = load i32*, i32** %3, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @SEEK_CUR, align 4
  %49 = call i32 @fseek(i32* %43, i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %13

52:                                               ; preds = %31
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* @SEEK_CUR, align 4
  %55 = call i32 @fseek(i32* %53, i32 -12, i32 %54)
  %56 = load i64, i64* %7, align 8
  %57 = add i64 12, %56
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %57, %58
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %82, %52
  %61 = getelementptr inbounds [1024 x %struct.seama_entity_header], [1024 x %struct.seama_entity_header]* %10, i64 0, i64 0
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @oseama_min(i32 12288, i64 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i64 @fread(%struct.seama_entity_header* %61, i32 1, i32 %63, i32* %64)
  store i64 %65, i64* %6, align 8
  %66 = icmp ugt i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %60
  %68 = getelementptr inbounds [1024 x %struct.seama_entity_header], [1024 x %struct.seama_entity_header]* %10, i64 0, i64 0
  %69 = load i64, i64* %6, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i64 @fwrite(%struct.seama_entity_header* %68, i32 1, i64 %69, i32* %70)
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load i32, i32* @stderr, align 4
  %76 = load i64, i64* %6, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @out_path, align 4
  %79 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %86

82:                                               ; preds = %67
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %9, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %9, align 8
  br label %60

86:                                               ; preds = %74, %60
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32, i32* @entity_idx, align 4
  %92 = load i8*, i8** @seama_path, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %91, i8* %92, i64 %93)
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %98

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %89, %23, %13
  %99 = load i32, i32* %12, align 4
  ret i32 %99
}

declare dso_local i64 @fread(%struct.seama_entity_header*, i32, i32, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @oseama_min(i32, i64) #1

declare dso_local i64 @fwrite(%struct.seama_entity_header*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
