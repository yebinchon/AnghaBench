; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_print_key_id.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_print_key_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_multi = type { %struct.key_state** }
%struct.key_state = type { i32, i32, i32 }
%struct.gc_arena = type { i32 }
%struct.buffer = type { i32 }

@KEY_SCAN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c" [key#%d state=%s id=%d sid=%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tls_multi*, %struct.gc_arena*)* @print_key_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_key_id(%struct.tls_multi* %0, %struct.gc_arena* %1) #0 {
  %3 = alloca %struct.tls_multi*, align 8
  %4 = alloca %struct.gc_arena*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer, align 4
  %7 = alloca %struct.key_state*, align 8
  store %struct.tls_multi* %0, %struct.tls_multi** %3, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %4, align 8
  %8 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %9 = call i32 @alloc_buf_gc(i32 256, %struct.gc_arena* %8)
  %10 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @KEY_SCAN_SIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.tls_multi*, %struct.tls_multi** %3, align 8
  %17 = getelementptr inbounds %struct.tls_multi, %struct.tls_multi* %16, i32 0, i32 0
  %18 = load %struct.key_state**, %struct.key_state*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.key_state*, %struct.key_state** %18, i64 %20
  %22 = load %struct.key_state*, %struct.key_state** %21, align 8
  store %struct.key_state* %22, %struct.key_state** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.key_state*, %struct.key_state** %7, align 8
  %25 = getelementptr inbounds %struct.key_state, %struct.key_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @state_name(i32 %26)
  %28 = load %struct.key_state*, %struct.key_state** %7, align 8
  %29 = getelementptr inbounds %struct.key_state, %struct.key_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.key_state*, %struct.key_state** %7, align 8
  %32 = getelementptr inbounds %struct.key_state, %struct.key_state* %31, i32 0, i32 0
  %33 = load %struct.gc_arena*, %struct.gc_arena** %4, align 8
  %34 = call i32 @session_id_print(i32* %32, %struct.gc_arena* %33)
  %35 = call i32 @buf_printf(%struct.buffer* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27, i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %15
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %11

39:                                               ; preds = %11
  %40 = call i8* @BSTR(%struct.buffer* %6)
  ret i8* %40
}

declare dso_local i32 @alloc_buf_gc(i32, %struct.gc_arena*) #1

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @state_name(i32) #1

declare dso_local i32 @session_id_print(i32*, %struct.gc_arena*) #1

declare dso_local i8* @BSTR(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
