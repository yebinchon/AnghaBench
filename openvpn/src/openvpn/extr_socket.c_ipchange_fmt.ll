; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_ipchange_fmt.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_ipchange_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv = type { i32 }
%struct.link_socket_info = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.gc_arena = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@PS_SHOW_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.argv*, %struct.link_socket_info*, %struct.gc_arena*)* @ipchange_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipchange_fmt(i32 %0, %struct.argv* %1, %struct.link_socket_info* %2, %struct.gc_arena* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.argv*, align 8
  %7 = alloca %struct.link_socket_info*, align 8
  %8 = alloca %struct.gc_arena*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.argv* %1, %struct.argv** %6, align 8
  store %struct.link_socket_info* %2, %struct.link_socket_info** %7, align 8
  store %struct.gc_arena* %3, %struct.gc_arena** %8, align 8
  %10 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %11 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* @PS_SHOW_PORT, align 4
  %18 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %19 = call i8* @print_sockaddr_ex(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.gc_arena* %18)
  store i8* %19, i8** %9, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.argv*, %struct.argv** %6, align 8
  %24 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %25 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @argv_parse_cmd(%struct.argv* %23, i32 %26)
  %28 = load %struct.argv*, %struct.argv** %6, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @argv_printf_cat(%struct.argv* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %35

31:                                               ; preds = %4
  %32 = load %struct.argv*, %struct.argv** %6, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @argv_printf(%struct.argv* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %22
  ret void
}

declare dso_local i8* @print_sockaddr_ex(i32*, i8*, i32, %struct.gc_arena*) #1

declare dso_local i32 @argv_parse_cmd(%struct.argv*, i32) #1

declare dso_local i32 @argv_printf_cat(%struct.argv*, i8*, i8*) #1

declare dso_local i32 @argv_printf(%struct.argv*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
