; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_stream_buf_added.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_stream_buf_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_buf = type { i32, i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@D_STREAM_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"STREAM: ADD length_added=%d\00", align 1
@M_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [259 x i8] c"WARNING: Bad encapsulated packet length from peer (%d), which must be > 0 and <= %d -- please ensure that --tun-mtu or --link-mtu is equal on both peers -- this condition could also indicate a possible active attack on the TCP link -- [Attempting restart...]\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"STREAM: ADD returned TRUE, buf_len=%d, residual_len=%d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"STREAM: ADD returned FALSE (have=%d need=%d)\00", align 1
@D_STREAM_ERRORS = common dso_local global i32 0, align 4
@PS_DISABLED = common dso_local global i64 0, align 8
@PS_ENABLED = common dso_local global i64 0, align 8
@PS_FOREIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream_buf*, i32)* @stream_buf_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_buf_added(%struct.stream_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stream_buf* %0, %struct.stream_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @D_STREAM_DEBUG, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 (i32, i8*, i32, ...) @dmsg(i32 %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %15 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, %13
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %21 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %26 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 4
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %32 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %31, i32 0, i32 4
  %33 = call i32 @buf_read(%struct.TYPE_7__* %32, i32* %6, i32 4)
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ntohps(i32 %35)
  %37 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %38 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %40 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %51, label %43

43:                                               ; preds = %30
  %44 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %45 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %48 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %43, %30
  %52 = load i32, i32* @M_WARN, align 4
  %53 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %54 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %57 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @msg(i32 %52, i8* getelementptr inbounds ([259 x i8], [259 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %61 = call i32 @stream_buf_reset(%struct.stream_buf* %60)
  %62 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %63 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  store i32 0, i32* %3, align 4
  br label %123

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64, %24, %19
  %66 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %67 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %111

70:                                               ; preds = %65
  %71 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %72 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %76 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %74, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %70
  %80 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %81 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %80, i32 0, i32 5
  %82 = call i32 @buf_init(%struct.TYPE_7__* %81, i32 0)
  %83 = call i32 @ASSERT(i32 %82)
  %84 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %85 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %89 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %79
  %93 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %94 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %93, i32 0, i32 5
  %95 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %96 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %95, i32 0, i32 4
  %97 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %98 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @buf_copy_excess(%struct.TYPE_7__* %94, %struct.TYPE_7__* %96, i32 %99)
  %101 = call i32 @ASSERT(i32 %100)
  br label %102

102:                                              ; preds = %92, %79
  %103 = load i32, i32* @D_STREAM_DEBUG, align 4
  %104 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %105 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %104, i32 0, i32 4
  %106 = call i32 @BLEN(%struct.TYPE_7__* %105)
  %107 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %108 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %107, i32 0, i32 5
  %109 = call i32 @BLEN(%struct.TYPE_7__* %108)
  %110 = call i32 (i32, i8*, i32, ...) @dmsg(i32 %103, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %109)
  store i32 1, i32* %3, align 4
  br label %123

111:                                              ; preds = %70, %65
  %112 = load i32, i32* @D_STREAM_DEBUG, align 4
  %113 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %114 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %118 = getelementptr inbounds %struct.stream_buf, %struct.stream_buf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, i32, ...) @dmsg(i32 %112, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %119)
  %121 = load %struct.stream_buf*, %struct.stream_buf** %4, align 8
  %122 = call i32 @stream_buf_set_next(%struct.stream_buf* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %111, %102, %51
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @dmsg(i32, i8*, i32, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_read(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ntohps(i32) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @stream_buf_reset(%struct.stream_buf*) #1

declare dso_local i32 @buf_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @buf_copy_excess(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @BLEN(%struct.TYPE_7__*) #1

declare dso_local i32 @stream_buf_set_next(%struct.stream_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
