; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_tun_stat.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_tun_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap = type { i32, i32, i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@EVENT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"T%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EVENT_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"T?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tun_stat(%struct.tuntap* %0, i32 %1, %struct.gc_arena* %2) #0 {
  %4 = alloca %struct.tuntap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gc_arena*, align 8
  %7 = alloca %struct.buffer, align 4
  store %struct.tuntap* %0, %struct.tuntap** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.gc_arena* %2, %struct.gc_arena** %6, align 8
  %8 = load %struct.gc_arena*, %struct.gc_arena** %6, align 8
  %9 = call i32 @alloc_buf_gc(i32 64, %struct.gc_arena* %8)
  %10 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.tuntap*, %struct.tuntap** %4, align 8
  %12 = icmp ne %struct.tuntap* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @EVENT_READ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.tuntap*, %struct.tuntap** %4, align 8
  %20 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EVENT_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %18, %13
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EVENT_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.tuntap*, %struct.tuntap** %4, align 8
  %35 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EVENT_WRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %42 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %33, %28
  br label %46

44:                                               ; preds = %3
  %45 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %43
  %47 = call i8* @BSTR(%struct.buffer* %7)
  ret i8* %47
}

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
