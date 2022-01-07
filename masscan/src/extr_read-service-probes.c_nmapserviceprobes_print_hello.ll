; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_print_hello.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_print_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nmapserviceprobes_print_hello.delimiters = internal global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [19 x i8] c"|/\22'#*+-!@$%^&()_=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i32)* @nmapserviceprobes_print_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmapserviceprobes_print_hello(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @contains_char(i8* %11, i64 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i8*, i8** @nmapserviceprobes_print_hello.delimiters, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i8*, i8** @nmapserviceprobes_print_hello.delimiters, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @contains_char(i8* %29, i64 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  br label %17

39:                                               ; preds = %34, %17
  br label %40

40:                                               ; preds = %39, %4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i64 0, i64* %9, align 8
  br label %44

44:                                               ; preds = %99, %40
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %102

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %10, align 1
  %53 = load i8, i8* %10, align 1
  %54 = sext i8 %53 to i32
  switch i32 %54, label %82 [
    i32 92, label %55
    i32 0, label %58
    i32 7, label %61
    i32 8, label %64
    i32 12, label %67
    i32 10, label %70
    i32 13, label %73
    i32 9, label %76
    i32 11, label %79
  ]

55:                                               ; preds = %48
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %98

58:                                               ; preds = %48
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %98

61:                                               ; preds = %48
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %98

64:                                               ; preds = %48
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %98

67:                                               ; preds = %48
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %98

70:                                               ; preds = %48
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %98

73:                                               ; preds = %48
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %98

76:                                               ; preds = %48
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %98

79:                                               ; preds = %48
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %98

82:                                               ; preds = %48
  %83 = load i8, i8* %10, align 1
  %84 = call i32 @isprint(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load i8, i8* %10, align 1
  %89 = sext i8 %88 to i32
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %97

91:                                               ; preds = %82
  %92 = load i32*, i32** %5, align 8
  %93 = load i8, i8* %10, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, 255
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %86
  br label %98

98:                                               ; preds = %97, %79, %76, %73, %70, %67, %64, %61, %58, %55
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %9, align 8
  br label %44

102:                                              ; preds = %44
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  ret void
}

declare dso_local i64 @contains_char(i8*, i64, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
