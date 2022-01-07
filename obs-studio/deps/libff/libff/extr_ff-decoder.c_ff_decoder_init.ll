; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-decoder.c_ff_decoder_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-decoder.c_ff_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_decoder = type { i32, i32, i32, double, i32, i32, i32, i32, i32, i64, i64, i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ff_decoder* }

@ff_decoder_refresh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ff_decoder* @ff_decoder_init(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ff_decoder*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ff_decoder*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call %struct.ff_decoder* @av_mallocz(i32 88)
  store %struct.ff_decoder* %20, %struct.ff_decoder** %11, align 8
  %21 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %22 = icmp eq %struct.ff_decoder* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %94

24:                                               ; preds = %4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %27 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %26, i32 0, i32 13
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %29 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %30 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %29, i32 0, i32 13
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.ff_decoder* %28, %struct.ff_decoder** %32, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %35 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %34, i32 0, i32 12
  store i32* %33, i32** %35, align 8
  %36 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %37 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %39 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %42 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %44 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %43, i32 0, i32 6
  %45 = call i32 @packet_queue_init(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %24
  br label %91

48:                                               ; preds = %24
  %49 = call i64 (...) @av_gettime()
  %50 = sitofp i64 %49 to double
  %51 = fdiv double %50, 1.000000e+06
  %52 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %53 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %52, i32 0, i32 3
  store double %51, double* %53, align 8
  %54 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %55 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %54, i32 0, i32 4
  store i32 0, i32* %55, align 8
  %56 = call i64 (...) @av_gettime()
  %57 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %58 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %57, i32 0, i32 11
  store i64 %56, i64* %58, align 8
  %59 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %60 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %59, i32 0, i32 10
  store i64 0, i64* %60, align 8
  %61 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %62 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %61, i32 0, i32 9
  store i64 0, i64* %62, align 8
  %63 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %64 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %63, i32 0, i32 5
  store i32 1, i32* %64, align 4
  %65 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %66 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %65, i32 0, i32 7
  %67 = load i32, i32* @ff_decoder_refresh, align 4
  %68 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %69 = call i32 @ff_timer_init(i32* %66, i32 %67, %struct.ff_decoder* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %48
  br label %87

73:                                               ; preds = %48
  %74 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %75 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %74, i32 0, i32 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @ff_circular_queue_init(i32* %75, i32 4, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %83

81:                                               ; preds = %73
  %82 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  store %struct.ff_decoder* %82, %struct.ff_decoder** %5, align 8
  br label %95

83:                                               ; preds = %80
  %84 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %85 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %84, i32 0, i32 7
  %86 = call i32 @ff_timer_free(i32* %85)
  br label %87

87:                                               ; preds = %83, %72
  %88 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %89 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %88, i32 0, i32 6
  %90 = call i32 @packet_queue_free(i32* %89)
  br label %91

91:                                               ; preds = %87, %47
  %92 = load %struct.ff_decoder*, %struct.ff_decoder** %11, align 8
  %93 = call i32 @av_free(%struct.ff_decoder* %92)
  br label %94

94:                                               ; preds = %91, %23
  store %struct.ff_decoder* null, %struct.ff_decoder** %5, align 8
  br label %95

95:                                               ; preds = %94, %81
  %96 = load %struct.ff_decoder*, %struct.ff_decoder** %5, align 8
  ret %struct.ff_decoder* %96
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.ff_decoder* @av_mallocz(i32) #1

declare dso_local i32 @packet_queue_init(i32*) #1

declare dso_local i64 @av_gettime(...) #1

declare dso_local i32 @ff_timer_init(i32*, i32, %struct.ff_decoder*) #1

declare dso_local i32 @ff_circular_queue_init(i32*, i32, i32) #1

declare dso_local i32 @ff_timer_free(i32*) #1

declare dso_local i32 @packet_queue_free(i32*) #1

declare dso_local i32 @av_free(%struct.ff_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
