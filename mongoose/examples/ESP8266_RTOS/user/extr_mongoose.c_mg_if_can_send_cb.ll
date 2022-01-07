; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_if_can_send_cb.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_if_can_send_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32, %struct.TYPE_9__, i64, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.mg_connection*, i8*, i64)*, i32 (%struct.mg_connection*, i8*, i64)* }

@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@MG_F_CONNECTING = common dso_local global i32 0, align 4
@MG_F_UDP = common dso_local global i32 0, align 4
@MG_F_LISTENING = common dso_local global i32 0, align 4
@MG_TCP_IO_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%p -> %d bytes\00", align 1
@MG_EV_SEND = common dso_local global i32 0, align 4
@MG_F_SSL = common dso_local global i32 0, align 4
@MG_F_SSL_HANDSHAKE_DONE = common dso_local global i32 0, align 4
@MG_F_WANT_WRITE = common dso_local global i32 0, align 4
@MG_SSL_WANT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_if_can_send_cb(%struct.mg_connection* %0) #0 {
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %7 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %11 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %15 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %18 = load i32, i32* @MG_F_CONNECTING, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %119

23:                                               ; preds = %1
  %24 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %25 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MG_F_UDP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %23
  %31 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %32 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MG_F_LISTENING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %119

38:                                               ; preds = %30
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @MG_TCP_IO_SIZE, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @MG_TCP_IO_SIZE, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i64, i64* %5, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %85

48:                                               ; preds = %45
  %49 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %50 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MG_F_UDP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %57 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %56, i32 0, i32 5
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.mg_connection*, i8*, i64)*, i32 (%struct.mg_connection*, i8*, i64)** %61, align 8
  %63 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 %62(%struct.mg_connection* %63, i8* %64, i64 %65)
  store i32 %66, i32* %3, align 4
  br label %79

67:                                               ; preds = %48
  %68 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %69 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %68, i32 0, i32 5
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32 (%struct.mg_connection*, i8*, i64)*, i32 (%struct.mg_connection*, i8*, i64)** %73, align 8
  %75 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 %74(%struct.mg_connection* %75, i8* %76, i64 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %67, %55
  %80 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 @DBG(i8* %83)
  br label %85

85:                                               ; preds = %79, %45
  %86 = load i32, i32* %3, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %90 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %91 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %109

94:                                               ; preds = %85
  %95 = load i32, i32* %3, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = call i64 (...) @mg_time()
  %99 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %100 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  %101 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %102 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %101, i32 0, i32 2
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @mbuf_remove(%struct.TYPE_9__* %102, i32 %103)
  %105 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %106 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %105, i32 0, i32 2
  %107 = call i32 @mbuf_trim(%struct.TYPE_9__* %106)
  br label %108

108:                                              ; preds = %97, %94
  br label %109

109:                                              ; preds = %108, %88
  %110 = load i32, i32* %3, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %114 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %115 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MG_EV_SEND, align 4
  %118 = call i32 @mg_call(%struct.mg_connection* %113, i32* null, i32 %116, i32 %117, i32* %3)
  br label %119

119:                                              ; preds = %22, %37, %112, %109
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i64 @mg_time(...) #1

declare dso_local i32 @mbuf_remove(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mbuf_trim(%struct.TYPE_9__*) #1

declare dso_local i32 @mg_call(%struct.mg_connection*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
