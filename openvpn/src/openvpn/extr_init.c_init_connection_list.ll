; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_init_connection_list.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_init_connection_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.connection_list* }
%struct.connection_list = type { i32, i32, %struct.connection_entry** }
%struct.connection_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @init_connection_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_connection_list(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.connection_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection_entry*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %7 = load %struct.context*, %struct.context** %2, align 8
  %8 = getelementptr inbounds %struct.context, %struct.context* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.connection_list*, %struct.connection_list** %9, align 8
  store %struct.connection_list* %10, %struct.connection_list** %3, align 8
  %11 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %12 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load %struct.context*, %struct.context** %2, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %63, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %22 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %19
  %26 = call i32 (...) @get_random()
  %27 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %28 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %26, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %25
  %35 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %36 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %35, i32 0, i32 2
  %37 = load %struct.connection_entry**, %struct.connection_entry*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.connection_entry*, %struct.connection_entry** %37, i64 %39
  %41 = load %struct.connection_entry*, %struct.connection_entry** %40, align 8
  store %struct.connection_entry* %41, %struct.connection_entry** %6, align 8
  %42 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %43 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %42, i32 0, i32 2
  %44 = load %struct.connection_entry**, %struct.connection_entry*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.connection_entry*, %struct.connection_entry** %44, i64 %46
  %48 = load %struct.connection_entry*, %struct.connection_entry** %47, align 8
  %49 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %50 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %49, i32 0, i32 2
  %51 = load %struct.connection_entry**, %struct.connection_entry*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.connection_entry*, %struct.connection_entry** %51, i64 %53
  store %struct.connection_entry* %48, %struct.connection_entry** %54, align 8
  %55 = load %struct.connection_entry*, %struct.connection_entry** %6, align 8
  %56 = load %struct.connection_list*, %struct.connection_list** %3, align 8
  %57 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %56, i32 0, i32 2
  %58 = load %struct.connection_entry**, %struct.connection_entry*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.connection_entry*, %struct.connection_entry** %58, i64 %60
  store %struct.connection_entry* %55, %struct.connection_entry** %61, align 8
  br label %62

62:                                               ; preds = %34, %25
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %19

66:                                               ; preds = %19
  br label %67

67:                                               ; preds = %66, %1
  ret void
}

declare dso_local i32 @get_random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
