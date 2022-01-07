; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_default_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_default_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.http_message = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@MG_EV_HTTP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"HTTP/1.0 200 OK\0D\0A\0D\0A[%.*s%s%.*s %d]\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@MG_EV_CLOSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"%p == default close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @default_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.http_message*
  store %struct.http_message* %9, %struct.http_message** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MG_EV_HTTP_REQUEST, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %63

14:                                               ; preds = %3
  %15 = load %struct.http_message*, %struct.http_message** %7, align 8
  %16 = getelementptr inbounds %struct.http_message, %struct.http_message* %15, i32 0, i32 2
  %17 = call i64 @mg_vcmp(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.http_message*, %struct.http_message** %7, align 8
  %21 = getelementptr inbounds %struct.http_message, %struct.http_message* %20, i32 0, i32 2
  %22 = call i64 @mg_vcmp(%struct.TYPE_8__* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %19, %14
  %25 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %26 = load %struct.http_message*, %struct.http_message** %7, align 8
  %27 = getelementptr inbounds %struct.http_message, %struct.http_message* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.http_message*, %struct.http_message** %7, align 8
  %32 = getelementptr inbounds %struct.http_message, %struct.http_message* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.http_message*, %struct.http_message** %7, align 8
  %36 = getelementptr inbounds %struct.http_message, %struct.http_message* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %42 = load %struct.http_message*, %struct.http_message** %7, align 8
  %43 = getelementptr inbounds %struct.http_message, %struct.http_message* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.http_message*, %struct.http_message** %7, align 8
  %48 = getelementptr inbounds %struct.http_message, %struct.http_message* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.http_message*, %struct.http_message** %7, align 8
  %52 = getelementptr inbounds %struct.http_message, %struct.http_message* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @mg_printf(%struct.mg_connection* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %34, i8* %41, i32 %46, i32 %50, i32 %55)
  %57 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %58 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %59 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %24, %19
  br label %86

63:                                               ; preds = %3
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @MG_EV_CLOSE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %69 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = icmp ne %struct.TYPE_7__* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %74 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %82 = bitcast %struct.mg_connection* %81 to i8*
  %83 = call i32 @DBG(i8* %82)
  br label %84

84:                                               ; preds = %72, %67
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85, %62
  ret void
}

declare dso_local i64 @mg_vcmp(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
