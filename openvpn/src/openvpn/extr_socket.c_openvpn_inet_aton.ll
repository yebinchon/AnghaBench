; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_openvpn_inet_aton.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_openvpn_inet_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@OIA_IP = common dso_local global i32 0, align 4
@CC_DIGIT = common dso_local global i32 0, align 4
@CC_DOT = common dso_local global i32 0, align 4
@OIA_ERROR = common dso_local global i32 0, align 4
@OIA_HOSTNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openvpn_inet_aton(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %10 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CLEAR(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9)
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %18, 256
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %21, 256
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %24, 256
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp ult i32 %27, 256
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 24
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %31, %33
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %34, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @htonl(i32 %39)
  %41 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %42 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @OIA_IP, align 4
  store i32 %43, i32* %3, align 4
  br label %56

44:                                               ; preds = %26, %23, %20, %17
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* @CC_DIGIT, align 4
  %48 = load i32, i32* @CC_DOT, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @string_class(i8* %46, i32 %49, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @OIA_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @OIA_HOSTNAME, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %52, %29
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @string_class(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
