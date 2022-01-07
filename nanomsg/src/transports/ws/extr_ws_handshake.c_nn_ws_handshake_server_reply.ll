; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_handshake_server_reply.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ws/extr_ws_handshake.c_nn_ws_handshake_server_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ws_handshake = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nn_iovec = type { i32, i8** }

@NN_WS_HANDSHAKE_ACCEPT_KEY_LEN = common dso_local global i32 0, align 4
@NN_WS_HANDSHAKE_RESPONSE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"WebSocket protocol\00", align 1
@.str.1 = private unnamed_addr constant [132 x i8] c"HTTP/1.1 101 Switching Protocols\0D\0AUpgrade: websocket\0D\0AConnection: Upgrade\0D\0ASec-WebSocket-Accept: %s\0D\0ASec-WebSocket-Protocol: %s\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"400 Opening Handshake Too Long\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"400 Cannot Have Body\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"400 Unsupported WebSocket Version\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"400 Missing nanomsg Required Headers\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"400 Incompatible Socket Type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"400 Unrecognized Socket Type\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"WebSocket version\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"HTTP/1.1 %s\0D\0ASec-WebSocket-Version: %s\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_ws_handshake*)* @nn_ws_handshake_server_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_ws_handshake_server_reply(%struct.nn_ws_handshake* %0) #0 {
  %2 = alloca %struct.nn_ws_handshake*, align 8
  %3 = alloca %struct.nn_iovec, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.nn_ws_handshake* %0, %struct.nn_ws_handshake** %2, align 8
  %10 = load i32, i32* @NN_WS_HANDSHAKE_ACCEPT_KEY_LEN, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %16 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @memset(i8* %17, i32 0, i32 8)
  %19 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %20 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NN_WS_HANDSHAKE_RESPONSE_OK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %1
  %25 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %26 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %29 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = trunc i64 %12 to i32
  %32 = call i32 @nn_ws_handshake_hash_key(i32 %27, i32 %30, i8* %14, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @nn_assert(i32 %35)
  %37 = call i32 @strlen(i8* %14)
  %38 = load i32, i32* @NN_WS_HANDSHAKE_ACCEPT_KEY_LEN, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @nn_assert(i32 %40)
  %42 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %43 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i8* @nn_alloc(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @alloc_assert(i8* %47)
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %51 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %54 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strncpy(i8* %49, i32 %52, i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %59 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %64 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @sprintf(i8* %65, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.1, i64 0, i64 0), i8* %14, i8* %66)
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @nn_free(i8* %68)
  br label %112

70:                                               ; preds = %1
  %71 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %72 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %80 [
    i32 131, label %74
    i32 129, label %75
    i32 128, label %76
    i32 133, label %77
    i32 132, label %78
    i32 130, label %79
  ]

74:                                               ; preds = %70
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %82

75:                                               ; preds = %70
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %82

76:                                               ; preds = %70
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %82

77:                                               ; preds = %70
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %82

78:                                               ; preds = %70
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %82

79:                                               ; preds = %70
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %82

80:                                               ; preds = %70
  %81 = call i32 @nn_assert(i32 0)
  br label %82

82:                                               ; preds = %80, %79, %78, %77, %76, %75, %74
  %83 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %84 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  %87 = call i8* @nn_alloc(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @alloc_assert(i8* %88)
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %92 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %95 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @strncpy(i8* %90, i32 %93, i32 %96)
  %98 = load i8*, i8** %5, align 8
  %99 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %100 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %105 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @sprintf(i8* %106, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %107, i8* %108)
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @nn_free(i8* %110)
  br label %112

112:                                              ; preds = %82, %24
  %113 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %114 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %3, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %119 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %3, i32 0, i32 1
  store i8** %119, i8*** %120, align 8
  %121 = load %struct.nn_ws_handshake*, %struct.nn_ws_handshake** %2, align 8
  %122 = getelementptr inbounds %struct.nn_ws_handshake, %struct.nn_ws_handshake* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @nn_usock_send(i32 %123, %struct.nn_iovec* %3, i32 1)
  %125 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %125)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @nn_ws_handshake_hash_key(i32, i32, i8*, i32) #2

declare dso_local i32 @nn_assert(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @nn_alloc(i32, i8*) #2

declare dso_local i32 @alloc_assert(i8*) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @nn_free(i8*) #2

declare dso_local i32 @nn_usock_send(i32, %struct.nn_iovec*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
