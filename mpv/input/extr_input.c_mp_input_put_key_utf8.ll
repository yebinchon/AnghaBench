; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_put_key_utf8.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_put_key_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32 }
%struct.bstr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_input_put_key_utf8(%struct.input_ctx* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.bstr, align 8
  %5 = alloca %struct.input_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  store i64 %2, i64* %8, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  br label %9

9:                                                ; preds = %20, %3
  %10 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %4, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @bstr_decode_utf8(i64 %15, %struct.bstr* %4)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %26

20:                                               ; preds = %13
  %21 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mp_input_put_key(%struct.input_ctx* %21, i32 %24)
  br label %9

26:                                               ; preds = %19, %9
  ret void
}

declare dso_local i32 @bstr_decode_utf8(i64, %struct.bstr*) #1

declare dso_local i32 @mp_input_put_key(%struct.input_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
