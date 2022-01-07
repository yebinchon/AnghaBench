; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_map_populate.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_map_populate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"tmpfile()\00", align 1
@MMAP_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ftruncate()\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"mmap()\00", align 1
@MS_SYNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"msync()\00", align 1
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"socketpair()\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"fork()\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"close()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32* (...) @tmpfile()
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @fileno(i32* %16)
  %18 = load i32, i32* @MMAP_SZ, align 4
  %19 = call i32 @ftruncate(i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @BUG_ON(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @MMAP_SZ, align 4
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = load i32, i32* @PROT_WRITE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MAP_SHARED, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @fileno(i32* %27)
  %29 = call i64* @mmap(i32 0, i32 %22, i32 %25, i32 %26, i32 %28, i32 0)
  store i64* %29, i64** %10, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64*, i64** @MAP_FAILED, align 8
  %32 = icmp eq i64* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i64*, i64** %10, align 8
  store i64 3735927486, i64* %35, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = load i32, i32* @MMAP_SZ, align 4
  %38 = load i32, i32* @MS_SYNC, align 4
  %39 = call i32 @msync(i64* %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @BUG_ON(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @PF_LOCAL, align 4
  %43 = load i32, i32* @SOCK_SEQPACKET, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %45 = call i32 @socketpair(i32 %42, i32 %43, i32 0, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @BUG_ON(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 (...) @fork()
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, -1
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %2
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @BUG_ON(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64*, i64** %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @parent_f(i32 %62, i64* %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %78

66:                                               ; preds = %2
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @close(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @BUG_ON(i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64*, i64** %10, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @fileno(i32* %75)
  %77 = call i32 @child_f(i32 %73, i64* %74, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %66, %55
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32* @tmpfile(...) #1

declare dso_local i32 @BUG_ON(i32, i8*) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msync(i64*, i32, i32) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @parent_f(i32, i64*, i32) #1

declare dso_local i32 @child_f(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
