; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_ff_demuxer_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_ff_demuxer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { i32, i64, i32*, i32*, %struct.ff_demuxer*, %struct.ff_demuxer*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_demuxer_free(%struct.ff_demuxer* %0) #0 {
  %2 = alloca %struct.ff_demuxer*, align 8
  %3 = alloca i8*, align 8
  store %struct.ff_demuxer* %0, %struct.ff_demuxer** %2, align 8
  %4 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %5 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %7 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pthread_join(i32 %8, i8** %3)
  %10 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %11 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %10, i32 0, i32 5
  %12 = load %struct.ff_demuxer*, %struct.ff_demuxer** %11, align 8
  %13 = icmp ne %struct.ff_demuxer* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %16 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %15, i32 0, i32 5
  %17 = load %struct.ff_demuxer*, %struct.ff_demuxer** %16, align 8
  %18 = call i32 @av_free(%struct.ff_demuxer* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %21 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %20, i32 0, i32 4
  %22 = load %struct.ff_demuxer*, %struct.ff_demuxer** %21, align 8
  %23 = icmp ne %struct.ff_demuxer* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %26 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %25, i32 0, i32 4
  %27 = load %struct.ff_demuxer*, %struct.ff_demuxer** %26, align 8
  %28 = call i32 @av_free(%struct.ff_demuxer* %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %31 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %36 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ff_decoder_free(i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %41 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %46 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ff_decoder_free(i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %51 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %56 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %55, i32 0, i32 1
  %57 = call i32 @avformat_close_input(i64* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %60 = call i32 @av_free(%struct.ff_demuxer* %59)
  ret void
}

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @av_free(%struct.ff_demuxer*) #1

declare dso_local i32 @ff_decoder_free(i32*) #1

declare dso_local i32 @avformat_close_input(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
