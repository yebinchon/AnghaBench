; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_anal_tp.c_get_addr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_anal_tp.c_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UT64_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%d.reg.read.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_addr(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @UT64_MAX, align 4
  store i32 %16, i32* %4, align 4
  br label %25

17:                                               ; preds = %11
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @sdb_fmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @sdb_const_get(i32* %21, i8* %22, i32 0)
  %24 = call i32 @r_num_math(i32* null, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %17, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i8* @sdb_fmt(i8*, i32, i8*) #1

declare dso_local i32 @r_num_math(i32*, i32) #1

declare dso_local i32 @sdb_const_get(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
