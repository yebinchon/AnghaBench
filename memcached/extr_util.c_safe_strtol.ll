; ModuleID = '/home/carl/AnghaBench/memcached/extr_util.c_safe_strtol.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_util.c_safe_strtol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @safe_strtol(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = icmp ne i64* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  store i64 0, i64* @errno, align 8
  %12 = load i64*, i64** %5, align 8
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strtol(i8* %13, i8** %6, i32 10)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ERANGE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %41

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @xisspace(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %23
  %38 = load i64, i64* %7, align 8
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  store i32 1, i32* %3, align 4
  br label %41

40:                                               ; preds = %33, %28
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @xisspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
