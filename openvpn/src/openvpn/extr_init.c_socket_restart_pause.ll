; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_socket_restart_pause.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_socket_restart_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@D_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Restart pause, %d second(s)\00", align 1
@AR_NOINTERACT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @socket_restart_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_restart_pause(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  store i32 2, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.context*, %struct.context** %2, align 8
  %6 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %17 [
    i32 129, label %10
    i32 128, label %11
    i32 130, label %11
  ]

10:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %17

11:                                               ; preds = %1, %1
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %1, %11, %10
  %18 = load %struct.context*, %struct.context** %2, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 129
  br i1 %23, label %24, label %60

24:                                               ; preds = %17
  %25 = load %struct.context*, %struct.context** %2, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.context*, %struct.context** %2, align 8
  %30 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %28, %34
  %36 = sub nsw i32 %35, 4
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @max_int(i32 %40, i32 1)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @min_int(i32 %42, i32 15)
  %44 = shl i32 %41, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %24
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.context*, %struct.context** %2, align 8
  %48 = getelementptr inbounds %struct.context, %struct.context* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %46, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.context*, %struct.context** %2, align 8
  %55 = getelementptr inbounds %struct.context, %struct.context* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %45
  br label %60

60:                                               ; preds = %59, %17
  %61 = load %struct.context*, %struct.context** %2, align 8
  %62 = getelementptr inbounds %struct.context, %struct.context* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.context*, %struct.context** %2, align 8
  %68 = getelementptr inbounds %struct.context, %struct.context* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.context*, %struct.context** %2, align 8
  %75 = getelementptr inbounds %struct.context, %struct.context* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %3, align 4
  br label %86

78:                                               ; preds = %66, %60
  %79 = load %struct.context*, %struct.context** %2, align 8
  %80 = getelementptr inbounds %struct.context, %struct.context* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %78
  br label %86

86:                                               ; preds = %85, %73
  %87 = load %struct.context*, %struct.context** %2, align 8
  %88 = getelementptr inbounds %struct.context, %struct.context* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call i64 @do_hold(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %86
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @D_RESTART, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @msg(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @management_sleep(i32 %101)
  br label %103

103:                                              ; preds = %97, %94
  ret void
}

declare dso_local i32 @max_int(i32, i32) #1

declare dso_local i32 @min_int(i32, i32) #1

declare dso_local i64 @do_hold(i32) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @management_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
