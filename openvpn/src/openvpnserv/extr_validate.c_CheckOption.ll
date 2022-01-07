; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_validate.c_CheckOption.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_validate.c_CheckOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i32] [i32 45, i32 45, i32 99, i32 111, i32 110, i32 102, i32 105, i32 103, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@white_list = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckOption(i32* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32**, i32*** %8, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @wcscmp(i32* %12, i8* bitcast ([9 x i32]* @.str to i8*))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = load i32**, i32*** %8, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @CheckConfigPath(i32* %19, i32* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %40

28:                                               ; preds = %18, %15, %4
  %29 = load i32**, i32*** %8, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* @white_list, align 4
  %34 = call i32 @OptionLookup(i32* %32, i32 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %5, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %36, %26
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @wcscmp(i32*, i8*) #1

declare dso_local i32 @CheckConfigPath(i32*, i32*, i32*) #1

declare dso_local i32 @OptionLookup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
