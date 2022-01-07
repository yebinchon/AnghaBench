; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_runcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_runcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gport = type { i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32*)*, i32 (i32*)* }

@GPROBE_RUN_CODE_2 = common dso_local global i32 0, align 4
@GPROBE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gport*, i32)* @gprobe_runcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprobe_runcode(%struct.gport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.gport* %0, %struct.gport** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gport*, %struct.gport** %4, align 8
  %11 = icmp ne %struct.gport* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = call i32* (...) @r_buf_new()
  store i32* %14, i32** %6, align 8
  %15 = call i32* (...) @r_buf_new()
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* @GPROBE_RUN_CODE_2, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %13
  br label %60

23:                                               ; preds = %19
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @r_write_be32(i32* %24, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @r_buf_append_bytes(i32* %27, i32* %8, i32 1)
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %31 = call i32 @r_buf_append_bytes(i32* %29, i32* %30, i32 4)
  %32 = load %struct.gport*, %struct.gport** %4, align 8
  %33 = getelementptr inbounds %struct.gport, %struct.gport* %32, i32 0, i32 2
  %34 = load i32 (i32*)*, i32 (i32*)** %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 %34(i32* %35)
  %37 = load %struct.gport*, %struct.gport** %4, align 8
  %38 = getelementptr inbounds %struct.gport, %struct.gport* %37, i32 0, i32 1
  %39 = load i64 (%struct.gport*, i32*)*, i64 (%struct.gport*, i32*)** %38, align 8
  %40 = load %struct.gport*, %struct.gport** %4, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 %39(%struct.gport* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %23
  br label %60

45:                                               ; preds = %23
  %46 = load %struct.gport*, %struct.gport** %4, align 8
  %47 = getelementptr inbounds %struct.gport, %struct.gport* %46, i32 0, i32 0
  %48 = load i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32, i32*)** %47, align 8
  %49 = load %struct.gport*, %struct.gport** %4, align 8
  %50 = load i32, i32* @GPROBE_ACK, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 %48(%struct.gport* %49, i32 %50, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %60

55:                                               ; preds = %45
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @r_buf_free(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @r_buf_free(i32* %58)
  store i32 0, i32* %3, align 4
  br label %65

60:                                               ; preds = %54, %44, %22
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @r_buf_free(i32* %61)
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @r_buf_free(i32* %63)
  store i32 -1, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %55, %12
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @r_write_be32(i32*, i32) #1

declare dso_local i32 @r_buf_append_bytes(i32*, i32*, i32) #1

declare dso_local i32 @r_buf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
