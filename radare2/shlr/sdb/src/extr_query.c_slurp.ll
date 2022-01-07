; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_query.c_slurp.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_query.c_slurp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @slurp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slurp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %1
  store i8* null, i8** %2, align 8
  br label %63

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i8* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %63

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SEEK_END, align 4
  %25 = call i64 @lseek(i32 %23, i32 0, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @close(i32 %29)
  store i8* null, i8** %2, align 8
  br label %63

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i64 @lseek(i32 %32, i32 0, i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i8* @malloc(i64 %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @close(i32 %41)
  store i8* null, i8** %2, align 8
  br label %63

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @read(i32 %44, i8* %45, i64 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @free(i8* %53)
  store i8* null, i8** %6, align 8
  br label %59

55:                                               ; preds = %43
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i8*, i8** %6, align 8
  store i8* %62, i8** %2, align 8
  br label %63

63:                                               ; preds = %59, %40, %28, %21, %14
  %64 = load i8*, i8** %2, align 8
  ret i8* %64
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
