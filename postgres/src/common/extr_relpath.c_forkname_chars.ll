; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_relpath.c_forkname_chars.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_relpath.c_forkname_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_FORKNUM = common dso_local global i64 0, align 8
@forkNames = common dso_local global i32* null, align 8
@InvalidForkNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @forkname_chars(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 1, i64* %6, align 8
  br label %8

8:                                                ; preds = %35, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @MAX_FORKNUM, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load i32*, i32** @forkNames, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strlen(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** @forkNames, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @strncmp(i32 %21, i8* %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %12
  %27 = load i64*, i64** %5, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = load i64*, i64** %5, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %8

38:                                               ; preds = %8
  %39 = load i64*, i64** %5, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* @InvalidForkNumber, align 8
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
