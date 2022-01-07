; ModuleID = '/home/carl/AnghaBench/mongoose/examples/captive_dns_server/extr_captive_dns_server.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/captive_dns_server/extr_captive_dns_server.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_dns_message = type { i32, %struct.mg_dns_resource_record* }
%struct.mg_dns_resource_record = type { i32, i32 }
%struct.mg_dns_reply = type { i32 }
%struct.mbuf = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Q type %d name %s\0A\00", align 1
@MG_DNS_A_RECORD = common dso_local global i32 0, align 4
@s_our_ip_addr = common dso_local global i32 0, align 4
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mg_dns_message*, align 8
  %8 = alloca %struct.mg_dns_resource_record*, align 8
  %9 = alloca %struct.mg_dns_reply, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf, align 4
  %12 = alloca %struct.mg_dns_reply, align 4
  %13 = alloca [256 x i8], align 16
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %72 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = call i32 @mbuf_init(%struct.mbuf* %11, i32 512)
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.mg_dns_message*
  store %struct.mg_dns_message* %18, %struct.mg_dns_message** %7, align 8
  %19 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %20 = call i32 @mg_dns_create_reply(%struct.mbuf* %11, %struct.mg_dns_message* %19)
  %21 = getelementptr inbounds %struct.mg_dns_reply, %struct.mg_dns_reply* %12, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = bitcast %struct.mg_dns_reply* %9 to i8*
  %23 = bitcast %struct.mg_dns_reply* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %60, %15
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %27 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %32 = getelementptr inbounds %struct.mg_dns_message, %struct.mg_dns_message* %31, i32 0, i32 1
  %33 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %33, i64 %35
  store %struct.mg_dns_resource_record* %36, %struct.mg_dns_resource_record** %8, align 8
  %37 = load %struct.mg_dns_message*, %struct.mg_dns_message** %7, align 8
  %38 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %39 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %38, i32 0, i32 1
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %41 = call i32 @mg_dns_uncompress_name(%struct.mg_dns_message* %37, i32* %39, i8* %40, i32 255)
  %42 = load i32, i32* @stdout, align 4
  %43 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %44 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %47 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %46)
  %48 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %49 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MG_DNS_A_RECORD, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %30
  %54 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %55 = load %struct.mg_dns_resource_record*, %struct.mg_dns_resource_record** %8, align 8
  %56 = getelementptr inbounds %struct.mg_dns_resource_record, %struct.mg_dns_resource_record* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mg_dns_reply_record(%struct.mg_dns_reply* %9, %struct.mg_dns_resource_record* %54, i32* null, i32 %57, i32 10, i32* @s_our_ip_addr, i32 4)
  br label %59

59:                                               ; preds = %53, %30
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %24

63:                                               ; preds = %24
  %64 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %65 = call i32 @mg_dns_send_reply(%struct.mg_connection* %64, %struct.mg_dns_reply* %9)
  %66 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %67 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %68 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = call i32 @mbuf_free(%struct.mbuf* %11)
  br label %72

72:                                               ; preds = %3, %63
  ret void
}

declare dso_local i32 @mbuf_init(%struct.mbuf*, i32) #1

declare dso_local i32 @mg_dns_create_reply(%struct.mbuf*, %struct.mg_dns_message*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mg_dns_uncompress_name(%struct.mg_dns_message*, i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @mg_dns_reply_record(%struct.mg_dns_reply*, %struct.mg_dns_resource_record*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @mg_dns_send_reply(%struct.mg_connection*, %struct.mg_dns_reply*) #1

declare dso_local i32 @mbuf_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
