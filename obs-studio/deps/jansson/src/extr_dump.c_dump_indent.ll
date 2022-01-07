; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_dump.c_dump_indent.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_dump.c_dump_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@whitespace = common dso_local global i8* null, align 8
@JSON_COMPACT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32 (i8*, i32, i8*)*, i8*)* @dump_indent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_indent(i64 %0, i32 %1, i32 %2, i32 (i8*, i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (i8*, i32, i8*)* %3, i32 (i8*, i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @FLAGS_TO_INDENT(i64 %15)
  %17 = icmp ugt i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %5
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @FLAGS_TO_INDENT(i64 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %12, align 4
  %23 = mul i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 %24(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %70

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %13, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %35, 7
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %13, align 4
  %39 = zext i32 %38 to i64
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i64 [ %39, %37 ], [ 7, %40 ]
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %10, align 8
  %45 = load i8*, i8** @whitespace, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 %44(i8* %45, i32 %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 -1, i32* %6, align 4
  br label %70

51:                                               ; preds = %41
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %13, align 4
  br label %30

55:                                               ; preds = %30
  br label %69

56:                                               ; preds = %5
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @JSON_COMPACT, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 %65(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* %66)
  store i32 %67, i32* %6, align 4
  br label %70

68:                                               ; preds = %59, %56
  br label %69

69:                                               ; preds = %68, %55
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %64, %50, %28
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @FLAGS_TO_INDENT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
