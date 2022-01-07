; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_dns_insert_header.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_dns_insert_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.mg_dns_message = type { i32, i32, i32, i32 }
%struct.mg_dns_header = type { i8*, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_dns_insert_header(%struct.mbuf* %0, i64 %1, %struct.mg_dns_message* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mg_dns_message*, align 8
  %7 = alloca %struct.mg_dns_header, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mg_dns_message* %2, %struct.mg_dns_message** %6, align 8
  %8 = call i32 @memset(%struct.mg_dns_header* %7, i32 0, i32 32)
  %9 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %10 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.mg_dns_header, %struct.mg_dns_header* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %14 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @htons(i32 %15)
  %17 = getelementptr inbounds %struct.mg_dns_header, %struct.mg_dns_header* %7, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %19 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @htons(i32 %20)
  %22 = getelementptr inbounds %struct.mg_dns_header, %struct.mg_dns_header* %7, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load %struct.mg_dns_message*, %struct.mg_dns_message** %6, align 8
  %24 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htons(i32 %25)
  %27 = getelementptr inbounds %struct.mg_dns_header, %struct.mg_dns_header* %7, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @mbuf_insert(%struct.mbuf* %28, i64 %29, %struct.mg_dns_header* %7, i32 32)
  ret i32 %30
}

declare dso_local i32 @memset(%struct.mg_dns_header*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @mbuf_insert(%struct.mbuf*, i64, %struct.mg_dns_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
