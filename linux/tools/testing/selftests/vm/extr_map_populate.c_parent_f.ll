; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_map_populate.c_parent_f.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_map_populate.c_parent_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"read(sock)\00", align 1
@MMAP_SZ = common dso_local global i32 0, align 4
@MS_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"msync()\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"write(sock)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"child in unexpected state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32)* @parent_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parent_f(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @read(i32 %9, i32* %7, i32 4)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sle i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load i64*, i64** %5, align 8
  store i64 572664749, i64* %15, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = load i32, i32* @MMAP_SZ, align 4
  %18 = load i32, i32* @MS_SYNC, align 4
  %19 = call i32 @msync(i64* %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @BUG_ON(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @write(i32 %22, i32* %7, i32 4)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @waitpid(i32 %28, i32* %7, i32 0)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @WIFEXITED(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @WEXITSTATUS(i32 %36)
  ret i32 %37
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32, i8*) #1

declare dso_local i32 @msync(i64*, i32, i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
