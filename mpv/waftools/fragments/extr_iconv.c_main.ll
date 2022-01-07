; ModuleID = '/home/carl/AnghaBench/mpv/waftools/fragments/extr_iconv.c_main.c'
source_filename = "/home/carl/AnghaBench/mpv/waftools/fragments/extr_iconv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cp1250\00", align 1
@inbuffer = common dso_local global i8* null, align 8
@INBUFSIZE = common dso_local global i32 0, align 4
@outbuffer = common dso_local global i8* null, align 8
@OUTBUFSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @iconv_open(i8* %10, i8* %11)
  store i32 %12, i32* %3, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %41

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i8*, i8** @inbuffer, align 8
  %17 = load i32, i32* @INBUFSIZE, align 4
  %18 = call i64 @read(i32 0, i8* %16, i32 %17)
  store i64 %18, i64* %2, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i8*, i8** @inbuffer, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** @outbuffer, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i64, i64* %2, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* @OUTBUFSIZE, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @iconv(i32 %25, i8** %6, i64* %8, i8** %7, i64* %9)
  %27 = icmp ne i64 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i8*, i8** @outbuffer, align 8
  %30 = load i64, i64* @OUTBUFSIZE, align 8
  %31 = load i64, i64* %9, align 8
  %32 = sub i64 %30, %31
  %33 = call i32 @write(i32 1, i8* %29, i64 %32)
  br label %34

34:                                               ; preds = %28, %20
  br label %15

35:                                               ; preds = %15
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @iconv_close(i32 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %35
  br label %41

41:                                               ; preds = %40, %0
  ret i32 0
}

declare dso_local i32 @iconv_open(i8*, i8*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @iconv(i32, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @iconv_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
