; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_readMessageFromPipe.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_readMessageFromPipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @readMessageFromPipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readMessageFromPipe(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 64, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @pg_malloc(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %53, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = call i32 @piperead(i32 %17, i8* %21, i32 1)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  br label %54

26:                                               ; preds = %11
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** %2, align 8
  br label %57

40:                                               ; preds = %26
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 16
  store i32 %48, i32* %6, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @pg_realloc(i8* %49, i32 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %46, %40
  br label %11

54:                                               ; preds = %25
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @pg_free(i8* %55)
  store i8* null, i8** %2, align 8
  br label %57

57:                                               ; preds = %54, %38
  %58 = load i8*, i8** %2, align 8
  ret i8* %58
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @piperead(i32, i8*, i32) #1

declare dso_local i64 @pg_realloc(i8*, i32) #1

declare dso_local i32 @pg_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
