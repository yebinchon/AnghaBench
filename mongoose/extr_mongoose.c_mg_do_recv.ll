; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_do_recv.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_do_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i8* }

@MG_F_UDP = common dso_local global i32 0, align 4
@MG_UDP_IO_SIZE = common dso_local global i64 0, align 8
@MG_TCP_IO_SIZE = common dso_local global i64 0, align 8
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@MG_F_CONNECTING = common dso_local global i32 0, align 4
@MG_F_LISTENING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_connection*)* @mg_do_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_do_recv(%struct.mg_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %7 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %8 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MG_F_UDP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @MG_UDP_IO_SIZE, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @MG_TCP_IO_SIZE, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  store i64 %18, i64* %6, align 8
  %19 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %20 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %23 = load i32, i32* @MG_F_CONNECTING, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %17
  %28 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %29 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MG_F_LISTENING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %36 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MG_F_UDP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34, %17
  store i32 -1, i32* %2, align 4
  br label %125

42:                                               ; preds = %34, %27
  br label %43

43:                                               ; preds = %121, %42
  %44 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @recv_avail_size(%struct.mg_connection* %44, i64 %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 -2, i32* %4, align 4
  br label %123

50:                                               ; preds = %43
  %51 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %52 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %56 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %58, %59
  %61 = icmp ult i64 %54, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  %63 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %64 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %63, i32 0, i32 1
  %65 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %66 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %68, %69
  %71 = call i32 @mbuf_resize(%struct.TYPE_2__* %64, i64 %70)
  br label %72

72:                                               ; preds = %62, %50
  %73 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %74 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %78 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  store i8* %81, i8** %5, align 8
  %82 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %83 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %87 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %85, %89
  store i64 %90, i64* %6, align 8
  %91 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %92 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MG_F_UDP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %72
  %98 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @mg_recv_udp(%struct.mg_connection* %98, i8* %99, i64 %100)
  store i32 %101, i32* %4, align 4
  br label %107

102:                                              ; preds = %72
  %103 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @mg_recv_tcp(%struct.mg_connection* %103, i8* %104, i64 %105)
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %102, %97
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %113 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %116 = load i32, i32* @MG_F_UDP, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %111, %108
  %122 = phi i1 [ false, %108 ], [ %120, %111 ]
  br i1 %122, label %43, label %123

123:                                              ; preds = %121, %49
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %41
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i64 @recv_avail_size(%struct.mg_connection*, i64) #1

declare dso_local i32 @mbuf_resize(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @mg_recv_udp(%struct.mg_connection*, i8*, i64) #1

declare dso_local i32 @mg_recv_tcp(%struct.mg_connection*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
