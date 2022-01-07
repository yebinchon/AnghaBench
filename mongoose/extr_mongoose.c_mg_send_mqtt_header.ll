; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_send_mqtt_header.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_send_mqtt_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64 }
%struct.mg_mqtt_proto_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i32, i64)* @mg_send_mqtt_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_send_mqtt_header(%struct.mg_connection* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.mg_mqtt_proto_data*, align 8
  %10 = alloca [9 x i32], align 16
  %11 = alloca i32*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %13 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.mg_mqtt_proto_data*
  store %struct.mg_mqtt_proto_data* %15, %struct.mg_mqtt_proto_data** %9, align 8
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 1
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  br label %22

22:                                               ; preds = %38, %4
  %23 = load i64, i64* %8, align 8
  %24 = urem i64 %23, 128
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** %11, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i64, i64* %8, align 8
  %28 = udiv i64 %27, 128
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, 128
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %31, %22
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %11, align 8
  br label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %22, label %41

41:                                               ; preds = %38
  %42 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %46 = ptrtoint i32* %44 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @mg_send(%struct.mg_connection* %42, i32* %43, i32 %50)
  %52 = call i32 (...) @mg_time()
  %53 = load %struct.mg_mqtt_proto_data*, %struct.mg_mqtt_proto_data** %9, align 8
  %54 = getelementptr inbounds %struct.mg_mqtt_proto_data, %struct.mg_mqtt_proto_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  ret void
}

declare dso_local i32 @mg_send(%struct.mg_connection*, i32*, i32) #1

declare dso_local i32 @mg_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
