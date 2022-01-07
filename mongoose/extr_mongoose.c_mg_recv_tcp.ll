; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_recv_tcp.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_recv_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__*, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@.str = private unnamed_addr constant [15 x i8] c"%p <- %d bytes\00", align 1
@MG_EV_RECV = common dso_local global i32 0, align 4
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@MG_F_SSL = common dso_local global i32 0, align 4
@MG_F_SSL_HANDSHAKE_DONE = common dso_local global i32 0, align 4
@MG_F_WANT_READ = common dso_local global i32 0, align 4
@MG_SSL_WANT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_connection*, i8*, i64)* @mg_recv_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_recv_tcp(%struct.mg_connection* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %9 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %8, i32 0, i32 5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.mg_connection*, i8*, i64)**
  %15 = load i32 (%struct.mg_connection*, i8*, i64)*, i32 (%struct.mg_connection*, i8*, i64)** %14, align 8
  %16 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 %15(%struct.mg_connection* %16, i8* %17, i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @DBG(i8* %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %30 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = call i64 (...) @mg_time()
  %35 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %36 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %38 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %37, i32 0, i32 1
  %39 = call i32 @mbuf_trim(%struct.TYPE_8__* %38)
  %40 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %41 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %42 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MG_EV_RECV, align 4
  %45 = call i32 @mg_call(%struct.mg_connection* %40, i32* null, i32 %43, i32 %44, i32* %7)
  br label %56

46:                                               ; preds = %3
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %51 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %52 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %58 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %57, i32 0, i32 1
  %59 = call i32 @mbuf_trim(%struct.TYPE_8__* %58)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i64 @mg_time(...) #1

declare dso_local i32 @mbuf_trim(%struct.TYPE_8__*) #1

declare dso_local i32 @mg_call(%struct.mg_connection*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
