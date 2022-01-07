; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-unicornscan.c_unicornscan_out_status.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-unicornscan.c_unicornscan_out_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"TCP %s\09%16s[%5d]\09\09from %u.%u.%u.%u  ttl %-3d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Host: %u.%u.%u.%u ()\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\09Ports: %u/%s/%s/%s/%s/%s/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, %struct.Output*, i32, i32, i32, i32, i32, i32)* @unicornscan_out_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unicornscan_out_status(%struct.Output* %0, i32* %1, %struct.Output* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.Output*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.Output*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.Output* %2, %struct.Output** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load i32, i32* %17, align 4
  %20 = call i32 @UNUSEDPARM(i32 %19)
  %21 = load %struct.Output*, %struct.Output** %10, align 8
  %22 = ptrtoint %struct.Output* %21 to i32
  %23 = call i32 @UNUSEDPARM(i32 %22)
  %24 = load %struct.Output*, %struct.Output** %12, align 8
  %25 = ptrtoint %struct.Output* %24 to i32
  %26 = call i32 @UNUSEDPARM(i32 %25)
  %27 = load i32, i32* %15, align 4
  %28 = icmp eq i32 %27, 6
  br i1 %28, label %29, label %50

29:                                               ; preds = %9
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i8* @status_string(i32 %31)
  %33 = load i32, i32* %16, align 4
  %34 = call i8* @tcp_service_name(i32 %33)
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %14, align 4
  %37 = lshr i32 %36, 24
  %38 = and i32 %37, 255
  %39 = load i32, i32* %14, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = load i32, i32* %14, align 4
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load i32, i32* %14, align 4
  %46 = lshr i32 %45, 0
  %47 = and i32 %46, 255
  %48 = load i32, i32* %18, align 4
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %34, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %48)
  br label %76

50:                                               ; preds = %9
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %14, align 4
  %53 = lshr i32 %52, 24
  %54 = trunc i32 %53 to i8
  %55 = zext i8 %54 to i32
  %56 = load i32, i32* %14, align 4
  %57 = lshr i32 %56, 16
  %58 = trunc i32 %57 to i8
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* %14, align 4
  %61 = lshr i32 %60, 8
  %62 = trunc i32 %61 to i8
  %63 = zext i8 %62 to i32
  %64 = load i32, i32* %14, align 4
  %65 = lshr i32 %64, 0
  %66 = trunc i32 %65 to i8
  %67 = zext i8 %66 to i32
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %59, i32 %63, i32 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i8* @status_string(i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = call i8* @name_from_ip_proto(i32 %73)
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %70, i8* %72, i8* %74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %50, %29
  ret void
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @status_string(i32) #1

declare dso_local i8* @tcp_service_name(i32) #1

declare dso_local i8* @name_from_ip_proto(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
