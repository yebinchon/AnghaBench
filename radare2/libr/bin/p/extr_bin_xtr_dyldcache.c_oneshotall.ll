; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xtr_dyldcache.c_oneshotall.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xtr_dyldcache.c_oneshotall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32*, i32)* @oneshotall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @oneshotall(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = call i32 @load(%struct.TYPE_11__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32* null, i32** %4, align 8
  br label %69

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.TYPE_10__* @oneshot(%struct.TYPE_11__* %23, i32* %24, i32 %25, i32 %26)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %8, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i32*, i32** %9, align 8
  store i32* %31, i32** %4, align 8
  br label %69

32:                                               ; preds = %22
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = call i32* @r_list_newf(i32 (%struct.TYPE_10__*)* @r_bin_xtrdata_free)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = call i32 @r_bin_xtrdata_free(%struct.TYPE_10__* %40)
  store i32* null, i32** %4, align 8
  br label %69

42:                                               ; preds = %32
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = call i32 @r_list_append(i32* %43, %struct.TYPE_10__* %44)
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %64, %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %67

55:                                               ; preds = %53
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call %struct.TYPE_10__* @oneshot(%struct.TYPE_11__* %56, i32* %57, i32 %58, i32 %59)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = call i32 @r_list_append(i32* %61, %struct.TYPE_10__* %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %46

67:                                               ; preds = %53
  %68 = load i32*, i32** %9, align 8
  store i32* %68, i32** %4, align 8
  br label %69

69:                                               ; preds = %67, %39, %30, %20
  %70 = load i32*, i32** %4, align 8
  ret i32* %70
}

declare dso_local i32 @load(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @oneshot(%struct.TYPE_11__*, i32*, i32, i32) #1

declare dso_local i32* @r_list_newf(i32 (%struct.TYPE_10__*)*) #1

declare dso_local i32 @r_bin_xtrdata_free(%struct.TYPE_10__*) #1

declare dso_local i32 @r_list_append(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
