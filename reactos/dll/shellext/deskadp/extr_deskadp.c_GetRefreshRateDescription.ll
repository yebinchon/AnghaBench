; ModuleID = '/home/carl/AnghaBench/reactos/dll/shellext/deskadp/extr_deskadp.c_GetRefreshRateDescription.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/shellext/deskadp/extr_deskadp.c_GetRefreshRateDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@hInstance = common dso_local global i32 0, align 4
@IDS_DEFREFRESHRATE = common dso_local global i32 0, align 4
@IDES_REFRESHRATEFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @GetRefreshRateDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetRefreshRateDescription(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load i32, i32* @hInstance, align 4
  %15 = load i32, i32* @IDS_DEFREFRESHRATE, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @LoadString(i32 %14, i32 %15, i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = call i32 @TEXT(i8 signext 0)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %13
  br label %42

25:                                               ; preds = %3
  %26 = load i32, i32* @hInstance, align 4
  %27 = load i32, i32* @IDES_REFRESHRATEFMT, align 4
  %28 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %29 = call i32 @LoadString(i32 %26, i32 %27, i32* %28, i32 64)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = call i32 @TEXT(i8 signext 0)
  %33 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  store i32 %32, i32* %33, align 16
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @_sntprintf(i32* %35, i32 %36, i32* %37, i32 %40)
  br label %42

42:                                               ; preds = %34, %24
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #1

declare dso_local i32 @TEXT(i8 signext) #1

declare dso_local i32 @_sntprintf(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
