; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock-random-test.c_get_proc_page_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock-random-test.c_get_proc_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Unable to parse /proc/self/smaps\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"MMUPageSize\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"MMUPageSize:    %8lu kB\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to parse smaps entry for Size:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_proc_page_size(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32* @seek_to_smaps_entry(i64 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %33, %23, %14
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @getline(i8** %5, i64* %7, i32* %16)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strstr(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @free(i8* %24)
  store i8* null, i8** %5, align 8
  store i64 0, i64* %7, align 8
  br label %15

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64* %6)
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  br label %34

33:                                               ; preds = %26
  br label %15

34:                                               ; preds = %30, %15
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fclose(i32* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i64, i64* %6, align 8
  %44 = shl i64 %43, 10
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32* @seek_to_smaps_entry(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
