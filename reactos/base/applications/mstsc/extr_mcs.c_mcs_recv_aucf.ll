; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mcs.c_mcs_recv_aucf.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mcs.c_mcs_recv_aucf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4
@MCS_AUCF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"expected AUcf, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"AUrq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mcs_recv_aucf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_recv_aucf(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = call i32* @iso_recv(i32* null)
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @False, align 4
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @in_uint8(i32* %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 2
  %18 = load i32, i32* @MCS_AUCF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @False, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %12
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @in_uint8(i32* %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @False, align 4
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @in_uint16_be(i32* %39, i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @s_check_end(i32* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %30, %20, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32* @iso_recv(i32*) #1

declare dso_local i32 @in_uint8(i32*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @in_uint16_be(i32*, i32) #1

declare dso_local i32 @s_check_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
