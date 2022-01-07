; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcsysimg.c_block_writeout_file.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcsysimg.c_block_writeout_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csys_block = type { i64, i32, i32* }

@FILE_BUF_LEN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to open file: %s\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to read from file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_writeout_file(i32* %0, %struct.csys_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.csys_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.csys_block* %1, %struct.csys_block** %5, align 8
  %13 = load i32, i32* @FILE_BUF_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i64 %14, i64* %8, align 8
  %17 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %18 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %84

22:                                               ; preds = %2
  %23 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %24 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %84

28:                                               ; preds = %22
  store i64 0, i64* @errno, align 8
  %29 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %30 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32* @fopen(i32* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %32, i32** %9, align 8
  %33 = load i64, i64* @errno, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %37 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ERRS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %38)
  %40 = load i32, i32* @ERR_FATAL, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %84

41:                                               ; preds = %28
  %42 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %43 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %76, %41
  %46 = load i64, i64* %10, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %52, %48
  store i64 0, i64* @errno, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @fread(i8* %16, i64 %55, i32 1, i32* %56)
  %58 = load i64, i64* @errno, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %62 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @ERRS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %63)
  %65 = load i32, i32* @ERR_FATAL, align 4
  store i32 %65, i32* %11, align 4
  br label %80

66:                                               ; preds = %54
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %70 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @write_out_data(i32* %67, i8* %16, i64 %68, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %80

76:                                               ; preds = %66
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %10, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %10, align 8
  br label %45

80:                                               ; preds = %75, %60, %45
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @fclose(i32* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %84

84:                                               ; preds = %80, %35, %27, %21
  %85 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32*, i8*) #2

declare dso_local i32 @ERRS(i8*, i32*) #2

declare dso_local i32 @fread(i8*, i64, i32, i32*) #2

declare dso_local i32 @write_out_data(i32*, i8*, i64, i32) #2

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
