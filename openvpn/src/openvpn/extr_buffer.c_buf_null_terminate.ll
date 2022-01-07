; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buf_null_terminate.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buf_null_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buf_null_terminate(%struct.buffer* %0) #0 {
  %2 = alloca %struct.buffer*, align 8
  %3 = alloca i8*, align 8
  store %struct.buffer* %0, %struct.buffer** %2, align 8
  %4 = load %struct.buffer*, %struct.buffer** %2, align 8
  %5 = call i64 @BLAST(%struct.buffer* %4)
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %25

15:                                               ; preds = %9, %1
  %16 = load %struct.buffer*, %struct.buffer** %2, align 8
  %17 = call i32 @buf_safe(%struct.buffer* %16, i32 1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load %struct.buffer*, %struct.buffer** %2, align 8
  %21 = call i32 @buf_inc_len(%struct.buffer* %20, i32 -1)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load %struct.buffer*, %struct.buffer** %2, align 8
  %24 = call i32 @buf_write_u8(%struct.buffer* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %14
  ret void
}

declare dso_local i64 @BLAST(%struct.buffer*) #1

declare dso_local i32 @buf_safe(%struct.buffer*, i32) #1

declare dso_local i32 @buf_inc_len(%struct.buffer*, i32) #1

declare dso_local i32 @buf_write_u8(%struct.buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
