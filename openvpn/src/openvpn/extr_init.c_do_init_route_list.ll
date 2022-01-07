; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_route_list.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_route_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i64, i8*, i8*, i32, i32, i32, i32 }
%struct.route_list = type { i32 }
%struct.link_socket_info = type { i32 }
%struct.env_set = type { i32 }

@DEV_TYPE_TUN = common dso_local global i32 0, align 4
@TOP_NET30 = common dso_local global i64 0, align 8
@TOP_P2P = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*, %struct.route_list*, %struct.link_socket_info*, %struct.env_set*, i32*)* @do_init_route_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_init_route_list(%struct.options* %0, %struct.route_list* %1, %struct.link_socket_info* %2, %struct.env_set* %3, i32* %4) #0 {
  %6 = alloca %struct.options*, align 8
  %7 = alloca %struct.route_list*, align 8
  %8 = alloca %struct.link_socket_info*, align 8
  %9 = alloca %struct.env_set*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.options* %0, %struct.options** %6, align 8
  store %struct.route_list* %1, %struct.route_list** %7, align 8
  store %struct.link_socket_info* %2, %struct.link_socket_info** %8, align 8
  store %struct.env_set* %3, %struct.env_set** %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %11, align 8
  %14 = load %struct.options*, %struct.options** %6, align 8
  %15 = getelementptr inbounds %struct.options, %struct.options* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.options*, %struct.options** %6, align 8
  %18 = getelementptr inbounds %struct.options, %struct.options* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_type_enum(i32 %16, i32 %19)
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @DEV_TYPE_TUN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %5
  %25 = load %struct.options*, %struct.options** %6, align 8
  %26 = getelementptr inbounds %struct.options, %struct.options* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TOP_NET30, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.options*, %struct.options** %6, align 8
  %32 = getelementptr inbounds %struct.options, %struct.options* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TOP_P2P, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %24
  %37 = load %struct.options*, %struct.options** %6, align 8
  %38 = getelementptr inbounds %struct.options, %struct.options* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %36, %30, %5
  %41 = load %struct.options*, %struct.options** %6, align 8
  %42 = getelementptr inbounds %struct.options, %struct.options* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.options*, %struct.options** %6, align 8
  %47 = getelementptr inbounds %struct.options, %struct.options* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %11, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.options*, %struct.options** %6, align 8
  %51 = getelementptr inbounds %struct.options, %struct.options* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.options*, %struct.options** %6, align 8
  %56 = getelementptr inbounds %struct.options, %struct.options* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.route_list*, %struct.route_list** %7, align 8
  %60 = load %struct.options*, %struct.options** %6, align 8
  %61 = getelementptr inbounds %struct.options, %struct.options* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.link_socket_info*, %struct.link_socket_info** %8, align 8
  %66 = call i32 @link_socket_current_remote(%struct.link_socket_info* %65)
  %67 = load %struct.env_set*, %struct.env_set** %9, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i64 @init_route_list(%struct.route_list* %59, i32 %62, i8* %63, i32 %64, i32 %66, %struct.env_set* %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %58
  %72 = load %struct.env_set*, %struct.env_set** %9, align 8
  %73 = load %struct.route_list*, %struct.route_list** %7, align 8
  %74 = call i32 @setenv_routes(%struct.env_set* %72, %struct.route_list* %73)
  br label %75

75:                                               ; preds = %71, %58
  ret void
}

declare dso_local i32 @dev_type_enum(i32, i32) #1

declare dso_local i64 @init_route_list(%struct.route_list*, i32, i8*, i32, i32, %struct.env_set*, i32*) #1

declare dso_local i32 @link_socket_current_remote(%struct.link_socket_info*) #1

declare dso_local i32 @setenv_routes(%struct.env_set*, %struct.route_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
