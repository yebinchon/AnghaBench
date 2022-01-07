; ModuleID = '/home/carl/AnghaBench/mozjpeg/md5/extr_md5hl.c_MD5FileChunk.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/md5/extr_md5hl.c_MD5FileChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MD5FileChunk(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i32, i32* @BUFSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = call i32 @MD5Init(i32* %12)
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = call i32 @open(i8* %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %18, align 4
  br label %102

30:                                               ; preds = %4
  %31 = load i32, i32* %14, align 4
  %32 = call i64 @fstat(i32 %31, %struct.stat* %13)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8* null, i8** %5, align 8
  store i32 1, i32* %18, align 4
  br label %102

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub nsw i64 %49, %50
  %52 = icmp sgt i64 %47, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46, %43
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %53, %46
  %59 = load i32, i32* %14, align 4
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* @SEEK_SET, align 4
  %62 = call i64 @lseek(i32 %59, i64 %60, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i8* null, i8** %5, align 8
  store i32 1, i32* %18, align 4
  br label %102

65:                                               ; preds = %58
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %17, align 8
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %84, %65
  %68 = load i64, i64* %17, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = load i64, i64* %17, align 8
  %72 = icmp ugt i64 %71, %20
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @read(i32 %74, i8* %22, i64 %20)
  store i32 %75, i32* %15, align 4
  br label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %14, align 4
  %78 = load i64, i64* %17, align 8
  %79 = call i32 @read(i32 %77, i8* %22, i64 %78)
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %91

84:                                               ; preds = %80
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @MD5Update(i32* %12, i8* %22, i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %17, align 8
  %90 = sub nsw i64 %89, %88
  store i64 %90, i64* %17, align 8
  br label %67

91:                                               ; preds = %83, %67
  %92 = load i32, i32* @errno, align 4
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @close(i32 %93)
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* @errno, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i8* null, i8** %5, align 8
  store i32 1, i32* %18, align 4
  br label %102

99:                                               ; preds = %91
  %100 = load i8*, i8** %7, align 8
  %101 = call i8* @MD5End(i32* %12, i8* %100)
  store i8* %101, i8** %5, align 8
  store i32 1, i32* %18, align 4
  br label %102

102:                                              ; preds = %99, %98, %64, %34, %29
  %103 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i8*, i8** %5, align 8
  ret i8* %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MD5Init(i32*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i64 @lseek(i32, i64, i32) #2

declare dso_local i32 @read(i32, i8*, i64) #2

declare dso_local i32 @MD5Update(i32*, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i8* @MD5End(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
