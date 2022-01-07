; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/bin/extr_json_process.c_cmpfile.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/bin/extr_json_process.c_cmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@dir_sep = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c".strip\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".normal\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Error: test result file could not be opened.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @cmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpfile(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** @dir_sep, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13, i8* %14)
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %25 = call i32 @strcat(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %29

26:                                               ; preds = %20
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %28 = call i32 @strcat(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %31 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %10, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %32
  %39 = load i32*, i32** %10, align 8
  %40 = call i8* @loadfile(i32* %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @strcmp(i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %47

46:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @loadfile(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
