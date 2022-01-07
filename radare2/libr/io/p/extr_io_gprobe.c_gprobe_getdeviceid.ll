; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_getdeviceid.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_gprobe.c_gprobe_getdeviceid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gport = type { i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32*)*, i32 (i32*)* }

@GPROBE_GET_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gport*, i32)* @gprobe_getdeviceid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprobe_getdeviceid(%struct.gport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.gport* %0, %struct.gport** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gport*, %struct.gport** %4, align 8
  %11 = icmp ne %struct.gport* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %71

13:                                               ; preds = %2
  %14 = call i32* (...) @r_buf_new()
  store i32* %14, i32** %6, align 8
  %15 = call i32* (...) @r_buf_new()
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* @GPROBE_GET_DEVICE_ID, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %13
  br label %66

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @r_buf_append_bytes(i32* %24, i32* %8, i32 1)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @r_buf_append_bytes(i32* %26, i32* %5, i32 1)
  %28 = load %struct.gport*, %struct.gport** %4, align 8
  %29 = getelementptr inbounds %struct.gport, %struct.gport* %28, i32 0, i32 2
  %30 = load i32 (i32*)*, i32 (i32*)** %29, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 %30(i32* %31)
  %33 = load %struct.gport*, %struct.gport** %4, align 8
  %34 = getelementptr inbounds %struct.gport, %struct.gport* %33, i32 0, i32 1
  %35 = load i64 (%struct.gport*, i32*)*, i64 (%struct.gport*, i32*)** %34, align 8
  %36 = load %struct.gport*, %struct.gport** %4, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 %35(%struct.gport* %36, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %66

41:                                               ; preds = %23
  %42 = load %struct.gport*, %struct.gport** %4, align 8
  %43 = getelementptr inbounds %struct.gport, %struct.gport* %42, i32 0, i32 0
  %44 = load i64 (%struct.gport*, i32, i32*)*, i64 (%struct.gport*, i32, i32*)** %43, align 8
  %45 = load %struct.gport*, %struct.gport** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 %44(%struct.gport* %45, i32 %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %66

51:                                               ; preds = %41
  %52 = load i32*, i32** %7, align 8
  %53 = call i8* @r_buf_to_string(i32* %52)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @free(i8* %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @r_buf_free(i32* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @r_buf_free(i32* %64)
  store i32 0, i32* %3, align 4
  br label %71

66:                                               ; preds = %50, %40, %22
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @r_buf_free(i32* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @r_buf_free(i32* %69)
  store i32 -1, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %61, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @r_buf_new(...) #1

declare dso_local i32 @r_buf_append_bytes(i32*, i32*, i32) #1

declare dso_local i8* @r_buf_to_string(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_buf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
