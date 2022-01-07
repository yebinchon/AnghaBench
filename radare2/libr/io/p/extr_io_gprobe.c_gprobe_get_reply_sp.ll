; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_get_reply_sp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_get_reply_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gport*, i32, i32*)* @gprobe_get_reply_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprobe_get_reply_sp(%struct.gport* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [256 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.gport* %0, %struct.gport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.gport*, %struct.gport** %5, align 8
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %12 = call i32 @sp_blocking_read(%struct.gport* %10, i32* %11, i32 2, i32 50)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %49

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %49

22:                                               ; preds = %16
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = sub nsw i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %49

28:                                               ; preds = %22
  %29 = load %struct.gport*, %struct.gport** %5, align 8
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = sub nsw i32 %33, 2
  %35 = call i32 @sp_blocking_read(%struct.gport* %29, i32* %31, i32 %34, i32 50)
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %49

42:                                               ; preds = %28
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, 3
  %48 = call i32 @r_buf_append_bytes(i32* %43, i32* %45, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %41, %27, %21, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @sp_blocking_read(%struct.gport*, i32*, i32, i32) #1

declare dso_local i32 @r_buf_append_bytes(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
