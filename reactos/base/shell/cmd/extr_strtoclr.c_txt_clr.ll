; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_strtoclr.c_txt_clr.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_strtoclr.c_txt_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64* }

@clrtable = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @txt_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_clr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %35, %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clrtable, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %5
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clrtable, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clrtable, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = call i32 @_tcslen(i64* %24)
  %26 = call i64 @_tcsnicmp(i32 %14, i64* %19, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %13
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clrtable, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %5

38:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @_tcsnicmp(i32, i64*, i32) #1

declare dso_local i32 @_tcslen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
