; ModuleID = '/home/carl/AnghaBench/no-more-secrets/src/extr_input.c_input_get.c'
source_filename = "/home/carl/AnghaBench/no-more-secrets/src/extr_input.c_input_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Error while waiting for input data. Errno: %i\00", align 1
@errno = common dso_local global i32 0, align 4
@FIONREAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Could not determine length of input. Errno: %i\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Memory allocation error.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Input read error. Errno: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_get(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = call i32 @FD_ZERO(i32* %8)
  store i32 0, i32* %7, align 4
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 10, i32* %12, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @STDIN_FILENO, align 4
  %15 = call i64 @isatty(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  store i8* null, i8** %10, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @fflush(i32 %23)
  br label %25

25:                                               ; preds = %20, %17
  br label %28

26:                                               ; preds = %2
  %27 = bitcast %struct.timeval* %9 to i8*
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32, i32* @STDIN_FILENO, align 4
  %30 = call i32 @FD_SET(i32 %29, i32* %8)
  %31 = load i32, i32* @FD_SETSIZE, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @select(i32 %31, i32* %8, i32* null, i32* null, i8* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 (i8*, ...) @error_log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %3, align 4
  br label %80

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  %43 = load i32, i32* @STDIN_FILENO, align 4
  %44 = load i32, i32* @FIONREAD, align 4
  %45 = call i32 @ioctl(i32 %43, i32 %44, i32* %7)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 (i8*, ...) @error_log(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %3, align 4
  br label %80

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @malloc(i32 %55)
  %57 = load i8**, i8*** %4, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i8**, i8*** %4, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 (i8*, ...) @error_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %80

63:                                               ; preds = %54
  %64 = load i32, i32* @STDIN_FILENO, align 4
  %65 = load i8**, i8*** %4, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @read(i32 %64, i8* %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 (i8*, ...) @error_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %3, align 4
  br label %80

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %39
  %77 = load i32, i32* @STDIN_FILENO, align 4
  %78 = call i32 @FD_CLR(i32 %77, i32* %8)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %71, %61, %48, %36
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @error_log(i8*, ...) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @FD_CLR(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
