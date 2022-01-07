; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_typeString.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_symbols.c_typeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@is64 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*)* @typeString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @typeString(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  store i32 32, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 12
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %21

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 16777228
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  store i32 64, i32* %14, align 4
  store i32 1, i32* @is64, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %21

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 33554444
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  store i32 0, i32* @is64, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 64, i32* %19, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %21

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %21

21:                                               ; preds = %20, %18, %13, %9
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
