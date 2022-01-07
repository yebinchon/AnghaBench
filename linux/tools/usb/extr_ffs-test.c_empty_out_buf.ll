; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/extr_ffs-test.c_empty_out_buf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/extr_ffs-test.c_empty_out_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@pattern = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"bad OUT byte %zd, expected %02x got %02x\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%4zd:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i64)* @empty_out_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empty_out_buf(%struct.thread* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = load i32, i32* @pattern, align 4
  switch i32 %13, label %108 [
    i32 128, label %14
    i32 129, label %33
    i32 130, label %56
  ]

14:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %8, align 8
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %27, %14
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %67

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26
  %28 = load i64*, i64** %8, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %8, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %11, align 8
  br label %17

32:                                               ; preds = %17
  br label %108

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to i64*
  store i64* %35, i64** %8, align 8
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %50, %33
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = urem i64 %43, 63
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* %11, align 8
  %48 = urem i64 %47, 63
  store i64 %48, i64* %9, align 8
  br label %67

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i64*, i64** %8, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %8, align 8
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %11, align 8
  br label %36

55:                                               ; preds = %36
  br label %108

56:                                               ; preds = %3
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* @stdout, align 4
  %60 = call i32 @fwrite(i8* %57, i64 %58, i32 1, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @stdout, align 4
  %65 = call i32 @fflush(i32 %64)
  br label %66

66:                                               ; preds = %63, %56
  br label %108

67:                                               ; preds = %46, %25
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %69, i64 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = bitcast i8* %73 to i64*
  store i64* %74, i64** %8, align 8
  store i64 0, i64* %11, align 8
  br label %75

75:                                               ; preds = %99, %67
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i64, i64* %11, align 8
  %81 = urem i64 %80, 32
  %82 = icmp eq i64 0, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @stderr, align 4
  %85 = load i64, i64* %11, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @stderr, align 4
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %90)
  %92 = load i64, i64* %11, align 8
  %93 = urem i64 %92, 32
  %94 = icmp eq i64 31, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %87
  br label %99

99:                                               ; preds = %98
  %100 = load i64*, i64** %8, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %8, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %11, align 8
  br label %75

104:                                              ; preds = %75
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 @fflush(i32 %105)
  %107 = load i32, i32* @EILSEQ, align 4
  store i32 %107, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %111

108:                                              ; preds = %3, %66, %55, %32
  %109 = load i64, i64* %11, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %104
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @fwrite(i8*, i64, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @err(i8*, i64, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
