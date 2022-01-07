; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_seama.c_seama_fix_md5.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_seama.c_seama_fix_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seama_entity_header = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pread\00", align 1
@EIO = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"the header is fixed already\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"new size:%u, new MD5: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seama_fix_md5(%struct.seama_entity_header* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.seama_entity_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [16 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.seama_entity_header* %0, %struct.seama_entity_header** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call i8* @malloc(i64 %16)
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %15, align 4
  br label %94

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @pread(i32 %24, i8* %25, i64 %26, i64 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  br label %91

36:                                               ; preds = %23
  %37 = call i32 @MD5_Init(i32* %12)
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @MD5_Update(i32* %12, i8* %38, i64 %39)
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %42 = call i32 @MD5_Final(i8* %41, i32* %12)
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %44 = load %struct.seama_entity_header*, %struct.seama_entity_header** %6, align 8
  %45 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcmp(i8* %43, i32 %46, i32 16)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %36
  %50 = load i32, i32* @quiet, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  store i32 -1, i32* %5, align 4
  br label %96

56:                                               ; preds = %36
  %57 = load i32, i32* @quiet, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = load i64, i64* %9, align 8
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %75, %59
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 16
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %63

78:                                               ; preds = %63
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %56
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @htonl(i64 %82)
  %84 = load %struct.seama_entity_header*, %struct.seama_entity_header** %6, align 8
  %85 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.seama_entity_header*, %struct.seama_entity_header** %6, align 8
  %87 = getelementptr inbounds %struct.seama_entity_header, %struct.seama_entity_header* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %90 = call i32 @memcpy(i32 %88, i8* %89, i32 16)
  br label %91

91:                                               ; preds = %81, %32
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @free(i8* %92)
  br label %94

94:                                               ; preds = %91, %20
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %55
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @MD5_Init(i32*) #1

declare dso_local i32 @MD5_Update(i32*, i8*, i64) #1

declare dso_local i32 @MD5_Final(i8*, i32*) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
