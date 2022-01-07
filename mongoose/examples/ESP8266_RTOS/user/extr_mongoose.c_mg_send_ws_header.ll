; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_ws_header.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_ws_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.ws_mask_ctx = type { i8, i64 }

@WEBSOCKET_DONT_FIN = common dso_local global i32 0, align 4
@FLAGS_MASK_FIN = common dso_local global i32 0, align 4
@FLAGS_MASK_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i64, %struct.ws_mask_ctx*)* @mg_send_ws_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_send_ws_header(%struct.mg_connection* %0, i32 %1, i64 %2, %struct.ws_mask_ctx* %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ws_mask_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [10 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.ws_mask_ctx* %3, %struct.ws_mask_ctx** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @WEBSOCKET_DONT_FIN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @FLAGS_MASK_FIN, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ 0, %17 ], [ %19, %18 ]
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @FLAGS_MASK_OP, align 4
  %24 = and i32 %22, %23
  %25 = or i32 %21, %24
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  store i8 %26, i8* %27, align 1
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %28, 126
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 1
  store i8 %32, i8* %33, align 1
  store i32 2, i32* %9, align 4
  br label %59

34:                                               ; preds = %20
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %35, 65535
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @htons(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 1
  store i8 126, i8* %41, align 1
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 2
  %43 = call i32 @memcpy(i8* %42, i32* %11, i32 4)
  store i32 4, i32* %9, align 4
  br label %58

44:                                               ; preds = %34
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 1
  store i8 127, i8* %45, align 1
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = ashr i32 %47, 32
  %49 = call i32 @htonl(i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 2
  %51 = call i32 @memcpy(i8* %50, i32* %12, i32 4)
  %52 = load i64, i64* %7, align 8
  %53 = and i64 %52, 4294967295
  %54 = trunc i64 %53 to i32
  %55 = call i32 @htonl(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 6
  %57 = call i32 @memcpy(i8* %56, i32* %12, i32 4)
  store i32 10, i32* %9, align 4
  br label %58

58:                                               ; preds = %44, %37
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %61 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, 128
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  %70 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %71 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @mg_send(%struct.mg_connection* %70, i8* %71, i32 %72)
  %74 = call zeroext i8 (...) @mg_ws_random_mask()
  %75 = load %struct.ws_mask_ctx*, %struct.ws_mask_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.ws_mask_ctx, %struct.ws_mask_ctx* %75, i32 0, i32 0
  store i8 %74, i8* %76, align 8
  %77 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %78 = load %struct.ws_mask_ctx*, %struct.ws_mask_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.ws_mask_ctx, %struct.ws_mask_ctx* %78, i32 0, i32 0
  %80 = call i32 @mg_send(%struct.mg_connection* %77, i8* %79, i32 1)
  %81 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %82 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ws_mask_ctx*, %struct.ws_mask_ctx** %8, align 8
  %86 = getelementptr inbounds %struct.ws_mask_ctx, %struct.ws_mask_ctx* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %94

87:                                               ; preds = %59
  %88 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %89 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @mg_send(%struct.mg_connection* %88, i8* %89, i32 %90)
  %92 = load %struct.ws_mask_ctx*, %struct.ws_mask_ctx** %8, align 8
  %93 = getelementptr inbounds %struct.ws_mask_ctx, %struct.ws_mask_ctx* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %87, %64
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i8*, i32) #1

declare dso_local zeroext i8 @mg_ws_random_mask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
