; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_python3.c_LineToString.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_python3.c_LineToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENC_OPT = common dso_local global i64 0, align 8
@CODEC_ERROR_HANDLER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @LineToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LineToString(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = call i64 @alloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 (...) @PyErr_NoMemory()
  store i32* null, i32** %2, align 8
  br label %52

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  store i8 0, i8* %31, align 1
  br label %36

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %7, align 8
  store i8 %34, i8* %35, align 1
  br label %36

36:                                               ; preds = %32, %30
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  br label %21

41:                                               ; preds = %21
  %42 = load i8*, i8** %7, align 8
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @ENC_OPT, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32, i32* @CODEC_ERROR_HANDLER, align 4
  %48 = call i32* @PyUnicode_Decode(i8* %43, i64 %44, i8* %46, i32 %47)
  store i32* %48, i32** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @vim_free(i8* %49)
  %51 = load i32*, i32** %4, align 8
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %41, %18
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @alloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32* @PyUnicode_Decode(i8*, i64, i8*, i32) #1

declare dso_local i32 @vim_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
