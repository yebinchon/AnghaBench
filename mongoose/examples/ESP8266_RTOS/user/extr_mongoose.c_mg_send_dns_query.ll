; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_dns_query.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_dns_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_dns_message = type { i32, i32, i64, %struct.mg_dns_resource_record* }
%struct.mg_dns_resource_record = type { i32, i32, i32 }
%struct.mbuf = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@mg_dns_tid = common dso_local global i64 0, align 8
@MG_DNS_QUESTION = common dso_local global i32 0, align 4
@MG_F_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_send_dns_query(%struct.mg_connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mg_dns_message*, align 8
  %8 = alloca %struct.mbuf, align 8
  %9 = alloca %struct.mg_dns_resource_record*, align 8
  %10 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i64 @MG_CALLOC(i32 1, i32 24)
  %12 = inttoptr i64 %11 to %struct.mg_dns_message*
  store %struct.mg_dns_message* %12, %struct.mg_dns_message** %7, align 8
  %13 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %14 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %13, i32 0, i32 3
  %15 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %14, align 8
  %16 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %15, i64 0
  store %struct.mg_dns_resource_record* %16, %struct.mg_dns_resource_record** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @DBG(i8* %20)
  %22 = call i32 @mbuf_init(%struct.mbuf* %8, i32 64)
  %23 = load i64, i64* @mg_dns_tid, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @mg_dns_tid, align 8
  %25 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %26 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %28 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %27, i32 0, i32 0
  store i32 256, i32* %28, align 8
  %29 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %30 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %32 = call i32 @mg_dns_insert_header(%struct.mbuf* %8, i32 0, %struct.mg_dns_message* %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %9, align 8
  %35 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %9, align 8
  %37 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @MG_DNS_QUESTION, align 4
  %39 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %9, align 8
  %40 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %9, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 @mg_dns_encode_record(%struct.mbuf* %8, %struct.mg_dns_resource_record* %41, i8* %42, i32 %44, i32* null, i32 0)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %69

48:                                               ; preds = %3
  %49 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %50 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MG_F_UDP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @htons(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = call i32 @mbuf_insert(%struct.mbuf* %8, i32 0, i32* %10, i32 2)
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @mg_send(%struct.mg_connection* %62, i32 %64, i64 %66)
  %68 = call i32 @mbuf_free(%struct.mbuf* %8)
  br label %69

69:                                               ; preds = %61, %47
  %70 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %71 = call i32 @MG_FREE(%struct.mg_dns_message* %70)
  ret void
}

declare dso_local i64 @MG_CALLOC(i32, i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @mbuf_init(%struct.mbuf*, i32) #1

declare dso_local i32 @mg_dns_insert_header(%struct.mbuf*, i32, %struct.mg_dns_message*) #1

declare dso_local i32 @mg_dns_encode_record(%struct.mbuf*, %struct.mg_dns_resource_record*, i8*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @mbuf_insert(%struct.mbuf*, i32, i32*, i32) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i32, i64) #1

declare dso_local i32 @mbuf_free(%struct.mbuf*) #1

declare dso_local i32 @MG_FREE(%struct.mg_dns_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
