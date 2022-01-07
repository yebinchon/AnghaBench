; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_image_writeout_file.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_image_writeout_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_desc = type { i64, i32* }
%struct.csum_state = type { i32 }

@FILE_BUF_LEN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to open file: %s\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to read from file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @image_writeout_file(i32* %0, %struct.image_desc* %1, %struct.csum_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.image_desc*, align 8
  %7 = alloca %struct.csum_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.image_desc* %1, %struct.image_desc** %6, align 8
  store %struct.csum_state* %2, %struct.csum_state** %7, align 8
  %15 = load i32, i32* @FILE_BUF_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i64 %16, i64* %10, align 8
  %19 = load %struct.image_desc*, %struct.image_desc** %6, align 8
  %20 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %84

24:                                               ; preds = %3
  %25 = load %struct.image_desc*, %struct.image_desc** %6, align 8
  %26 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %84

30:                                               ; preds = %24
  store i64 0, i64* @errno, align 8
  %31 = load %struct.image_desc*, %struct.image_desc** %6, align 8
  %32 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @fopen(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %34, i32** %11, align 8
  %35 = load i64, i64* @errno, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.image_desc*, %struct.image_desc** %6, align 8
  %39 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ERRS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %40)
  %42 = load i32, i32* @ERR_FATAL, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %84

43:                                               ; preds = %30
  %44 = load %struct.image_desc*, %struct.image_desc** %6, align 8
  %45 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %76, %43
  %48 = load i64, i64* %12, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %47
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %54, %50
  store i64 0, i64* @errno, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @fread(i8* %18, i64 %57, i32 1, i32* %58)
  %60 = load i64, i64* @errno, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.image_desc*, %struct.image_desc** %6, align 8
  %64 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ERRS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %65)
  %67 = load i32, i32* @ERR_FATAL, align 4
  store i32 %67, i32* %13, align 4
  br label %80

68:                                               ; preds = %56
  %69 = load i32*, i32** %5, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.csum_state*, %struct.csum_state** %7, align 8
  %72 = call i32 @write_out_data(i32* %69, i8* %18, i64 %70, %struct.csum_state* %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %80

76:                                               ; preds = %68
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %12, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %12, align 8
  br label %47

80:                                               ; preds = %75, %62, %47
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @fclose(i32* %81)
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %84

84:                                               ; preds = %80, %37, %29, %23
  %85 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32*, i8*) #2

declare dso_local i32 @ERRS(i8*, i32*) #2

declare dso_local i32 @fread(i8*, i64, i32, i32*) #2

declare dso_local i32 @write_out_data(i32*, i8*, i64, %struct.csum_state*) #2

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
