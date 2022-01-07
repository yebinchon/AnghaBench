; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gport = type { i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32*)*, i32 (i32*)*, i32 }

@GPROBE_RAM_READ_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gport*, i32, i32*, i32)* @gprobe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprobe_read(%struct.gport* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  %15 = alloca i32, align 4
  store %struct.gport* %0, %struct.gport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = call i32* (...) @r_buf_new()
  store i32* %16, i32** %10, align 8
  %17 = call i32* (...) @r_buf_new()
  store i32* %17, i32** %11, align 8
  %18 = load i32, i32* @GPROBE_RAM_READ_2, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21, %4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @r_buf_free(i32* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @r_buf_free(i32* %27)
  store i32 -1, i32* %5, align 4
  br label %88

29:                                               ; preds = %21
  %30 = load %struct.gport*, %struct.gport** %6, align 8
  %31 = getelementptr inbounds %struct.gport, %struct.gport* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @R_MIN(i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @r_write_be32(i32* %35, i32 %36)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @r_write_be32(i32* %38, i32 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @r_buf_append_bytes(i32* %41, i32* %12, i32 1)
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %45 = call i32 @r_buf_append_bytes(i32* %43, i32* %44, i32 4)
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %48 = call i32 @r_buf_append_bytes(i32* %46, i32* %47, i32 4)
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

61:                                               ; preds = %29
  br label %83

62:                                               ; preds = %29
  %63 = load %struct.gport*, %struct.gport** %6, align 8
  %64 = getelementptr inbounds %struct.gport, %struct.gport* %63, i32 0, i32 0
  %65 = load i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32, i32*)** %64, align 8
  %66 = load %struct.gport*, %struct.gport** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i64 %65(%struct.gport* %66, i32 %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %83

72:                                               ; preds = %62
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @r_buf_size(i32* %75)
  %77 = call i32 @r_buf_read_at(i32* %73, i32 0, i32* %74, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @r_buf_free(i32* %78)
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @r_buf_free(i32* %80)
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %5, align 4
  br label %88

83:                                               ; preds = %71, %61
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @r_buf_free(i32* %84)
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @r_buf_free(i32* %86)
  store i32 -1, i32* %5, align 4
  br label %88

88:                                               ; preds = %83, %72, %24
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @r_buf_free(i32*) #1

declare dso_local i32 @R_MIN(i32, i32) #1

declare dso_local i32 @r_write_be32(i32*, i32) #1

declare dso_local i32 @r_buf_append_bytes(i32*, i32*, i32) #1

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32 @r_buf_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
