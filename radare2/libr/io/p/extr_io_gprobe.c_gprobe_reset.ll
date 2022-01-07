; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_reset.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gport = type { i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32*)*, i32 (i32*)* }

@GPROBE_RESET = common dso_local global i32 0, align 4
@GPROBE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gport*, i32)* @gprobe_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprobe_reset(%struct.gport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.gport* %0, %struct.gport** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gport*, %struct.gport** %4, align 8
  %10 = icmp ne %struct.gport* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

12:                                               ; preds = %2
  %13 = call i32* (...) @r_buf_new()
  store i32* %13, i32** %6, align 8
  %14 = call i32* (...) @r_buf_new()
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @GPROBE_RESET, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %12
  br label %57

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @r_buf_append_bytes(i32* %23, i32* %8, i32 1)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @r_buf_append_bytes(i32* %25, i32* %5, i32 1)
  %27 = load %struct.gport*, %struct.gport** %4, align 8
  %28 = getelementptr inbounds %struct.gport, %struct.gport* %27, i32 0, i32 2
  %29 = load i32 (i32*)*, i32 (i32*)** %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 %29(i32* %30)
  %32 = load %struct.gport*, %struct.gport** %4, align 8
  %33 = call i32 @sp_flush(%struct.gport* %32)
  %34 = load %struct.gport*, %struct.gport** %4, align 8
  %35 = getelementptr inbounds %struct.gport, %struct.gport* %34, i32 0, i32 1
  %36 = load i64 (%struct.gport*, i32*)*, i64 (%struct.gport*, i32*)** %35, align 8
  %37 = load %struct.gport*, %struct.gport** %4, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 %36(%struct.gport* %37, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %57

42:                                               ; preds = %22
  %43 = load %struct.gport*, %struct.gport** %4, align 8
  %44 = getelementptr inbounds %struct.gport, %struct.gport* %43, i32 0, i32 0
  %45 = load i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32, i32*)** %44, align 8
  %46 = load %struct.gport*, %struct.gport** %4, align 8
  %47 = load i32, i32* @GPROBE_ACK, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i64 %45(%struct.gport* %46, i32 %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %57

52:                                               ; preds = %42
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @r_buf_free(i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @r_buf_free(i32* %55)
  store i32 0, i32* %3, align 4
  br label %62

57:                                               ; preds = %51, %41, %21
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @r_buf_free(i32* %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @r_buf_free(i32* %60)
  store i32 -1, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %52, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @r_buf_append_bytes(i32*, i32*, i32) #1

declare dso_local i32 @sp_flush(%struct.gport*) #1

declare dso_local i32 @r_buf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
