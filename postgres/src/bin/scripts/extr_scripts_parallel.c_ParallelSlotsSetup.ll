; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_scripts_parallel.c_ParallelSlotsSetup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_scripts_parallel.c_ParallelSlotsSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FD_SETSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"too many jobs for this platform -- try %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ParallelSlotsSetup(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %21 = load i32*, i32** %17, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load i32, i32* %18, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i64 @pg_malloc(i32 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %19, align 8
  %31 = load i32*, i32** %19, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = call i32 @init_slot(i32* %31, i32* %32)
  %34 = load i32, i32* %18, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %69

36:                                               ; preds = %9
  store i32 1, i32* %20, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call i32* @connectDatabase(i8* %42, i8* %43, i8* %44, i8* %45, i32 %46, i8* %47, i32 %48, i32 0, i32 1)
  store i32* %49, i32** %17, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = call i64 @PQsocket(i32* %50)
  %52 = load i64, i64* @FD_SETSIZE, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load i32, i32* %20, align 4
  %56 = call i32 @pg_log_fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %41
  %59 = load i32*, i32** %19, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32*, i32** %17, align 8
  %64 = call i32 @init_slot(i32* %62, i32* %63)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %20, align 4
  br label %37

68:                                               ; preds = %37
  br label %69

69:                                               ; preds = %68, %9
  %70 = load i32*, i32** %19, align 8
  ret i32* %70
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @init_slot(i32*, i32*) #1

declare dso_local i32* @connectDatabase(i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @PQsocket(i32*) #1

declare dso_local i32 @pg_log_fatal(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
