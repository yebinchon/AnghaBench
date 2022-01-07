; ModuleID = '/home/carl/AnghaBench/postgres/src/test/examples/extr_testlo.c_importFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/examples/extr_testlo.c_importFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot open unix file\22%s\22\0A\00", align 1
@INV_READ = common dso_local global i32 0, align 4
@INV_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot create large object\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"error while reading \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @importFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @importFile(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @BUFSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i8* %16, i32 %17, i32 438)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @INV_READ, align 4
  %28 = load i32, i32* @INV_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @lo_creat(i32* %26, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i32*, i32** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @INV_WRITE, align 4
  %40 = call i32 @lo_open(i32* %37, i64 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %58, %36
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @BUFSIZE, align 4
  %44 = call i32 @read(i32 %42, i8* %15, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @lo_write(i32* %47, i32 %48, i8* %15, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %46
  br label %41

59:                                               ; preds = %41
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @lo_close(i32* %62, i32 %63)
  %65 = load i64, i64* %5, align 8
  %66 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %66)
  ret i64 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i64 @lo_creat(i32*, i32) #2

declare dso_local i32 @lo_open(i32*, i64, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @lo_write(i32*, i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @lo_close(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
