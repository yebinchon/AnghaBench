; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_getinformation.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_getinformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gport = type { i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32*)*, i32 (i32*)* }

@GPROBE_GET_INFORMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gport*)* @gprobe_getinformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprobe_getinformation(%struct.gport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gport*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.gport* %0, %struct.gport** %3, align 8
  %10 = load %struct.gport*, %struct.gport** %3, align 8
  %11 = icmp ne %struct.gport* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = call i32* (...) @r_buf_new()
  store i32* %14, i32** %4, align 8
  %15 = call i32* (...) @r_buf_new()
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* @GPROBE_GET_INFORMATION, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %13
  br label %61

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @r_buf_append_bytes(i32* %24, i32* %6, i32 1)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @r_buf_append_bytes(i32* %26, i32* %7, i32 1)
  %28 = load %struct.gport*, %struct.gport** %3, align 8
  %29 = getelementptr inbounds %struct.gport, %struct.gport* %28, i32 0, i32 2
  %30 = load i32 (i32*)*, i32 (i32*)** %29, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 %30(i32* %31)
  %33 = load %struct.gport*, %struct.gport** %3, align 8
  %34 = getelementptr inbounds %struct.gport, %struct.gport* %33, i32 0, i32 1
  %35 = load i64 (%struct.gport*, i32*)*, i64 (%struct.gport*, i32*)** %34, align 8
  %36 = load %struct.gport*, %struct.gport** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 %35(%struct.gport* %36, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %61

41:                                               ; preds = %23
  %42 = load %struct.gport*, %struct.gport** %3, align 8
  %43 = getelementptr inbounds %struct.gport, %struct.gport* %42, i32 0, i32 0
  %44 = load i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32, i32*)** %43, align 8
  %45 = load %struct.gport*, %struct.gport** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 %44(%struct.gport* %45, i32 %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %61

51:                                               ; preds = %41
  %52 = load i32*, i32** %5, align 8
  %53 = call i32* @r_buf_data(i32* %52, i32* %8)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @r_print_hexdump(i32* null, i32 0, i32* %54, i32 %55, i32 16, i32 1, i32 1)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @r_buf_free(i32* %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @r_buf_free(i32* %59)
  store i32 0, i32* %2, align 4
  br label %66

61:                                               ; preds = %50, %40, %22
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @r_buf_free(i32* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @r_buf_free(i32* %64)
  store i32 -1, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %51, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @r_buf_append_bytes(i32*, i32*, i32) #1

declare dso_local i32* @r_buf_data(i32*, i32*) #1

declare dso_local i32 @r_print_hexdump(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @r_buf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
