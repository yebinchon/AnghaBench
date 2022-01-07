; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_streamout_sent.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_streamout_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.tcp_pcb = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"streamout_sent\00", align 1
@state = common dso_local global %struct.TYPE_2__* null, align 8
@ERR_ABRT = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"streaming out html failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.tcp_pcb*, i32)* @streamout_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @streamout_sent(i8* %0, %struct.tcp_pcb* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcp_pcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %25 = call i32 @tcp_abort(%struct.tcp_pcb* %24)
  %26 = load i64, i64* @ERR_ABRT, align 8
  store i64 %26, i64* %4, align 8
  br label %80

27:                                               ; preds = %18
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sub i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %34 = call i32 @tcp_sndbuf(%struct.tcp_pcb* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %27
  %41 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @tcp_write(%struct.tcp_pcb* %41, i64 %47, i32 %48, i32 0)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @ERR_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %56 = call i32 @tcp_abort(%struct.tcp_pcb* %55)
  %57 = load i64, i64* @ERR_ABRT, align 8
  store i64 %57, i64* %4, align 8
  br label %80

58:                                               ; preds = %40
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp uge i32 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %69 = call i32 @tcp_sent(%struct.tcp_pcb* %68, i32 0)
  %70 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %71 = call i32 @deferred_close(%struct.tcp_pcb* %70)
  br label %78

72:                                               ; preds = %58
  %73 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @tcp_arg(%struct.tcp_pcb* %73, i8* %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i64, i64* @ERR_OK, align 8
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %78, %53, %23
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i32 @tcp_abort(%struct.tcp_pcb*) #1

declare dso_local i32 @tcp_sndbuf(%struct.tcp_pcb*) #1

declare dso_local i64 @tcp_write(%struct.tcp_pcb*, i64, i32, i32) #1

declare dso_local i32 @tcp_sent(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @deferred_close(%struct.tcp_pcb*) #1

declare dso_local i32 @tcp_arg(%struct.tcp_pcb*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
