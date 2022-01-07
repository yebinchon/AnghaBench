; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_tlbie_test.c_mem_snapshot_fn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_tlbie_test.c_mem_snapshot_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@corruption_found = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@segv_wait = common dso_local global i32 0, align 4
@map1 = common dso_local global i8* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@map2 = common dso_local global i8* null, align 8
@PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mem_snapshot_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mem_snapshot_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i32 (...) @getpagesize()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i8* @malloc(i64 %9)
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %20, %1
  %12 = load i32, i32* @corruption_found, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @timeout, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %40

20:                                               ; preds = %18
  store i32 1, i32* @segv_wait, align 4
  %21 = load i8*, i8** @map1, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = call i32 @mprotect(i8* %21, i64 %22, i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** @map1, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @memcpy(i8* %25, i8* %26, i64 %27)
  %29 = load i8*, i8** @map2, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @memcpy(i8* %29, i8* %30, i64 %31)
  call void asm sideeffect "sync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %33 = load i8*, i8** @map1, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* @PROT_READ, align 4
  %36 = load i32, i32* @PROT_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @mprotect(i8* %33, i64 %34, i32 %37)
  call void asm sideeffect "sync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 0, i32* @segv_wait, align 4
  %39 = call i32 @usleep(i32 1)
  br label %11

40:                                               ; preds = %18
  ret i8* null
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @mprotect(i8*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 720}
!3 = !{i32 803}
