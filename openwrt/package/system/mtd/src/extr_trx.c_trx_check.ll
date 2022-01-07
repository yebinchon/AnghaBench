; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_trx.c_trx_check.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_trx.c_trx_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trx_header = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Could not get image header, file too small (%d bytes)\0A\00", align 1
@TRX_MAGIC = common dso_local global i64 0, align 8
@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Bad trx header\0A\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"This is not the correct file format; refusing to flash.\0APlease specify the correct file or use -f to force.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not open mtd device: %s\0A\00", align 1
@mtdsize = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Image too big for partition: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trx_check(i32 %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.trx_header*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.trx_header*
  store %struct.trx_header* %13, %struct.trx_header** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %93

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 32, %30
  %32 = call i64 @read(i32 %23, i8* %28, i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %32
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 32
  br i1 %40, label %41, label %46

41:                                               ; preds = %22
  %42 = load i32, i32* @stdout, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 0, i32* %5, align 4
  br label %93

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46, %18
  %48 = load %struct.trx_header*, %struct.trx_header** %10, align 8
  %49 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TRX_MAGIC, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.trx_header*, %struct.trx_header** %10, align 8
  %55 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 16
  br i1 %58, label %59, label %68

59:                                               ; preds = %53, %47
  %60 = load i32, i32* @quiet, align 4
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %59
  store i32 0, i32* %5, align 4
  br label %93

68:                                               ; preds = %53
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @mtd_check_open(i8* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @stderr, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = call i32 @exit(i32 1) #3
  unreachable

78:                                               ; preds = %68
  %79 = load i32, i32* @mtdsize, align 4
  %80 = load %struct.trx_header*, %struct.trx_header** %10, align 8
  %81 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* @stderr, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %86)
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @close(i32 %88)
  store i32 0, i32* %5, align 4
  br label %93

90:                                               ; preds = %78
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @close(i32 %91)
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %84, %67, %41, %17
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @mtd_check_open(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
