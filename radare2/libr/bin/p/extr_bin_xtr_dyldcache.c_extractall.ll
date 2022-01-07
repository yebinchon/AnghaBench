; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xtr_dyldcache.c_extractall.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xtr_dyldcache.c_extractall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @extractall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extractall(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.TYPE_6__* @extract(i32* %8, i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %2, align 8
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = call i32* @r_list_newf(i32 (%struct.TYPE_6__*)* @r_bin_xtrdata_free)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = call i32 @r_bin_xtrdata_free(%struct.TYPE_6__* %23)
  store i32* null, i32** %2, align 8
  br label %50

25:                                               ; preds = %15
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = call i32 @r_list_append(i32* %26, %struct.TYPE_6__* %27)
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %45, %25
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %38, label %48

38:                                               ; preds = %36
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.TYPE_6__* @extract(i32* %39, i32 %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %7, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = call i32 @r_list_append(i32* %42, %struct.TYPE_6__* %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %29

48:                                               ; preds = %36
  %49 = load i32*, i32** %4, align 8
  store i32* %49, i32** %2, align 8
  br label %50

50:                                               ; preds = %48, %22, %13
  %51 = load i32*, i32** %2, align 8
  ret i32* %51
}

declare dso_local %struct.TYPE_6__* @extract(i32*, i32) #1

declare dso_local i32* @r_list_newf(i32 (%struct.TYPE_6__*)*) #1

declare dso_local i32 @r_bin_xtrdata_free(%struct.TYPE_6__*) #1

declare dso_local i32 @r_list_append(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
