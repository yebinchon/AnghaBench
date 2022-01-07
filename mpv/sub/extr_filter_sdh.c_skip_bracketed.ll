; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_skip_bracketed.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_skip_bracketed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i8**, %struct.buffer*)* @skip_bracketed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_bracketed(%struct.sd* %0, i8** %1, %struct.buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.buffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.buffer* %2, %struct.buffer** %7, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load %struct.buffer*, %struct.buffer** %7, align 8
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %43, %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 93
  br label %28

28:                                               ; preds = %22, %17
  %29 = phi i1 [ false, %17 ], [ %27, %22 ]
  br i1 %29, label %30, label %44

30:                                               ; preds = %28
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 123
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.sd*, %struct.sd** %5, align 8
  %38 = load %struct.buffer*, %struct.buffer** %7, align 8
  %39 = call i32 @copy_ass(%struct.sd* %37, i8** %8, %struct.buffer* %38)
  br label %43

40:                                               ; preds = %30
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %40, %36
  br label %17

44:                                               ; preds = %28
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.buffer*, %struct.buffer** %7, align 8
  %51 = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %67

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %61, %52
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  br label %55

64:                                               ; preds = %55
  %65 = load i8*, i8** %8, align 8
  %66 = load i8**, i8*** %6, align 8
  store i8* %65, i8** %66, align 8
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %48
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @copy_ass(%struct.sd*, i8**, %struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
