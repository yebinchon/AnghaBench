; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_convert_to_one_line.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_convert_to_one_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_to_one_line(%struct.buffer* %0) #0 {
  %2 = alloca %struct.buffer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %2, align 8
  %5 = load %struct.buffer*, %struct.buffer** %2, align 8
  %6 = call i8* @BPTR(%struct.buffer* %5)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.buffer*, %struct.buffer** %2, align 8
  %8 = call i32 @BLEN(%struct.buffer* %7)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  store i8 124, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  br label %9

23:                                               ; preds = %9
  ret void
}

declare dso_local i8* @BPTR(%struct.buffer*) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
