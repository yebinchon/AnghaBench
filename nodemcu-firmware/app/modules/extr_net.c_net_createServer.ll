; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_createServer.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_net.c_net_createServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TYPE_TCP = common dso_local global i32 0, align 4
@TYPE_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"net.createServer with net.UDP type\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"in next version\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"invalid type\00", align 1
@TYPE_TCP_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_createServer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @TYPE_TCP, align 4
  %9 = call i32 @luaL_optlong(i32* %7, i32 1, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_optlong(i32* %10, i32 2, i32 30)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TYPE_UDP, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @platform_print_deprecation_note(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @net_createUDPSocket(i32* %17)
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TYPE_TCP, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @luaL_error(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @TYPE_TCP_SERVER, align 4
  %29 = call %struct.TYPE_5__* @net_create(i32* %27, i32 %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %23, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @luaL_optlong(i32*, i32, i32) #1

declare dso_local i32 @platform_print_deprecation_note(i8*, i8*) #1

declare dso_local i32 @net_createUDPSocket(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @net_create(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
