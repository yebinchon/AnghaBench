; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_socket_if_connect_udp.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_socket_if_connect_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@MG_F_ENABLE_BROADCAST = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_socket_if_connect_udp(%struct.mg_connection* %0) #0 {
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %2, align 8
  %4 = load i32, i32* @AF_INET, align 4
  %5 = load i32, i32* @SOCK_DGRAM, align 4
  %6 = call i64 @socket(i32 %4, i32 %5, i32 0)
  %7 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %8 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %10 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INVALID_SOCKET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = call i32 (...) @mg_get_errno()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @mg_get_errno()
  br label %20

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 1, %19 ]
  %22 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %23 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %54

24:                                               ; preds = %1
  %25 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %26 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MG_F_ENABLE_BROADCAST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  %32 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %33 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @SOL_SOCKET, align 4
  %36 = load i32, i32* @SO_BROADCAST, align 4
  %37 = bitcast i32* %3 to i8*
  %38 = call i64 @setsockopt(i64 %34, i32 %35, i32 %36, i8* %37, i32 4)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = call i32 (...) @mg_get_errno()
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (...) @mg_get_errno()
  br label %46

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 1, %45 ]
  %48 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %49 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %53 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %46, %20
  ret void
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @mg_get_errno(...) #1

declare dso_local i64 @setsockopt(i64, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
