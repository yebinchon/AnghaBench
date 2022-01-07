; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-self-map-files-001.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-self-map-files-001.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/zero\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@PROT_NONE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"/proc/self/map_files/%lx-%lx\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/ %lx-%lx\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/%lx -%lx\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/%lx- %lx\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/%lx-%lx \00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/0%lx-%lx\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/%lx-0%lx\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"/proc/self/map_files/10000000000000000%lx-%lx\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"/proc/self/map_files/%lx-10000000000000000%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @_SC_PAGESIZE, align 4
  %8 = call i32 @sysconf(i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %61

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @PROT_NONE, align 4
  %17 = load i32, i32* @MAP_PRIVATE, align 4
  %18 = load i32, i32* @MAP_FILE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @mmap(i32* null, i32 %15, i32 %16, i32 %19, i32 %20, i32 0)
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** @MAP_FAILED, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %61

26:                                               ; preds = %14
  %27 = load i8*, i8** %3, align 8
  %28 = ptrtoint i8* %27 to i64
  store i64 %28, i64* %5, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load i32, i32* %2, align 4
  %32 = zext i32 %31 to i64
  %33 = add i64 %30, %32
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @pass(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %46, i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %49, i64 %50)
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %52, i64 %53)
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 %58, i64 %59)
  store i32 0, i32* %1, align 4
  br label %61

61:                                               ; preds = %26, %25, %13
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pass(i8*, i64, i64) #1

declare dso_local i32 @fail(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
