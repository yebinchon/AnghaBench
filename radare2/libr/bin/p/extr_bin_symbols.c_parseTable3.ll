; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_parseTable3.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_parseTable3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dwordsBeginAt = common dso_local global i32 0, align 4
@stringsBeginAt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"..skip..\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @parseTable3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseTable3(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @dwordsBeginAt, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @stringsBeginAt, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32* @calloc(i32 %18, i32 1)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %70

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @r_buf_read_at(i32* %24, i32 %25, i32* %26, i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %64, %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @eprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %64

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @r_read_le32(i32* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %40
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63, %38
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 8
  store i32 %66, i32* %7, align 4
  br label %29

67:                                               ; preds = %29
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @free(i32* %68)
  br label %70

70:                                               ; preds = %67, %22
  ret void
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_read_le32(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
