; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-uptime-002.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-uptime-002.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64* null, i64** %3, align 8
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %19, %0
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = add i64 %12, 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  %15 = load i64*, i64** %3, align 8
  %16 = call i32 @free(i64* %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i64* @malloc(i32 %17)
  store i64* %18, i64** %3, align 8
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %2, align 4
  %21 = load i64*, i64** %3, align 8
  %22 = call i32 @sys_sched_getaffinity(i32 0, i32 %20, i64* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %10, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @proc_uptime(i32 %33, i64* %5, i64* %7)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %72, %26
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %2, align 4
  %38 = mul i32 %37, 8
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %35
  %41 = load i64*, i64** %3, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @memset(i64* %41, i32 0, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = urem i64 %45, 64
  %47 = shl i64 1, %46
  %48 = load i64*, i64** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = udiv i64 %50, 64
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = or i64 %53, %47
  store i64 %54, i64* %52, align 8
  %55 = load i32, i32* %2, align 4
  %56 = load i64*, i64** %3, align 8
  %57 = call i32 @sys_sched_setaffinity(i32 0, i32 %55, i64* %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @proc_uptime(i32 %58, i64* %6, i64* %8)
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp sge i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp sge i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %40
  %73 = load i32, i32* %4, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %35

75:                                               ; preds = %35
  ret i32 0
}

declare dso_local i32 @free(i64*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @sys_sched_getaffinity(i32, i32, i64*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @proc_uptime(i32, i64*, i64*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @sys_sched_setaffinity(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
