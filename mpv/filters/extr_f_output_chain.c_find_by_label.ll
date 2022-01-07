; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_find_by_label.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_find_by_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_user_filter = type { i64 }
%struct.chain = type { i32, %struct.mp_user_filter** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_user_filter* (%struct.chain*, i8*)* @find_by_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_user_filter* @find_by_label(%struct.chain* %0, i8* %1) #0 {
  %3 = alloca %struct.mp_user_filter*, align 8
  %4 = alloca %struct.chain*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_user_filter*, align 8
  store %struct.chain* %0, %struct.chain** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.chain*, %struct.chain** %4, align 8
  %11 = getelementptr inbounds %struct.chain, %struct.chain* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = load %struct.chain*, %struct.chain** %4, align 8
  %16 = getelementptr inbounds %struct.chain, %struct.chain* %15, i32 0, i32 1
  %17 = load %struct.mp_user_filter**, %struct.mp_user_filter*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mp_user_filter*, %struct.mp_user_filter** %17, i64 %19
  %21 = load %struct.mp_user_filter*, %struct.mp_user_filter** %20, align 8
  store %struct.mp_user_filter* %21, %struct.mp_user_filter** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %14
  %25 = load %struct.mp_user_filter*, %struct.mp_user_filter** %7, align 8
  %26 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.mp_user_filter*, %struct.mp_user_filter** %7, align 8
  %32 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @strcmp(i8* %30, i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load %struct.mp_user_filter*, %struct.mp_user_filter** %7, align 8
  store %struct.mp_user_filter* %37, %struct.mp_user_filter** %3, align 8
  br label %43

38:                                               ; preds = %29, %24, %14
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %8

42:                                               ; preds = %8
  store %struct.mp_user_filter* null, %struct.mp_user_filter** %3, align 8
  br label %43

43:                                               ; preds = %42, %36
  %44 = load %struct.mp_user_filter*, %struct.mp_user_filter** %3, align 8
  ret %struct.mp_user_filter* %44
}

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
