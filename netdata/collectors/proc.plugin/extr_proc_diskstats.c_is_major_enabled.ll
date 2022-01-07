; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_diskstats.c_is_major_enabled.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_diskstats.c_is_major_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_major_enabled.major_configs = internal global i32* null, align 8
@is_major_enabled.major_size = internal global i64 0, align 8
@CONFIG_MAX_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"performance metrics for disks with major %d\00", align 1
@CONFIG_SECTION_PLUGIN_PROC_DISKSTATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_major_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_major_enabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 1
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* @is_major_enabled.major_size, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = load i32*, i32** @is_major_enabled.major_configs, align 8
  %20 = load i64, i64* %4, align 8
  %21 = mul i64 %20, 4
  %22 = call i32* @reallocz(i32* %19, i64 %21)
  store i32* %22, i32** @is_major_enabled.major_configs, align 8
  %23 = load i64, i64* @is_major_enabled.major_size, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %32, %18
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** @is_major_enabled.major_configs, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 -1, i32* %31, align 4
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %24

35:                                               ; preds = %24
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* @is_major_enabled.major_size, align 8
  br label %37

37:                                               ; preds = %35, %11
  %38 = load i32*, i32** @is_major_enabled.major_configs, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %62

44:                                               ; preds = %37
  %45 = load i32, i32* @CONFIG_MAX_NAME, align 4
  %46 = add nsw i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %6, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %7, align 8
  %50 = load i32, i32* @CONFIG_MAX_NAME, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @snprintfz(i8* %49, i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_DISKSTATS, align 4
  %54 = call i64 @config_get_boolean(i32 %53, i8* %49, i32 1)
  %55 = trunc i64 %54 to i8
  %56 = sext i8 %55 to i32
  %57 = load i32*, i32** @is_major_enabled.major_configs, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %44, %37
  %63 = load i32*, i32** @is_major_enabled.major_configs, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32* @reallocz(i32*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #1

declare dso_local i64 @config_get_boolean(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
