; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_decompressSrcFile.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_decompressSrcFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@ENDOFSTREAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Remove error : %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%-20.20s : decoded %llu bytes \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*, i8*)* @LZ4IO_decompressSrcFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4IO_decompressSrcFile(%struct.TYPE_8__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32* %1, i32** %14, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32* @LZ4IO_openSrcFile(i8* %17)
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %61

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @selectDecoder(%struct.TYPE_8__* %24, i32* %28, i32* %25, i32* %26)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @ENDOFSTREAM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %11, align 8
  br label %23

38:                                               ; preds = %33
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @fclose(i32* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @remove(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @EXM_THROW(i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %50, i32 %52)
  br label %54

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %54, %38
  %56 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %57, i64 %58)
  %60 = load i8*, i8** %9, align 8
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %21
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32* @LZ4IO_openSrcFile(i8*) #1

declare dso_local i64 @selectDecoder(%struct.TYPE_8__*, i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @remove(i8*) #1

declare dso_local i32 @EXM_THROW(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
