; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_bin_list_sasl_mechs.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_bin_list_sasl_mechs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }

@settings = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@SASL_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to list SASL mechanisms.\0A\00", align 1
@PROTOCOL_BINARY_RESPONSE_AUTH_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @bin_list_sasl_mechs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bin_list_sasl_mechs(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @settings, i32 0, i32 1), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %15, %20
  %22 = call i32 @write_bin_error(%struct.TYPE_11__* %9, i32 %10, i32* null, i64 %21)
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = call i32 @init_sasl_conn(%struct.TYPE_11__* %24)
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sasl_listmech(i32 %28, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, i32* %4, i32* null)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SASL_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @settings, i32 0, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_AUTH_ERROR, align 4
  %42 = call i32 @write_bin_error(%struct.TYPE_11__* %40, i32 %41, i32* null, i64 0)
  br label %48

43:                                               ; preds = %23
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @write_bin_response(%struct.TYPE_11__* %44, i8* %45, i32 0, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %43, %39, %8
  ret void
}

declare dso_local i32 @write_bin_error(%struct.TYPE_11__*, i32, i32*, i64) #1

declare dso_local i32 @init_sasl_conn(%struct.TYPE_11__*) #1

declare dso_local i32 @sasl_listmech(i32, i32*, i8*, i8*, i8*, i8**, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @write_bin_response(%struct.TYPE_11__*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
