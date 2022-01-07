; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_free_proto_data_file.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_free_proto_data_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_http_proto_data_file = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_http_proto_data_file*)* @mg_http_free_proto_data_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_http_free_proto_data_file(%struct.mg_http_proto_data_file* %0) #0 {
  %2 = alloca %struct.mg_http_proto_data_file*, align 8
  store %struct.mg_http_proto_data_file* %0, %struct.mg_http_proto_data_file** %2, align 8
  %3 = load %struct.mg_http_proto_data_file*, %struct.mg_http_proto_data_file** %2, align 8
  %4 = icmp ne %struct.mg_http_proto_data_file* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.mg_http_proto_data_file*, %struct.mg_http_proto_data_file** %2, align 8
  %7 = getelementptr inbounds %struct.mg_http_proto_data_file, %struct.mg_http_proto_data_file* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.mg_http_proto_data_file*, %struct.mg_http_proto_data_file** %2, align 8
  %12 = getelementptr inbounds %struct.mg_http_proto_data_file, %struct.mg_http_proto_data_file* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @fclose(i32* %13)
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.mg_http_proto_data_file*, %struct.mg_http_proto_data_file** %2, align 8
  %17 = call i32 @memset(%struct.mg_http_proto_data_file* %16, i32 0, i32 8)
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memset(%struct.mg_http_proto_data_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
