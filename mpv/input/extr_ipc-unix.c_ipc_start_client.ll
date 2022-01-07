; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_ipc-unix.c_ipc_start_client.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_ipc-unix.c_ipc_start_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ipc_ctx = type { i32 }
%struct.client_arg = type { i32, i64, i64, i32, i32 }

@client_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_ipc_ctx*, %struct.client_arg*)* @ipc_start_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_start_client(%struct.mp_ipc_ctx* %0, %struct.client_arg* %1) #0 {
  %3 = alloca %struct.mp_ipc_ctx*, align 8
  %4 = alloca %struct.client_arg*, align 8
  %5 = alloca i32, align 4
  store %struct.mp_ipc_ctx* %0, %struct.mp_ipc_ctx** %3, align 8
  store %struct.client_arg* %1, %struct.client_arg** %4, align 8
  %6 = load %struct.mp_ipc_ctx*, %struct.mp_ipc_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.mp_ipc_ctx, %struct.mp_ipc_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %10 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @mp_new_client(i32 %8, i32 %11)
  %13 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %14 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %16 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %22 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @mp_client_get_log(i64 %23)
  %25 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %26 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @client_thread, align 4
  %28 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %29 = call i64 @pthread_create(i32* %5, i32* null, i32 %27, %struct.client_arg* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %33

32:                                               ; preds = %20
  br label %56

33:                                               ; preds = %31, %19
  %34 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %35 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %40 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @mpv_destroy(i64 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %45 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %50 = getelementptr inbounds %struct.client_arg, %struct.client_arg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @close(i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.client_arg*, %struct.client_arg** %4, align 8
  %55 = call i32 @talloc_free(%struct.client_arg* %54)
  br label %56

56:                                               ; preds = %53, %32
  ret void
}

declare dso_local i64 @mp_new_client(i32, i32) #1

declare dso_local i32 @mp_client_get_log(i64) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.client_arg*) #1

declare dso_local i32 @mpv_destroy(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @talloc_free(%struct.client_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
