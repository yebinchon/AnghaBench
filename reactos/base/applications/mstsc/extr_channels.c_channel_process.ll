; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_channels.c_channel_process.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_channels.c_channel_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 (%struct.TYPE_9__*)*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32*, i32*, i32* }

@g_num_channels = common dso_local global i32 0, align 4
@g_channels = common dso_local global %struct.TYPE_8__* null, align 8
@CHANNEL_FLAG_FIRST = common dso_local global i32 0, align 4
@CHANNEL_FLAG_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @channel_process(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @g_num_channels, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_channels, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %18
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %30

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %9, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %11

30:                                               ; preds = %25, %11
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @g_num_channels, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %152

35:                                               ; preds = %30
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @in_uint32_le(%struct.TYPE_9__* %36, i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @in_uint32_le(%struct.TYPE_9__* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @CHANNEL_FLAG_FIRST, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CHANNEL_FLAG_LAST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = call i32 %54(%struct.TYPE_9__* %55)
  br label %152

57:                                               ; preds = %46, %35
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @CHANNEL_FLAG_FIRST, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @xrealloc(i32* %73, i32 %74)
  %76 = inttoptr i64 %75 to i32*
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %70, %64
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  store i32* %85, i32** %87, align 8
  br label %88

88:                                               ; preds = %82, %57
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = ptrtoint i32* %91 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = inttoptr i64 %98 to i32*
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = ptrtoint i32* %107 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32 @MIN(i32* %99, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @memcpy(i32* %119, i32* %122, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = sext i32 %125 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %127, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @CHANNEL_FLAG_LAST, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %88
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  store i32* %138, i32** %140, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  store i32* %143, i32** %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %147, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %150 = call i32 %148(%struct.TYPE_9__* %149)
  br label %151

151:                                              ; preds = %135, %88
  br label %152

152:                                              ; preds = %34, %151, %51
  ret void
}

declare dso_local i32 @in_uint32_le(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @xrealloc(i32*, i32) #1

declare dso_local i32 @MIN(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
