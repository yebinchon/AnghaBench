; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_if_connect_cb.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_if_connect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%p %s://%s:%hu -> %d\00", align 1
@MG_F_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@MG_F_CONNECTING = common dso_local global i32 0, align 4
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@MG_EV_CONNECT = common dso_local global i32 0, align 4
@MG_F_SSL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_if_connect_cb(%struct.mg_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @LL_DEBUG, align 4
  %6 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %7 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %8 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MG_F_UDP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %15 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @inet_ntoa(i32 %19)
  %21 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %22 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @LOG(i32 %5, i8* %29)
  %31 = load i32, i32* @MG_F_CONNECTING, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %34 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %41 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %42 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %2
  %46 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %47 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %48 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MG_EV_CONNECT, align 4
  %51 = call i32 @mg_call(%struct.mg_connection* %46, i32* null, i32 %49, i32 %50, i32* %4)
  ret void
}

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @mg_call(%struct.mg_connection*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
