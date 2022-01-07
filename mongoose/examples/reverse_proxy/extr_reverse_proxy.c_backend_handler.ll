; ModuleID = '/home/carl/AnghaBench/mongoose/examples/reverse_proxy/extr_reverse_proxy.c_backend_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/reverse_proxy/extr_reverse_proxy.c_backend_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { %struct.mg_str*, %struct.mg_str*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.mg_str = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [45 x i8] c"Content-Type: text/html\0D\0AConnection: close\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"{\22uri\22: \22%.*s\22, \22method\22: \22%.*s\22, \22body\22: \22%.*s\22, \22headers\22: {\00", align 1
@MG_MAX_HTTP_HEADERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"%s\22%.*s\22: \22%.*s\22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}}\00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @backend_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backend_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mg_str, align 8
  %10 = alloca %struct.mg_str, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.http_message*
  store %struct.http_message* %12, %struct.http_message** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %106 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  %15 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %16 = call i32 @mg_send_response_line(%struct.mg_connection* %15, i32 200, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %18 = load %struct.http_message*, %struct.http_message** %7, align 8
  %19 = getelementptr inbounds %struct.http_message, %struct.http_message* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.http_message*, %struct.http_message** %7, align 8
  %24 = getelementptr inbounds %struct.http_message, %struct.http_message* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.http_message*, %struct.http_message** %7, align 8
  %28 = getelementptr inbounds %struct.http_message, %struct.http_message* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.http_message*, %struct.http_message** %7, align 8
  %33 = getelementptr inbounds %struct.http_message, %struct.http_message* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.http_message*, %struct.http_message** %7, align 8
  %37 = getelementptr inbounds %struct.http_message, %struct.http_message* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.http_message*, %struct.http_message** %7, align 8
  %42 = getelementptr inbounds %struct.http_message, %struct.http_message* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %17, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %26, i32 %31, i32 %35, i32 %40, i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %95, %14
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MG_MAX_HTTP_HEADERS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.http_message*, %struct.http_message** %7, align 8
  %52 = getelementptr inbounds %struct.http_message, %struct.http_message* %51, i32 0, i32 1
  %53 = load %struct.mg_str*, %struct.mg_str** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %53, i64 %55
  %57 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br label %60

60:                                               ; preds = %50, %46
  %61 = phi i1 [ false, %46 ], [ %59, %50 ]
  br i1 %61, label %62, label %98

62:                                               ; preds = %60
  %63 = load %struct.http_message*, %struct.http_message** %7, align 8
  %64 = getelementptr inbounds %struct.http_message, %struct.http_message* %63, i32 0, i32 1
  %65 = load %struct.mg_str*, %struct.mg_str** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %65, i64 %67
  %69 = bitcast %struct.mg_str* %9 to i8*
  %70 = bitcast %struct.mg_str* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = load %struct.http_message*, %struct.http_message** %7, align 8
  %72 = getelementptr inbounds %struct.http_message, %struct.http_message* %71, i32 0, i32 0
  %73 = load %struct.mg_str*, %struct.mg_str** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %73, i64 %75
  %77 = bitcast %struct.mg_str* %10 to i8*
  %78 = bitcast %struct.mg_str* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  %79 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %84 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %9, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %10, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %83, i32 %86, i32 %88, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %62
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %46

98:                                               ; preds = %60
  %99 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %100 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %102 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %103 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %107

106:                                              ; preds = %3
  br label %107

107:                                              ; preds = %106, %98
  ret void
}

declare dso_local i32 @mg_send_response_line(%struct.mg_connection*, i32, i8*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
