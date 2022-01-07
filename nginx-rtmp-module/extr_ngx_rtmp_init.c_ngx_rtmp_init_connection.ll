; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_init.c_ngx_rtmp_init_connection.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_init.c_ngx_rtmp_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, %struct.sockaddr*, %struct.TYPE_17__* }
%struct.sockaddr = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_22__, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@ngx_rtmp_naccepted = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"*%ui client connected '%V'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_rtmp_init_connection(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %11 = load i32, i32* @ngx_rtmp_naccepted, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @ngx_rtmp_naccepted, align 4
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %4, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %75

22:                                               ; preds = %1
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %24 = call i64 @ngx_connection_local_sockaddr(%struct.TYPE_23__* %23, i32* null, i32 0)
  %25 = load i64, i64* @NGX_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %29 = call i32 @ngx_rtmp_close_connection(%struct.TYPE_23__* %28)
  br label %121

30:                                               ; preds = %22
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 3
  %33 = load %struct.sockaddr*, %struct.sockaddr** %32, align 8
  store %struct.sockaddr* %33, %struct.sockaddr** %5, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %38 [
    i32 128, label %37
  ]

37:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %30, %37
  %39 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %40 = bitcast %struct.sockaddr* %39 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %40, %struct.sockaddr_in** %6, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %42, align 8
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %7, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %65, %38
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %68

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %44

68:                                               ; preds = %63, %44
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  store %struct.TYPE_22__* %73, %struct.TYPE_22__** %9, align 8
  br label %74

74:                                               ; preds = %68
  br label %90

75:                                               ; preds = %1
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 3
  %78 = load %struct.sockaddr*, %struct.sockaddr** %77, align 8
  %79 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %82 [
    i32 128, label %81
  ]

81:                                               ; preds = %75
  store i32 1, i32* %10, align 4
  br label %82

82:                                               ; preds = %75, %81
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %7, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  store %struct.TYPE_22__* %88, %struct.TYPE_22__** %9, align 8
  br label %89

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %74
  %91 = load i32, i32* @NGX_LOG_INFO, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = call i32 @ngx_log_error(i32 %91, i32 %94, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %97, i32* %99)
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %103 = call %struct.TYPE_19__* @ngx_rtmp_init_session(%struct.TYPE_23__* %101, %struct.TYPE_22__* %102)
  store %struct.TYPE_19__* %103, %struct.TYPE_19__** %8, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %105 = icmp eq %struct.TYPE_19__* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %90
  br label %121

107:                                              ; preds = %90
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %117 = call i32 @ngx_rtmp_proxy_protocol(%struct.TYPE_19__* %116)
  br label %121

118:                                              ; preds = %107
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %120 = call i32 @ngx_rtmp_handshake(%struct.TYPE_19__* %119)
  br label %121

121:                                              ; preds = %27, %106, %118, %115
  ret void
}

declare dso_local i64 @ngx_connection_local_sockaddr(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @ngx_rtmp_close_connection(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @ngx_rtmp_init_session(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_rtmp_proxy_protocol(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_rtmp_handshake(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
