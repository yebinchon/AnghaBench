; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_setenv_connection_entry.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_setenv_connection_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.connection_entry = type { i64, i64, %struct.TYPE_2__*, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"local_port\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"remote_port\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"http_proxy_server\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"http_proxy_port\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"socks_proxy_server\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"socks_proxy_port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.env_set*, %struct.connection_entry*, i32)* @setenv_connection_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setenv_connection_entry(%struct.env_set* %0, %struct.connection_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.env_set*, align 8
  %5 = alloca %struct.connection_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.env_set* %0, %struct.env_set** %4, align 8
  store %struct.connection_entry* %1, %struct.connection_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.env_set*, %struct.env_set** %4, align 8
  %8 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %9 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %12 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @proto2ascii(i32 %10, i32 %13, i32 0)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @setenv_str_i(%struct.env_set* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %15)
  %17 = load %struct.env_set*, %struct.env_set** %4, align 8
  %18 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %19 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @setenv_str_i(%struct.env_set* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %20, i32 %21)
  %23 = load %struct.env_set*, %struct.env_set** %4, align 8
  %24 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %25 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @setenv_str_i(%struct.env_set* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %26, i32 %27)
  %29 = load %struct.env_set*, %struct.env_set** %4, align 8
  %30 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %31 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @setenv_str_i(%struct.env_set* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %32, i32 %33)
  %35 = load %struct.env_set*, %struct.env_set** %4, align 8
  %36 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %37 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @setenv_str_i(%struct.env_set* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %38, i32 %39)
  %41 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %42 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %3
  %46 = load %struct.env_set*, %struct.env_set** %4, align 8
  %47 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %48 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @setenv_str_i(%struct.env_set* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %51, i32 %52)
  %54 = load %struct.env_set*, %struct.env_set** %4, align 8
  %55 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %56 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @setenv_str_i(%struct.env_set* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %45, %3
  %63 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %64 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.env_set*, %struct.env_set** %4, align 8
  %69 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %70 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @setenv_str_i(%struct.env_set* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %71, i32 %72)
  %74 = load %struct.env_set*, %struct.env_set** %4, align 8
  %75 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %76 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @setenv_str_i(%struct.env_set* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i64 %77, i32 %78)
  br label %80

80:                                               ; preds = %67, %62
  ret void
}

declare dso_local i32 @setenv_str_i(%struct.env_set*, i8*, i64, i32) #1

declare dso_local i64 @proto2ascii(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
