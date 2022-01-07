; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, i32, %struct.wasapi_state* }
%struct.wasapi_state = type { i32, i32, i8*, i32, i32, i8*, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Init wasapi\0A\00", align 1
@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@AO_INIT_EXCLUSIVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Error creating events\0A\00", align 1
@thread_wakeup = common dso_local global i32 0, align 4
@AudioThread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to create audio thread\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Received failure from audio thread\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Init wasapi done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.wasapi_state*, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %5 = load %struct.ao*, %struct.ao** %3, align 8
  %6 = call i32 @MP_DBG(%struct.ao* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %8 = call i32 @CoInitializeEx(i32* null, i32 %7)
  %9 = load %struct.ao*, %struct.ao** %3, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 3
  %11 = load %struct.wasapi_state*, %struct.wasapi_state** %10, align 8
  store %struct.wasapi_state* %11, %struct.wasapi_state** %4, align 8
  %12 = load %struct.ao*, %struct.ao** %3, align 8
  %13 = getelementptr inbounds %struct.ao, %struct.ao* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %16 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ao*, %struct.ao** %3, align 8
  %18 = getelementptr inbounds %struct.ao, %struct.ao* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AO_INIT_EXCLUSIVE, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %23 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.ao*, %struct.ao** %3, align 8
  %27 = call i64 @wasapi_find_deviceID(%struct.ao* %26)
  %28 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %29 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %28, i32 0, i32 6
  store i64 %27, i64* %29, align 8
  %30 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %31 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load %struct.ao*, %struct.ao** %3, align 8
  %36 = call i32 @uninit(%struct.ao* %35)
  store i32 -1, i32* %2, align 4
  br label %128

37:                                               ; preds = %1
  %38 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %39 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.ao*, %struct.ao** %3, align 8
  %44 = call i32 @wasapi_change_init(%struct.ao* %43, i32 0)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = call i8* @CreateEventW(i32* null, i32 %46, i32 %47, i32* null)
  %49 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %50 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i8* @CreateEventW(i32* null, i32 %51, i32 %52, i32* null)
  %54 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %55 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %57 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %62 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %61, i32 0, i32 5
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %60, %45
  %66 = load %struct.ao*, %struct.ao** %3, align 8
  %67 = call i32 @MP_FATAL(%struct.ao* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.ao*, %struct.ao** %3, align 8
  %69 = call i32 @uninit(%struct.ao* %68)
  store i32 -1, i32* %2, align 4
  br label %128

70:                                               ; preds = %60
  %71 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %72 = call i32 @mp_dispatch_create(%struct.wasapi_state* %71)
  %73 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %74 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %76 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @thread_wakeup, align 4
  %79 = load %struct.ao*, %struct.ao** %3, align 8
  %80 = call i32 @mp_dispatch_set_wakeup_fn(i32 %77, i32 %78, %struct.ao* %79)
  %81 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %82 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load %struct.ao*, %struct.ao** %3, align 8
  %84 = call i32 @CreateThread(i32* null, i32 0, i32* @AudioThread, %struct.ao* %83, i32 0, i32* null)
  %85 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %86 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %88 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %70
  %92 = load %struct.ao*, %struct.ao** %3, align 8
  %93 = call i32 @MP_FATAL(%struct.ao* %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.ao*, %struct.ao** %3, align 8
  %95 = call i32 @uninit(%struct.ao* %94)
  store i32 -1, i32* %2, align 4
  br label %128

96:                                               ; preds = %70
  %97 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %98 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @INFINITE, align 4
  %101 = call i32 @WaitForSingleObject(i8* %99, i32 %100)
  %102 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %103 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %106 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @CloseHandle(i8* %107)
  %109 = call i32 @SAFE_DESTROY(i8* %104, i32 %108)
  %110 = load %struct.wasapi_state*, %struct.wasapi_state** %4, align 8
  %111 = getelementptr inbounds %struct.wasapi_state, %struct.wasapi_state* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %96
  %115 = load %struct.ao*, %struct.ao** %3, align 8
  %116 = getelementptr inbounds %struct.ao, %struct.ao* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load %struct.ao*, %struct.ao** %3, align 8
  %121 = call i32 @MP_FATAL(%struct.ao* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %114
  %123 = load %struct.ao*, %struct.ao** %3, align 8
  %124 = call i32 @uninit(%struct.ao* %123)
  store i32 -1, i32* %2, align 4
  br label %128

125:                                              ; preds = %96
  %126 = load %struct.ao*, %struct.ao** %3, align 8
  %127 = call i32 @MP_DBG(%struct.ao* %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %125, %122, %91, %65, %34
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @MP_DBG(%struct.ao*, i8*) #1

declare dso_local i32 @CoInitializeEx(i32*, i32) #1

declare dso_local i64 @wasapi_find_deviceID(%struct.ao*) #1

declare dso_local i32 @uninit(%struct.ao*) #1

declare dso_local i32 @wasapi_change_init(%struct.ao*, i32) #1

declare dso_local i8* @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32 @MP_FATAL(%struct.ao*, i8*) #1

declare dso_local i32 @mp_dispatch_create(%struct.wasapi_state*) #1

declare dso_local i32 @mp_dispatch_set_wakeup_fn(i32, i32, %struct.ao*) #1

declare dso_local i32 @CreateThread(i32*, i32, i32*, %struct.ao*, i32, i32*) #1

declare dso_local i32 @WaitForSingleObject(i8*, i32) #1

declare dso_local i32 @SAFE_DESTROY(i8*, i32) #1

declare dso_local i32 @CloseHandle(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
