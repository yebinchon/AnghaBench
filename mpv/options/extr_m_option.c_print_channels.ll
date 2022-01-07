; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_channels.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_channels = type { i64, i32*, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"auto-safe\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @print_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_channels(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.m_channels*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.m_channels*
  store %struct.m_channels* %10, %struct.m_channels** %6, align 8
  %11 = load %struct.m_channels*, %struct.m_channels** %6, align 8
  %12 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %3, align 8
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.m_channels*, %struct.m_channels** %6, align 8
  %19 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %3, align 8
  br label %61

24:                                               ; preds = %17
  %25 = load %struct.m_channels*, %struct.m_channels** %6, align 8
  %26 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %24
  %30 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %54, %29
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.m_channels*, %struct.m_channels** %6, align 8
  %35 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @talloc_strdup_append(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %43, i8** %7, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.m_channels*, %struct.m_channels** %6, align 8
  %47 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i8* @mp_chmap_to_str(i32* %51)
  %53 = call i8* @talloc_strdup_append(i8* %45, i8* %52)
  store i8* %53, i8** %7, align 8
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %31

57:                                               ; preds = %31
  %58 = load i8*, i8** %7, align 8
  store i8* %58, i8** %3, align 8
  br label %61

59:                                               ; preds = %24
  %60 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %60, i8** %3, align 8
  br label %61

61:                                               ; preds = %59, %57, %22, %15
  %62 = load i8*, i8** %3, align 8
  ret i8* %62
}

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i8* @talloc_strdup_append(i8*, i8*) #1

declare dso_local i8* @mp_chmap_to_str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
