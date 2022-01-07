; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrd.c_rrd_memory_mode_id.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrd.c_rrd_memory_mode_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RRD_MEMORY_MODE_RAM_NAME = common dso_local global i32 0, align 4
@RRD_MEMORY_MODE_RAM = common dso_local global i32 0, align 4
@RRD_MEMORY_MODE_MAP_NAME = common dso_local global i32 0, align 4
@RRD_MEMORY_MODE_MAP = common dso_local global i32 0, align 4
@RRD_MEMORY_MODE_NONE_NAME = common dso_local global i32 0, align 4
@RRD_MEMORY_MODE_NONE = common dso_local global i32 0, align 4
@RRD_MEMORY_MODE_ALLOC_NAME = common dso_local global i32 0, align 4
@RRD_MEMORY_MODE_ALLOC = common dso_local global i32 0, align 4
@RRD_MEMORY_MODE_DBENGINE_NAME = common dso_local global i32 0, align 4
@RRD_MEMORY_MODE_DBENGINE = common dso_local global i32 0, align 4
@RRD_MEMORY_MODE_SAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrd_memory_mode_id(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i32, i32* @RRD_MEMORY_MODE_RAM_NAME, align 4
  %6 = call i32 @strcmp(i8* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @RRD_MEMORY_MODE_RAM, align 4
  store i32 %13, i32* %2, align 4
  br label %64

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @RRD_MEMORY_MODE_MAP_NAME, align 4
  %17 = call i32 @strcmp(i8* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @RRD_MEMORY_MODE_MAP, align 4
  store i32 %24, i32* %2, align 4
  br label %64

25:                                               ; preds = %14
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @RRD_MEMORY_MODE_NONE_NAME, align 4
  %28 = call i32 @strcmp(i8* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @RRD_MEMORY_MODE_NONE, align 4
  store i32 %35, i32* %2, align 4
  br label %64

36:                                               ; preds = %25
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @RRD_MEMORY_MODE_ALLOC_NAME, align 4
  %39 = call i32 @strcmp(i8* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @RRD_MEMORY_MODE_ALLOC, align 4
  store i32 %46, i32* %2, align 4
  br label %64

47:                                               ; preds = %36
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* @RRD_MEMORY_MODE_DBENGINE_NAME, align 4
  %50 = call i32 @strcmp(i8* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @RRD_MEMORY_MODE_DBENGINE, align 4
  store i32 %57, i32* %2, align 4
  br label %64

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* @RRD_MEMORY_MODE_SAVE, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %56, %45, %34, %23, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
