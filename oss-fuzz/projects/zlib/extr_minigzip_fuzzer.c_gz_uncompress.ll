; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_minigzip_fuzzer.c_gz_uncompress.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_minigzip_fuzzer.c_gz_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFLENW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"failed fwrite\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"failed fclose\00", align 1
@Z_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"failed gzclose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gz_uncompress(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @BUFLENW, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  br label %13

13:                                               ; preds = %36, %2
  %14 = load i32, i32* %3, align 4
  %15 = trunc i64 %10 to i32
  %16 = call i32 @gzread(i32 %14, i8* %12, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = call i8* @gzerror(i32 %20, i32* %8)
  %22 = call i32 @error(i8* %21)
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %37

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @fwrite(i8* %12, i32 1, i32 %28, i32* %29)
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %27
  br label %13

37:                                               ; preds = %26
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @fclose(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @gzclose(i32 %44)
  %46 = load i64, i64* @Z_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gzread(i32, i8*, i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i8* @gzerror(i32, i32*) #2

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i64 @fclose(i32*) #2

declare dso_local i64 @gzclose(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
