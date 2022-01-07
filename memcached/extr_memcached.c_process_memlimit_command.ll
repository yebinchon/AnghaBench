; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_memlimit_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_memlimit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"MEMLIMIT_TOO_SMALL cannot set maxbytes to less than 8m\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"MEMLIMIT_ADJUST_FAILED input value is megabytes not bytes\00", align 1
@settings = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"maxbytes adjusted to %llum\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"MEMLIMIT_ADJUST_FAILED out of bounds or unable to adjust\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i64)* @process_memlimit_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_memlimit_command(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @set_noreply_maybe(i32* %12, %struct.TYPE_5__* %13, i64 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @safe_strtoul(i32 %19, i32* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @out_string(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %61

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @out_string(i32* %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %60

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 1000000000
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @out_string(i32* %35, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %59

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 1024
  %41 = mul i64 %40, 1024
  %42 = call i64 @slabs_adjust_mem_limit(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @settings, i32 0, i32 0), align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @out_string(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %58

55:                                               ; preds = %37
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @out_string(i32* %56, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59, %28
  br label %61

61:                                               ; preds = %60, %22
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_noreply_maybe(i32*, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @safe_strtoul(i32, i32*) #1

declare dso_local i32 @out_string(i32*, i8*) #1

declare dso_local i64 @slabs_adjust_mem_limit(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
