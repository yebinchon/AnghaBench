; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_get_endpoint_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_get_endpoint_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_http_endpoint = type { %struct.mg_http_endpoint*, i32 }
%struct.mg_connection = type { i32 }
%struct.mg_str = type { i32 }
%struct.mg_http_proto_data = type { %struct.mg_http_endpoint* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mg_http_endpoint* @mg_http_get_endpoint_handler(%struct.mg_connection* %0, %struct.mg_str* %1) #0 {
  %3 = alloca %struct.mg_http_endpoint*, align 8
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca %struct.mg_str*, align 8
  %6 = alloca %struct.mg_http_proto_data*, align 8
  %7 = alloca %struct.mg_http_endpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mg_http_endpoint*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store %struct.mg_str* %1, %struct.mg_str** %5, align 8
  store %struct.mg_http_endpoint* null, %struct.mg_http_endpoint** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = icmp eq %struct.mg_connection* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.mg_http_endpoint* null, %struct.mg_http_endpoint** %3, align 8
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %16 = call %struct.mg_http_proto_data* @mg_http_get_proto_data(%struct.mg_connection* %15)
  store %struct.mg_http_proto_data* %16, %struct.mg_http_proto_data** %6, align 8
  %17 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %6, align 8
  %18 = icmp eq %struct.mg_http_proto_data* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.mg_http_endpoint* null, %struct.mg_http_endpoint** %3, align 8
  br label %50

20:                                               ; preds = %14
  %21 = load %struct.mg_http_proto_data*, %struct.mg_http_proto_data** %6, align 8
  %22 = getelementptr inbounds %struct.mg_http_proto_data, %struct.mg_http_proto_data* %21, i32 0, i32 0
  %23 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %22, align 8
  store %struct.mg_http_endpoint* %23, %struct.mg_http_endpoint** %10, align 8
  br label %24

24:                                               ; preds = %44, %20
  %25 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %10, align 8
  %26 = icmp ne %struct.mg_http_endpoint* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %10, align 8
  %29 = getelementptr inbounds %struct.mg_http_endpoint, %struct.mg_http_endpoint* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mg_str*, %struct.mg_str** %5, align 8
  %32 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mg_match_prefix_n(i32 %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %10, align 8
  store %struct.mg_http_endpoint* %41, %struct.mg_http_endpoint** %7, align 8
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %10, align 8
  %46 = getelementptr inbounds %struct.mg_http_endpoint, %struct.mg_http_endpoint* %45, i32 0, i32 0
  %47 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %46, align 8
  store %struct.mg_http_endpoint* %47, %struct.mg_http_endpoint** %10, align 8
  br label %24

48:                                               ; preds = %24
  %49 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %7, align 8
  store %struct.mg_http_endpoint* %49, %struct.mg_http_endpoint** %3, align 8
  br label %50

50:                                               ; preds = %48, %19, %13
  %51 = load %struct.mg_http_endpoint*, %struct.mg_http_endpoint** %3, align 8
  ret %struct.mg_http_endpoint* %51
}

declare dso_local %struct.mg_http_proto_data* @mg_http_get_proto_data(%struct.mg_connection*) #1

declare dso_local i32 @mg_match_prefix_n(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
