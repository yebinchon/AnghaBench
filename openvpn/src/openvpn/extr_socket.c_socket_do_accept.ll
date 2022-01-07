; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_do_accept.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_do_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket_actual = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SOCKET_UNDEFINED = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"TCP: this OS does not provide the getpeername() function\00", align 1
@D_LINK_ERRORS = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"TCP: accept(%d) failed\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"TCP: Received strange incoming connection with unknown address length=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_do_accept(i32 %0, %struct.link_socket_actual* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.link_socket_actual*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.link_socket_actual* %1, %struct.link_socket_actual** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.link_socket_actual*, %struct.link_socket_actual** %5, align 8
  %11 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @af_addr_size(i32 %15)
  store i32 %16, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %17 = load i32, i32* @SOCKET_UNDEFINED, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.link_socket_actual*, %struct.link_socket_actual** %5, align 8
  %19 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CLEAR(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @M_WARN, align 4
  %29 = call i32 (i32, i8*, ...) @msg(i32 %28, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %37

30:                                               ; preds = %3
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.link_socket_actual*, %struct.link_socket_actual** %5, align 8
  %33 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @accept(i32 %31, %struct.TYPE_7__* %35, i32* %8)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @socket_defined(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @D_LINK_ERRORS, align 4
  %43 = load i32, i32* @M_ERRNO, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i8*, ...) @msg(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %65

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* @D_LINK_ERRORS, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i32, i8*, ...) @msg(i32 %55, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @openvpn_close_socket(i32 %58)
  %60 = load i32, i32* @SOCKET_UNDEFINED, align 4
  store i32 %60, i32* %9, align 4
  br label %64

61:                                               ; preds = %50, %47
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @set_cloexec(i32 %62)
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i32 @af_addr_size(i32) #1

declare dso_local i32 @CLEAR(i32) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @accept(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @socket_defined(i32) #1

declare dso_local i32 @openvpn_close_socket(i32) #1

declare dso_local i32 @set_cloexec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
