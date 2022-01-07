; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_set_clock_sync_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_set_clock_sync_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32*, i8* }

@ff_decoder_clock = common dso_local global i8* null, align 8
@ff_external_clock = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_demuxer*)* @set_clock_sync_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_clock_sync_type(%struct.ff_demuxer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ff_demuxer*, align 8
  store %struct.ff_demuxer* %0, %struct.ff_demuxer** %3, align 8
  %4 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %5 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %10 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %16 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 130, i32* %17, align 8
  br label %18

18:                                               ; preds = %14, %8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %21 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %26 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 130
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %32 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 128, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %37 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %70 [
    i32 130, label %40
    i32 128, label %51
    i32 129, label %62
  ]

40:                                               ; preds = %35
  %41 = load i8*, i8** @ff_decoder_clock, align 8
  %42 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %43 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %46 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %49 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32* %47, i32** %50, align 8
  br label %71

51:                                               ; preds = %35
  %52 = load i8*, i8** @ff_decoder_clock, align 8
  %53 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %54 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  %56 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %57 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %60 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32* %58, i32** %61, align 8
  br label %71

62:                                               ; preds = %35
  %63 = load i8*, i8** @ff_external_clock, align 8
  %64 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %65 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i8* %63, i8** %66, align 8
  %67 = load %struct.ff_demuxer*, %struct.ff_demuxer** %3, align 8
  %68 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %71

70:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %72

71:                                               ; preds = %62, %51, %40
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
