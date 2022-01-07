; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_php_mysqlnd_net_field_length.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_php_mysqlnd_net_field_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MYSQLND_NULL_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_mysqlnd_net_field_length(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  %5 = load i32**, i32*** %3, align 8
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 251
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32**, i32*** %3, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %38 [
    i32 251, label %19
    i32 252, label %24
    i32 253, label %31
  ]

19:                                               ; preds = %16
  %20 = load i32**, i32*** %3, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %20, align 8
  %23 = load i32, i32* @MYSQLND_NULL_LENGTH, align 4
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %16
  %25 = load i32**, i32*** %3, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  store i32* %27, i32** %25, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @uint2korr(i32* %29)
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %16
  %32 = load i32**, i32*** %3, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32* %34, i32** %32, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = call i32 @uint3korr(i32* %36)
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %16
  %39 = load i32**, i32*** %3, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 9
  store i32* %41, i32** %39, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @uint4korr(i32* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %31, %24, %19, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @uint2korr(i32*) #1

declare dso_local i32 @uint3korr(i32*) #1

declare dso_local i32 @uint4korr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
