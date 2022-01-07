; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2.h_seek_to_smaps_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2.h_seek_to_smaps_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/proc/self/smaps\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"fopen smaps\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%lx-%lx %s %lx %s %lu %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @seek_to_smaps_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @seek_to_smaps_entry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %14 = load i32, i32* @BUFSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  %18 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @_exit(i32 1) #4
  unreachable

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @getline(i8** %4, i64* %5, i32* %26)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %33 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64* %6, i64* %7, i8* %31, i64* %9, i8* %32, i64* %11, i8* %17)
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %46

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %2, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %52

45:                                               ; preds = %40, %36
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @free(i8* %47)
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %25

49:                                               ; preds = %25
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @fclose(i32* %50)
  store i32* null, i32** %3, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %56)
  ret i32* %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i64 @getline(i8**, i64*, i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i8*, i64*, i8*, i64*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fclose(i32*) #2

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
