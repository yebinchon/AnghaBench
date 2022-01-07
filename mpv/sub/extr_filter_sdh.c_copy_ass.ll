; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_copy_ass.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_filter_sdh.c_copy_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i8**, %struct.buffer*)* @copy_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_ass(%struct.sd* %0, i8** %1, %struct.buffer* %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.buffer* %2, %struct.buffer** %6, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 123
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.sd*, %struct.sd** %4, align 8
  %24 = load %struct.buffer*, %struct.buffer** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = call signext i8 @append(%struct.sd* %23, %struct.buffer* %24, i8 signext %27)
  store i8 %28, i8* %8, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 125
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %36

35:                                               ; preds = %22
  br label %18

36:                                               ; preds = %34, %18
  br label %11

37:                                               ; preds = %11
  %38 = load i8*, i8** %7, align 8
  %39 = load i8**, i8*** %5, align 8
  store i8* %38, i8** %39, align 8
  ret void
}

declare dso_local signext i8 @append(%struct.sd*, %struct.buffer*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
