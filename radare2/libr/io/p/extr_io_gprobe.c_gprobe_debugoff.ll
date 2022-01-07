; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_debugoff.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_debugoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gport = type { i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32*)*, i32 (i32*)* }

@GPROBE_DEBUGOFF = common dso_local global i32 0, align 4
@GPROBE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gport*)* @gprobe_debugoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprobe_debugoff(%struct.gport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gport*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gport* %0, %struct.gport** %3, align 8
  %7 = call i32* (...) @r_buf_new()
  store i32* %7, i32** %4, align 8
  %8 = call i32* (...) @r_buf_new()
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* @GPROBE_DEBUGOFF, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %1
  br label %47

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @r_buf_append_bytes(i32* %17, i32* %6, i32 1)
  %19 = load %struct.gport*, %struct.gport** %3, align 8
  %20 = getelementptr inbounds %struct.gport, %struct.gport* %19, i32 0, i32 2
  %21 = load i32 (i32*)*, i32 (i32*)** %20, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 %21(i32* %22)
  %24 = load %struct.gport*, %struct.gport** %3, align 8
  %25 = getelementptr inbounds %struct.gport, %struct.gport* %24, i32 0, i32 1
  %26 = load i64 (%struct.gport*, i32*)*, i64 (%struct.gport*, i32*)** %25, align 8
  %27 = load %struct.gport*, %struct.gport** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 %26(%struct.gport* %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %47

32:                                               ; preds = %16
  %33 = load %struct.gport*, %struct.gport** %3, align 8
  %34 = getelementptr inbounds %struct.gport, %struct.gport* %33, i32 0, i32 0
  %35 = load i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32, i32*)** %34, align 8
  %36 = load %struct.gport*, %struct.gport** %3, align 8
  %37 = load i32, i32* @GPROBE_ACK, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 %35(%struct.gport* %36, i32 %37, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %47

42:                                               ; preds = %32
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @r_buf_free(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @r_buf_free(i32* %45)
  store i32 0, i32* %2, align 4
  br label %52

47:                                               ; preds = %41, %31, %15
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @r_buf_free(i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @r_buf_free(i32* %50)
  store i32 -1, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %2, align 4
  ret i32 %53
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
