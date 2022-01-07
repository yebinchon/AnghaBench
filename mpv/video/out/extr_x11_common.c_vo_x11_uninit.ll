; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_x11_state* }
%struct.vo_x11_state = type { i64, i64, i64, i64*, i32, i32, i32, i64, i64, i64, i64, i32 }

@MP_INPUT_RELEASE_ALL = common dso_local global i32 0, align 4
@None = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"uninit ...\0A\00", align 1
@x11_error_output = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_x11_uninit(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_x11_state*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 0
  %6 = load %struct.vo_x11_state*, %struct.vo_x11_state** %5, align 8
  store %struct.vo_x11_state* %6, %struct.vo_x11_state** %3, align 8
  %7 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %8 = icmp ne %struct.vo_x11_state* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %139

10:                                               ; preds = %1
  %11 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %12 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MP_INPUT_RELEASE_ALL, align 4
  %15 = call i32 @mp_input_put_key(i32 %13, i32 %14)
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %17 = call i32 @set_screensaver(%struct.vo_x11_state* %16, i32 1)
  %18 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %19 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @None, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %10
  %24 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %25 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %28 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %33 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %36 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @XUnmapWindow(i64 %34, i64 %37)
  %39 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %40 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %43 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @XDestroyWindow(i64 %41, i64 %44)
  br label %46

46:                                               ; preds = %31, %23, %10
  %47 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %48 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %47, i32 0, i32 10
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %53 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %52, i32 0, i32 10
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @XDestroyIC(i64 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %58 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @None, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.vo*, %struct.vo** %2, align 8
  %64 = getelementptr inbounds %struct.vo, %struct.vo* %63, i32 0, i32 0
  %65 = load %struct.vo_x11_state*, %struct.vo_x11_state** %64, align 8
  %66 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %69 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @XFreeColormap(i64 %67, i64 %70)
  br label %72

72:                                               ; preds = %62, %56
  %73 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %74 = call i32 @MP_DBG(%struct.vo_x11_state* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %76 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %75, i32 0, i32 9
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %81 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %80, i32 0, i32 9
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @XCloseIM(i64 %82)
  br label %84

84:                                               ; preds = %79, %72
  %85 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %86 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %85, i32 0, i32 8
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = call i32 @XSetErrorHandler(i32* null)
  store i32* null, i32** @x11_error_output, align 8
  %91 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %92 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @XCloseDisplay(i64 %93)
  br label %95

95:                                               ; preds = %89, %84
  %96 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %97 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %102 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %101, i32 0, i32 6
  %103 = call i32 @atomic_store(i32* %102, i32 1)
  %104 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %105 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %104, i32 0, i32 4
  %106 = call i32 @sem_post(i32* %105)
  %107 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %108 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pthread_join(i32 %109, i32* null)
  %111 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %112 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %111, i32 0, i32 4
  %113 = call i32 @sem_destroy(i32* %112)
  br label %114

114:                                              ; preds = %100, %95
  %115 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %116 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %114
  %122 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %123 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %122, i32 0, i32 3
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @close(i64 %126)
  %128 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %129 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %128, i32 0, i32 3
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @close(i64 %132)
  br label %134

134:                                              ; preds = %121, %114
  %135 = load %struct.vo_x11_state*, %struct.vo_x11_state** %3, align 8
  %136 = call i32 @talloc_free(%struct.vo_x11_state* %135)
  %137 = load %struct.vo*, %struct.vo** %2, align 8
  %138 = getelementptr inbounds %struct.vo, %struct.vo* %137, i32 0, i32 0
  store %struct.vo_x11_state* null, %struct.vo_x11_state** %138, align 8
  br label %139

139:                                              ; preds = %134, %9
  ret void
}

declare dso_local i32 @mp_input_put_key(i32, i32) #1

declare dso_local i32 @set_screensaver(%struct.vo_x11_state*, i32) #1

declare dso_local i32 @XUnmapWindow(i64, i64) #1

declare dso_local i32 @XDestroyWindow(i64, i64) #1

declare dso_local i32 @XDestroyIC(i64) #1

declare dso_local i32 @XFreeColormap(i64, i64) #1

declare dso_local i32 @MP_DBG(%struct.vo_x11_state*, i8*) #1

declare dso_local i32 @XCloseIM(i64) #1

declare dso_local i32 @XSetErrorHandler(i32*) #1

declare dso_local i32 @XCloseDisplay(i64) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @sem_destroy(i32*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @talloc_free(%struct.vo_x11_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
