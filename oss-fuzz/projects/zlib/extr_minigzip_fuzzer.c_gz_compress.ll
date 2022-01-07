; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_minigzip_fuzzer.c_gz_compress.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/zlib/extr_minigzip_fuzzer.c_gz_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fread\00", align 1
@Z_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"failed gzclose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gz_compress(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @BUFLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = trunc i64 %10 to i32
  %14 = call i32 @memset(i8* %12, i32 0, i32 %13)
  br label %15

15:                                               ; preds = %40, %2
  %16 = trunc i64 %10 to i32
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @fread(i8* %12, i32 1, i32 %16, i32* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @ferror(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #4
  unreachable

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %41

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @gzwrite(i32 %31, i8* %12, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = call i8* @gzerror(i32 %37, i32* %8)
  %39 = call i32 @error(i8* %38)
  br label %40

40:                                               ; preds = %36, %30
  br label %15

41:                                               ; preds = %29
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @gzclose(i32 %44)
  %46 = load i64, i64* @Z_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  %51 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @gzwrite(i32, i8*, i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i8* @gzerror(i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @gzclose(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
