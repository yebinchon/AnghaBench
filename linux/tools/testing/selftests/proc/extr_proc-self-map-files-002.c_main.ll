; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-self-map-files-002.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-self-map-files-002.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/zero\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@PROT_NONE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error: mmap doesn't like you\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"/proc/self/map_files/%lx-%lx\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/ %lx-%lx\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/%lx -%lx\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/%lx- %lx\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/%lx-%lx \00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/0%lx-%lx\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"/proc/self/map_files/%lx-0%lx\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"/proc/self/map_files/10000000000000000%lx-%lx\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"/proc/self/map_files/%lx-10000000000000000%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @_SC_PAGESIZE, align 4
  %10 = call i32 @sysconf(i32 %9)
  store i32 %10, i32* %2, align 4
  store i64 4294967296, i64* %3, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %84

16:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %18, 4294967296
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @PROT_NONE, align 4
  %25 = load i32, i32* @MAP_PRIVATE, align 4
  %26 = load i32, i32* @MAP_FILE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MAP_FIXED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @mmap(i8* %22, i32 %23, i32 %24, i32 %29, i32 %30, i32 0)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = icmp eq i8* %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %43

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %4, align 8
  br label %17

43:                                               ; preds = %36, %17
  %44 = load i64, i64* %4, align 8
  %45 = icmp eq i64 %44, 4294967296
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %84

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = ptrtoint i8* %50 to i64
  store i64 %51, i64* %7, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @pass(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %58)
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %60, i64 %61)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %63, i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %66, i64 %67)
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %69, i64 %70)
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %72, i64 %73)
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %75, i64 %76)
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 %78, i64 %79)
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i64 %81, i64 %82)
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %49, %46, %15
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @pass(i8*, i64, i64) #1

declare dso_local i32 @fail(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
