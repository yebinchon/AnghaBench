; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_send_websocket_handshake.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_send_websocket_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i32 }
%struct.mg_connection = type { i32 }

@MG_NULL_STR = common dso_local global %struct.mg_str zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_send_websocket_handshake(%struct.mg_connection* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mg_str, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = bitcast %struct.mg_str* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.mg_str* @MG_NULL_STR to i8*), i64 4, i1 false)
  %9 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @mg_mk_str(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @mg_mk_str(i8* %12)
  %14 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mg_send_websocket_handshake3v(%struct.mg_connection* %9, i32 %11, i32 %15, i32 %17, i32 %13, i32 %19, i32 %21)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mg_send_websocket_handshake3v(%struct.mg_connection*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mg_mk_str(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
