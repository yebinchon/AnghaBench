; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_connection_entry_load_re.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_connection_entry_load_re.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection_entry = type { i64, i64, i64, i64 }
%struct.remote_entry = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection_entry*, %struct.remote_entry*)* @connection_entry_load_re to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_entry_load_re(%struct.connection_entry* %0, %struct.remote_entry* %1) #0 {
  %3 = alloca %struct.connection_entry*, align 8
  %4 = alloca %struct.remote_entry*, align 8
  store %struct.connection_entry* %0, %struct.connection_entry** %3, align 8
  store %struct.remote_entry* %1, %struct.remote_entry** %4, align 8
  %5 = load %struct.remote_entry*, %struct.remote_entry** %4, align 8
  %6 = getelementptr inbounds %struct.remote_entry, %struct.remote_entry* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.remote_entry*, %struct.remote_entry** %4, align 8
  %11 = getelementptr inbounds %struct.remote_entry, %struct.remote_entry* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.connection_entry*, %struct.connection_entry** %3, align 8
  %14 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %13, i32 0, i32 3
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.remote_entry*, %struct.remote_entry** %4, align 8
  %17 = getelementptr inbounds %struct.remote_entry, %struct.remote_entry* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.remote_entry*, %struct.remote_entry** %4, align 8
  %22 = getelementptr inbounds %struct.remote_entry, %struct.remote_entry* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.connection_entry*, %struct.connection_entry** %3, align 8
  %25 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.remote_entry*, %struct.remote_entry** %4, align 8
  %28 = getelementptr inbounds %struct.remote_entry, %struct.remote_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.remote_entry*, %struct.remote_entry** %4, align 8
  %33 = getelementptr inbounds %struct.remote_entry, %struct.remote_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.connection_entry*, %struct.connection_entry** %3, align 8
  %36 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.remote_entry*, %struct.remote_entry** %4, align 8
  %39 = getelementptr inbounds %struct.remote_entry, %struct.remote_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.remote_entry*, %struct.remote_entry** %4, align 8
  %44 = getelementptr inbounds %struct.remote_entry, %struct.remote_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.connection_entry*, %struct.connection_entry** %3, align 8
  %47 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
