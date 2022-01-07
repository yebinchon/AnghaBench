; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buf_chomp.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buf_chomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }

@CC_CRLF = common dso_local global i32 0, align 4
@CC_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buf_chomp(%struct.buffer* %0) #0 {
  %2 = alloca %struct.buffer*, align 8
  %3 = alloca i8*, align 8
  store %struct.buffer* %0, %struct.buffer** %2, align 8
  br label %4

4:                                                ; preds = %1, %26
  %5 = load %struct.buffer*, %struct.buffer** %2, align 8
  %6 = call i64 @BLAST(%struct.buffer* %5)
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  br label %27

11:                                               ; preds = %4
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = load i32, i32* @CC_CRLF, align 4
  %15 = load i32, i32* @CC_NULL, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @char_class(i8 signext %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.buffer*, %struct.buffer** %2, align 8
  %21 = call i32 @buf_inc_len(%struct.buffer* %20, i32 -1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %27

24:                                               ; preds = %19
  br label %26

25:                                               ; preds = %11
  br label %27

26:                                               ; preds = %24
  br label %4

27:                                               ; preds = %25, %23, %10
  %28 = load %struct.buffer*, %struct.buffer** %2, align 8
  %29 = call i32 @buf_null_terminate(%struct.buffer* %28)
  ret void
}

declare dso_local i64 @BLAST(%struct.buffer*) #1

declare dso_local i64 @char_class(i8 signext, i32) #1

declare dso_local i32 @buf_inc_len(%struct.buffer*, i32) #1

declare dso_local i32 @buf_null_terminate(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
