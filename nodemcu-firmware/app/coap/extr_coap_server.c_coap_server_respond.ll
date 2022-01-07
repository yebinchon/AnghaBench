; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_server.c_coap_server_respond.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap_server.c_coap_server_respond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"coap_server_respond is called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad packet rc=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"coap_build failed rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coap_server_respond(i8* %0, i16 zeroext %1, i8* %2, i16 zeroext %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__, align 8
  store i8* %0, i8** %6, align 8
  store i16 %1, i16* %7, align 2
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  %16 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i16, i16* %9, align 2
  %18 = zext i16 %17 to i64
  store i64 %18, i64* %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %25 = ptrtoint i32* %24 to i32
  store i32 %25, i32* %23, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i32* inttoptr (i64 16 to i32*), i32** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i16, i16* %7, align 2
  %29 = call i32 @coap_parse(%struct.TYPE_12__* %11, i8* %27, i16 zeroext %28)
  store i32 %29, i32* %14, align 4
  %30 = icmp ne i32 0, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i64 0, i64* %5, align 8
  br label %63

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = call i32 @coap_handle_req(%struct.TYPE_11__* %13, %struct.TYPE_12__* %11, %struct.TYPE_12__* %15)
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @coap_build(i8* %40, i64* %10, %struct.TYPE_12__* %15)
  store i32 %41, i32* %14, align 4
  %42 = icmp ne i32 0, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %14, align 4
  %45 = call i32 (i8*, ...) @NODE_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i64 0, i64* %10, align 8
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %43
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @free(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %52, %47
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %61, %31
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i32 @NODE_DBG(i8*, ...) #1

declare dso_local i32 @coap_parse(%struct.TYPE_12__*, i8*, i16 zeroext) #1

declare dso_local i32 @coap_handle_req(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @coap_build(i8*, i64*, %struct.TYPE_12__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
