; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buf_catrunc.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_buffer.c_buf_catrunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buf_catrunc(%struct.buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.buffer*, %struct.buffer** %3, align 8
  %7 = call i32 @buf_forward_capacity(%struct.buffer* %6)
  %8 = icmp sle i32 %7, 1
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = trunc i64 %11 to i32
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.buffer*, %struct.buffer** %3, align 8
  %16 = call i32 @buf_forward_capacity_total(%struct.buffer* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %9
  %19 = load %struct.buffer*, %struct.buffer** %3, align 8
  %20 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.buffer*, %struct.buffer** %3, align 8
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @strncpynt(i8* %29, i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %18, %9
  br label %34

34:                                               ; preds = %33, %2
  ret void
}

declare dso_local i32 @buf_forward_capacity(%struct.buffer*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @buf_forward_capacity_total(%struct.buffer*) #1

declare dso_local i32 @strncpynt(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
