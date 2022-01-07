; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_establish_socks_proxy_passthru.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_establish_socks_proxy_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socks_proxy_info = type { i32 }

@D_LINK_ERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"establish_socks_proxy_passthrough: Cannot convert %s to port number\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"establish_socks_proxy_passthru: TCP port write failed on send()\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @establish_socks_proxy_passthru(%struct.socks_proxy_info* %0, i32 %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.socks_proxy_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.socks_proxy_info* %0, %struct.socks_proxy_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.socks_proxy_info*, %struct.socks_proxy_info** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @socks_handshake(%struct.socks_proxy_info* %15, i32 %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %94

21:                                               ; preds = %5
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  store i8 5, i8* %22, align 16
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 1
  store i8 1, i8* %23, align 1
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 2
  store i8 0, i8* %24, align 2
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 3
  store i8 3, i8* %25, align 1
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = add i64 5, %28
  %30 = add i64 %29, 2
  %31 = icmp ugt i64 %30, 128
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %35

33:                                               ; preds = %21
  %34 = load i64, i64* %12, align 8
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i64 [ 121, %32 ], [ %34, %33 ]
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 4
  store i8 %38, i8* %39, align 4
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %41 = getelementptr inbounds i8, i8* %40, i64 5
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @port_from_servname(i8* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* @D_LINK_ERRORS, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 (i32, i8*, ...) @msg(i32 %50, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %94

53:                                               ; preds = %35
  %54 = load i32, i32* %13, align 4
  %55 = ashr i32 %54, 8
  %56 = trunc i32 %55 to i8
  %57 = load i64, i64* %12, align 8
  %58 = add i64 5, %57
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 %58
  store i8 %56, i8* %59, align 1
  %60 = load i32, i32* %13, align 4
  %61 = and i32 %60, 255
  %62 = trunc i32 %61 to i8
  %63 = load i64, i64* %12, align 8
  %64 = add i64 5, %63
  %65 = add i64 %64, 1
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 %65
  store i8 %62, i8* %66, align 1
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %69 = load i64, i64* %12, align 8
  %70 = add i64 5, %69
  %71 = add i64 %70, 2
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @MSG_NOSIGNAL, align 4
  %74 = call i64 @send(i32 %67, i8* %68, i32 %72, i32 %73)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %12, align 8
  %78 = trunc i64 %77 to i32
  %79 = add nsw i32 5, %78
  %80 = add nsw i32 %79, 2
  %81 = icmp ne i32 %76, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %53
  %83 = load i32, i32* @D_LINK_ERRORS, align 4
  %84 = load i32, i32* @M_ERRNO, align 4
  %85 = or i32 %83, %84
  %86 = call i32 (i32, i8*, ...) @msg(i32 %85, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %94

87:                                               ; preds = %53
  %88 = load i32, i32* %7, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @recv_socks_reply(i32 %88, i32* null, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %94

93:                                               ; preds = %87
  br label %102

94:                                               ; preds = %92, %82, %49, %20
  %95 = load i32*, i32** %10, align 8
  %96 = load volatile i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @SIGUSR1, align 4
  %100 = load i32*, i32** %10, align 8
  store volatile i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %94
  br label %102

102:                                              ; preds = %101, %93
  ret void
}

declare dso_local i32 @socks_handshake(%struct.socks_proxy_info*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @port_from_servname(i8*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i64 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @recv_socks_reply(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
