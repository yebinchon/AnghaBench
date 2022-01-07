; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apilist.c_remove_newlines.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apilist.c_remove_newlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @remove_newlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_newlines(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 13
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %68

30:                                               ; preds = %23, %14
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 13
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @fgetc(i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %37, 10
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @ungetc(i32 %40, i32* %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ule i8* %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 13
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ true, %49 ], [ %58, %54 ]
  br label %61

61:                                               ; preds = %59, %45
  %62 = phi i1 [ false, %45 ], [ %60, %59 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %7, align 8
  store i8 0, i8* %64, align 1
  br label %45

66:                                               ; preds = %61
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %28, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
