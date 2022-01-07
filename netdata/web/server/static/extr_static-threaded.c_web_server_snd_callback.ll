; ModuleID = '/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_server_snd_callback.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_server_snd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.web_client = type { i32, i32, i32 }

@worker_private = common dso_local global %struct.TYPE_5__* null, align 8
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%llu: sending data on fd %d.\00", align 1
@POLLIN = common dso_local global i16 0, align 2
@POLLOUT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i16*)* @web_server_snd_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @web_server_snd_callback(%struct.TYPE_4__* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.web_client*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i16* %1, i16** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @worker_private, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.web_client*
  store %struct.web_client* %15, %struct.web_client** %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @D_WEB_CLIENT, align 4
  %20 = load %struct.web_client*, %struct.web_client** %6, align 8
  %21 = getelementptr inbounds %struct.web_client, %struct.web_client* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @debug(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.web_client*, %struct.web_client** %6, align 8
  %26 = call i64 @web_client_send(%struct.web_client* %25)
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %81

32:                                               ; preds = %2
  %33 = load %struct.web_client*, %struct.web_client** %6, align 8
  %34 = getelementptr inbounds %struct.web_client, %struct.web_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.web_client*, %struct.web_client** %6, align 8
  %40 = call i64 @web_client_has_wait_receive(%struct.web_client* %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i1 [ false, %32 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i16, i16* @POLLIN, align 2
  %49 = sext i16 %48 to i32
  %50 = load i16*, i16** %5, align 8
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = or i32 %52, %49
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %50, align 2
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.web_client*, %struct.web_client** %6, align 8
  %57 = getelementptr inbounds %struct.web_client, %struct.web_client* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.web_client*, %struct.web_client** %6, align 8
  %63 = call i64 @web_client_has_wait_send(%struct.web_client* %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %61, %55
  %66 = phi i1 [ false, %55 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i16, i16* @POLLOUT, align 2
  %72 = sext i16 %71 to i32
  %73 = load i16*, i16** %5, align 8
  %74 = load i16, i16* %73, align 2
  %75 = sext i16 %74 to i32
  %76 = or i32 %75, %72
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %73, align 2
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.web_client*, %struct.web_client** %6, align 8
  %80 = call i32 @web_server_check_client_status(%struct.web_client* %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %31
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @web_client_send(%struct.web_client*) #1

declare dso_local i64 @web_client_has_wait_receive(%struct.web_client*) #1

declare dso_local i64 @web_client_has_wait_send(%struct.web_client*) #1

declare dso_local i32 @web_server_check_client_status(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
