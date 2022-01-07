; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_debugon.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_debugon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gport = type { i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32*)*, i32 (i32*)* }

@GPROBE_DEBUGON = common dso_local global i32 0, align 4
@GPROBE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gport*)* @gprobe_debugon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprobe_debugon(%struct.gport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gport*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gport* %0, %struct.gport** %3, align 8
  %7 = load %struct.gport*, %struct.gport** %3, align 8
  %8 = icmp ne %struct.gport* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  %11 = call i32* (...) @r_buf_new()
  store i32* %11, i32** %4, align 8
  %12 = call i32* (...) @r_buf_new()
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* @GPROBE_DEBUGON, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %10
  br label %51

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @r_buf_append_bytes(i32* %21, i32* %6, i32 1)
  %23 = load %struct.gport*, %struct.gport** %3, align 8
  %24 = getelementptr inbounds %struct.gport, %struct.gport* %23, i32 0, i32 2
  %25 = load i32 (i32*)*, i32 (i32*)** %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 %25(i32* %26)
  %28 = load %struct.gport*, %struct.gport** %3, align 8
  %29 = getelementptr inbounds %struct.gport, %struct.gport* %28, i32 0, i32 1
  %30 = load i64 (%struct.gport*, i32*)*, i64 (%struct.gport*, i32*)** %29, align 8
  %31 = load %struct.gport*, %struct.gport** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 %30(%struct.gport* %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  br label %51

36:                                               ; preds = %20
  %37 = load %struct.gport*, %struct.gport** %3, align 8
  %38 = getelementptr inbounds %struct.gport, %struct.gport* %37, i32 0, i32 0
  %39 = load i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32, i32*)** %38, align 8
  %40 = load %struct.gport*, %struct.gport** %3, align 8
  %41 = load i32, i32* @GPROBE_ACK, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 %39(%struct.gport* %40, i32 %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %51

46:                                               ; preds = %36
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @r_buf_free(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @r_buf_free(i32* %49)
  store i32 0, i32* %2, align 4
  br label %56

51:                                               ; preds = %45, %35, %19
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @r_buf_free(i32* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @r_buf_free(i32* %54)
  store i32 -1, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %46, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @r_buf_append_bytes(i32*, i32*, i32) #1

declare dso_local i32 @r_buf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
