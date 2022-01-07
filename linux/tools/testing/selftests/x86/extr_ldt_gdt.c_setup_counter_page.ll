; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_setup_counter_page.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_setup_counter_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_32BIT = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@counter_page = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_counter_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_counter_page() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @PROT_READ, align 4
  %4 = load i32, i32* @PROT_WRITE, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @MAP_ANONYMOUS, align 4
  %7 = load i32, i32* @MAP_PRIVATE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MAP_32BIT, align 4
  %10 = or i32 %8, %9
  %11 = call i32* @mmap(i32* null, i32 4096, i32 %5, i32 %10, i32 -1, i32 0)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = load i32*, i32** @MAP_FAILED, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %0
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %27, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 1024
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %18

30:                                               ; preds = %18
  %31 = load i32*, i32** %1, align 8
  store i32* %31, i32** @counter_page, align 8
  ret void
}

declare dso_local i32* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
