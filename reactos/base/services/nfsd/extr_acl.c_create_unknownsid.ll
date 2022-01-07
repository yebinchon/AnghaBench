; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_create_unknownsid.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_create_unknownsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACLLVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"create_unknownsid: CreateWellKnownSid type %d returned %d GetLastError %d sid len %d needed\0A\00", align 1
@ERROR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"create_unknownsid: CreateWellKnownSid failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i64*)* @create_unknownsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_unknownsid(i32 %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32**, i32*** %6, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32**, i32*** %6, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = call i32 @CreateWellKnownSid(i32 %11, i32* null, i32* %13, i64* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @ACLLVL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (...) @GetLastError()
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dprintf(i32 %16, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19, i64 %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ERROR_INTERNAL_ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %3
  %28 = call i32 (...) @GetLastError()
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %62

34:                                               ; preds = %27
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32* @malloc(i64 %36)
  %38 = load i32**, i32*** %6, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32**, i32*** %6, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %43, i32* %4, align 4
  br label %62

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = load i32**, i32*** %6, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = call i32 @CreateWellKnownSid(i32 %45, i32* null, i32* %47, i64* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %53, i32* %4, align 4
  br label %62

54:                                               ; preds = %44
  %55 = load i32**, i32*** %6, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @free(i32* %56)
  %58 = call i32 (...) @GetLastError()
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @eprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %52, %42, %32, %25
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @CreateWellKnownSid(i32, i32*, i32*, i64*) #1

declare dso_local i32 @dprintf(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @eprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
