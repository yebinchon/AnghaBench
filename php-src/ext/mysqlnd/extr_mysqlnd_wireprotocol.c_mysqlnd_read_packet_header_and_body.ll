; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_mysqlnd_read_packet_header_and_body.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_mysqlnd_read_packet_header_and_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_12__*, i32*, i32*, i64, i32*, i32*)* }

@.str = private unnamed_addr constant [36 x i8] c"mysqlnd_read_packet_header_and_body\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"buf=%p size=%u\00", align 1
@FAIL = common dso_local global i64 0, align 8
@CONN_QUIT_SENT = common dso_local global i32 0, align 4
@CR_SERVER_GONE_ERROR = common dso_local global i32 0, align 4
@UNKNOWN_SQLSTATE = common dso_local global i32 0, align 4
@mysqlnd_server_gone = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Can't read %s's header\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Packet buffer %u wasn't big enough %u, %u bytes will be unread\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Empty '%s' packet body\00", align 1
@packet_type_to_statistic_byte_count = common dso_local global i32* null, align 8
@MYSQLND_HEADER_SIZE = common dso_local global i64 0, align 8
@packet_type_to_statistic_packet_count = common dso_local global i32* null, align 8
@PASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32*, i32*, i32*, i32*, i64, i8*, i32)* @mysqlnd_read_packet_header_and_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqlnd_read_packet_header_and_body(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i64 %7, i8* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  %22 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %18, align 8
  %24 = load i64, i64* %19, align 8
  %25 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %23, i64 %24)
  %26 = load i64, i64* @FAIL, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = call i64 @mysqlnd_read_header(%struct.TYPE_12__* %27, i32* %28, %struct.TYPE_13__* %29, i32* %30, i32* %31)
  %33 = icmp eq i64 %26, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %10
  %35 = load i32*, i32** %17, align 8
  %36 = load i32, i32* @CONN_QUIT_SENT, align 4
  %37 = call i32 @SET_CONNECTION_STATE(i32* %35, i32 %36)
  %38 = load i32*, i32** %16, align 8
  %39 = load i32, i32* @CR_SERVER_GONE_ERROR, align 4
  %40 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %41 = load i32, i32* @mysqlnd_server_gone, align 4
  %42 = call i32 @SET_CLIENT_ERROR(i32* %38, i32 %39, i32 %40, i32 %41)
  %43 = load i8*, i8** %20, align 8
  %44 = call i32 (i8*, ...) @DBG_ERR_FMT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i64, i64* @FAIL, align 8
  %46 = call i32 @DBG_RETURN(i64 %45)
  br label %47

47:                                               ; preds = %34, %10
  %48 = load i64, i64* %19, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load i64, i64* %19, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %19, align 8
  %62 = sub i64 %60, %61
  %63 = call i32 (i8*, ...) @DBG_ERR_FMT(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %54, i64 %57, i64 %62)
  %64 = load i64, i64* @FAIL, align 8
  %65 = call i32 @DBG_RETURN(i64 %64)
  br label %66

66:                                               ; preds = %53, %47
  %67 = load i64, i64* @FAIL, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64 (%struct.TYPE_12__*, i32*, i32*, i64, i32*, i32*)*, i64 (%struct.TYPE_12__*, i32*, i32*, i64, i32*, i32*)** %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = call i64 %73(%struct.TYPE_12__* %74, i32* %75, i32* %76, i64 %79, i32* %80, i32* %81)
  %83 = icmp eq i64 %67, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %66
  %85 = load i32*, i32** %17, align 8
  %86 = load i32, i32* @CONN_QUIT_SENT, align 4
  %87 = call i32 @SET_CONNECTION_STATE(i32* %85, i32 %86)
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* @CR_SERVER_GONE_ERROR, align 4
  %90 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %91 = load i32, i32* @mysqlnd_server_gone, align 4
  %92 = call i32 @SET_CLIENT_ERROR(i32* %88, i32 %89, i32 %90, i32 %91)
  %93 = load i8*, i8** %20, align 8
  %94 = call i32 (i8*, ...) @DBG_ERR_FMT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  %95 = load i64, i64* @FAIL, align 8
  %96 = call i32 @DBG_RETURN(i64 %95)
  br label %97

97:                                               ; preds = %84, %66
  %98 = load i32*, i32** %15, align 8
  %99 = load i32*, i32** @packet_type_to_statistic_byte_count, align 8
  %100 = load i32, i32* %21, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* @MYSQLND_HEADER_SIZE, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  %109 = load i32*, i32** @packet_type_to_statistic_packet_count, align 8
  %110 = load i32, i32* %21, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @MYSQLND_INC_CONN_STATISTIC_W_VALUE2(i32* %98, i32 %103, i64 %108, i32 %113, i32 1)
  %115 = load i64, i64* @PASS, align 8
  %116 = call i32 @DBG_RETURN(i64 %115)
  %117 = load i32, i32* %11, align 4
  ret i32 %117
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i32*, i64) #1

declare dso_local i64 @mysqlnd_read_header(%struct.TYPE_12__*, i32*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @SET_CONNECTION_STATE(i32*, i32) #1

declare dso_local i32 @SET_CLIENT_ERROR(i32*, i32, i32, i32) #1

declare dso_local i32 @DBG_ERR_FMT(i8*, ...) #1

declare dso_local i32 @DBG_RETURN(i64) #1

declare dso_local i32 @MYSQLND_INC_CONN_STATISTIC_W_VALUE2(i32*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
