; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_track_layout_hash.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_track_layout_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.track** }
%struct.track = type { i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STREAM_TYPE_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%d-%d-%d-%d-%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.MPContext*)* @track_layout_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @track_layout_hash(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %7 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %61, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %57, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %13
  %20 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 1
  %22 = load %struct.track**, %struct.track*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.track*, %struct.track** %22, i64 %24
  %26 = load %struct.track*, %struct.track** %25, align 8
  store %struct.track* %26, %struct.track** %6, align 8
  %27 = load %struct.track*, %struct.track** %6, align 8
  %28 = getelementptr inbounds %struct.track, %struct.track* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %57

33:                                               ; preds = %19
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.track*, %struct.track** %6, align 8
  %37 = getelementptr inbounds %struct.track, %struct.track* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.track*, %struct.track** %6, align 8
  %40 = getelementptr inbounds %struct.track, %struct.track* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.track*, %struct.track** %6, align 8
  %43 = getelementptr inbounds %struct.track, %struct.track* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.track*, %struct.track** %6, align 8
  %46 = getelementptr inbounds %struct.track, %struct.track* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %33
  %50 = load %struct.track*, %struct.track** %6, align 8
  %51 = getelementptr inbounds %struct.track, %struct.track* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8* [ %52, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %53 ]
  %56 = call i8* @talloc_asprintf_append_buffer(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %41, i32 %44, i8* %55)
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %54, %32
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %13

60:                                               ; preds = %13
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %8

64:                                               ; preds = %8
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i8* @talloc_asprintf_append_buffer(i8*, i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
