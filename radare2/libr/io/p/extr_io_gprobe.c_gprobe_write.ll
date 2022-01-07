; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gport = type { i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32*)*, i32 (i32*)*, i32 }

@GPROBE_RAM_WRITE_2 = common dso_local global i32 0, align 4
@GPROBE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gport*, i32, i32*, i32)* @gprobe_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprobe_write(%struct.gport* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i32], align 16
  store %struct.gport* %0, %struct.gport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = call i32* (...) @r_buf_new()
  store i32* %15, i32** %10, align 8
  %16 = call i32* (...) @r_buf_new()
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* @GPROBE_RAM_WRITE_2, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20, %4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @r_buf_free(i32* %24)
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @r_buf_free(i32* %26)
  store i32 -1, i32* %5, align 4
  br label %83

28:                                               ; preds = %20
  %29 = load %struct.gport*, %struct.gport** %6, align 8
  %30 = getelementptr inbounds %struct.gport, %struct.gport* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @R_MIN(i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @r_write_be32(i32* %34, i32 %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @r_write_be32(i32* %37, i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @r_buf_append_bytes(i32* %40, i32* %12, i32 1)
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %44 = call i32 @r_buf_append_bytes(i32* %42, i32* %43, i32 4)
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @r_buf_append_bytes(i32* %45, i32* %46, i32 %47)
  %49 = load %struct.gport*, %struct.gport** %6, align 8
  %50 = getelementptr inbounds %struct.gport, %struct.gport* %49, i32 0, i32 2
  %51 = load i32 (i32*)*, i32 (i32*)** %50, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 %51(i32* %52)
  %54 = load %struct.gport*, %struct.gport** %6, align 8
  %55 = getelementptr inbounds %struct.gport, %struct.gport* %54, i32 0, i32 1
  %56 = load i64 (%struct.gport*, i32*)*, i64 (%struct.gport*, i32*)** %55, align 8
  %57 = load %struct.gport*, %struct.gport** %6, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 %56(%struct.gport* %57, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %28
  br label %78

62:                                               ; preds = %28
  %63 = load %struct.gport*, %struct.gport** %6, align 8
  %64 = getelementptr inbounds %struct.gport, %struct.gport* %63, i32 0, i32 0
  %65 = load i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32, i32*)** %64, align 8
  %66 = load %struct.gport*, %struct.gport** %6, align 8
  %67 = load i32, i32* @GPROBE_ACK, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i64 %65(%struct.gport* %66, i32 %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %78

72:                                               ; preds = %62
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @r_buf_free(i32* %73)
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @r_buf_free(i32* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %5, align 4
  br label %83

78:                                               ; preds = %71, %61
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @r_buf_free(i32* %79)
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @r_buf_free(i32* %81)
  store i32 -1, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %72, %23
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @r_buf_free(i32*) #1

declare dso_local i32 @R_MIN(i32, i32) #1

declare dso_local i32 @r_write_be32(i32*, i32) #1

declare dso_local i32 @r_buf_append_bytes(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
