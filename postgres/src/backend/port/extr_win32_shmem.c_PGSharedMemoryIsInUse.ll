; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_shmem.c_PGSharedMemoryIsInUse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_win32_shmem.c_PGSharedMemoryIsInUse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_MAP_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGSharedMemoryIsInUse(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i8* (...) @GetSharedMemName()
  store i8* %8, i8** %6, align 8
  %9 = load i32, i32* @FILE_MAP_READ, align 4
  %10 = load i32, i32* @FALSE, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32* @OpenFileMapping(i32 %9, i32 %10, i8* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @free(i8* %13)
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @CloseHandle(i32* %19)
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %17
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i8* @GetSharedMemName(...) #1

declare dso_local i32* @OpenFileMapping(i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
