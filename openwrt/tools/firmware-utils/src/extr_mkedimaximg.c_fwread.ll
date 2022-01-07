; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkedimaximg.c_fwread.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkedimaximg.c_fwread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.finfo = type { i8*, i32 }
%struct.buf = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not open \22%s\22 for reading\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to read from file \22%s\22\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.finfo*, %struct.buf*)* @fwread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwread(%struct.finfo* %0, %struct.buf* %1) #0 {
  %3 = alloca %struct.finfo*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i32*, align 8
  store %struct.finfo* %0, %struct.finfo** %3, align 8
  store %struct.buf* %1, %struct.buf** %4, align 8
  %6 = load %struct.finfo*, %struct.finfo** %3, align 8
  %7 = getelementptr inbounds %struct.finfo, %struct.finfo* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load %struct.finfo*, %struct.finfo** %3, align 8
  %15 = getelementptr inbounds %struct.finfo, %struct.finfo* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = call i32 @usage(i32 %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.buf*, %struct.buf** %4, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.finfo*, %struct.finfo** %3, align 8
  %25 = getelementptr inbounds %struct.finfo, %struct.finfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @fread(i32 %23, i32 1, i32 %26, i32* %27)
  %29 = load %struct.buf*, %struct.buf** %4, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.buf*, %struct.buf** %4, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.finfo*, %struct.finfo** %3, align 8
  %35 = getelementptr inbounds %struct.finfo, %struct.finfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %20
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.finfo*, %struct.finfo** %3, align 8
  %41 = getelementptr inbounds %struct.finfo, %struct.finfo* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = call i32 @usage(i32 %44)
  br label %46

46:                                               ; preds = %38, %20
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %49
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @fread(i32, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
