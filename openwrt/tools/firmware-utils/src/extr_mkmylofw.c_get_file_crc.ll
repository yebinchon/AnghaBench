; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_get_file_crc.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkmylofw.c_get_file_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_block = type { i32, i64, i32, i32 }

@FILE_BUF_LEN = common dso_local global i32 0, align 4
@BLOCK_FLAG_HAVEHDR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to open file %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to read from file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_file_crc(%struct.fw_block* %0) #0 {
  %2 = alloca %struct.fw_block*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.fw_block* %0, %struct.fw_block** %2, align 8
  %9 = load i32, i32* @FILE_BUF_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = mul nuw i64 4, %10
  store i64 %13, i64* %6, align 8
  store i32 -1, i32* %7, align 4
  %14 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %15 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BLOCK_FLAG_HAVEHDR, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %71

21:                                               ; preds = %1
  store i64 0, i64* @errno, align 8
  %22 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %23 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @fopen(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %3, align 8
  %26 = load i64, i64* @errno, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %30 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @errmsg(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %71

33:                                               ; preds = %21
  %34 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %35 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %37 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %59, %33
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %46, %42
  store i64 0, i64* @errno, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @fread(i32* %12, i64 %49, i32 1, i32* %50)
  %52 = load i64, i64* @errno, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %56 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @errmsg(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %68

59:                                               ; preds = %48
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %62 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %61, i32 0, i32 2
  %63 = call i32 @update_crc(i32* %12, i64 %60, i32* %62)
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %8, align 8
  br label %39

67:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %54
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @fclose(i32* %69)
  br label %71

71:                                               ; preds = %68, %28, %20
  %72 = load i32, i32* %7, align 4
  %73 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %73)
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @errmsg(i32, i8*, i32) #2

declare dso_local i32 @fread(i32*, i64, i32, i32*) #2

declare dso_local i32 @update_crc(i32*, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
