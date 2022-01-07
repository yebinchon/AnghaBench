; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_map_hugetlb.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_map_hugetlb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LENGTH = common dso_local global i64 0, align 8
@FLAGS = common dso_local global i32 0, align 4
@MAP_HUGE_MASK = common dso_local global i32 0, align 4
@MAP_HUGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%u kB hugepages\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Default size hugepages\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Mapping %lu Mbytes\0A\00", align 1
@ADDR = common dso_local global i32 0, align 4
@PROTECTION = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Returned address is %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"munmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i64, i64* @LENGTH, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* @FLAGS, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @atol(i8* %18)
  %20 = shl i32 %19, 20
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %15, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @MAP_HUGE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @MAP_HUGE_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %32, %25
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 1, %45
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %50

48:                                               ; preds = %41
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i64, i64* %8, align 8
  %52 = lshr i64 %51, 20
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @ADDR, align 4
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* @PROTECTION, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i8* @mmap(i32 %54, i64 %55, i32 %56, i32 %57, i32 -1, i32 0)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** @MAP_FAILED, align 8
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %50
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @check_bytes(i8* %68)
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @write_bytes(i8* %70)
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @read_bytes(i8* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* @LENGTH, align 8
  %76 = call i64 @munmap(i8* %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %80 = call i32 @exit(i32 1) #3
  unreachable

81:                                               ; preds = %65
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @atol(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @mmap(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @check_bytes(i8*) #1

declare dso_local i32 @write_bytes(i8*) #1

declare dso_local i32 @read_bytes(i8*) #1

declare dso_local i64 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
