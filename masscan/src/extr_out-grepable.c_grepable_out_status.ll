; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-grepable.c_grepable_out_status.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-grepable.c_grepable_out_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Timestamp: %lu\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\09Host: %u.%u.%u.%u ()\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\09Ports: %u/%s/%s/%s/%s/%s/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, i32, i32, i32, i32, i32, i32, i32)* @grepable_out_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grepable_out_status(%struct.Output* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.Output*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.Output* %0, %struct.Output** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @UNUSEDPARM(i32 %20)
  %22 = load %struct.Output*, %struct.Output** %10, align 8
  %23 = ptrtoint %struct.Output* %22 to i32
  %24 = call i32 @UNUSEDPARM(i32 %23)
  %25 = load i32, i32* %17, align 4
  %26 = call i32 @UNUSEDPARM(i32 %25)
  %27 = load i32, i32* %18, align 4
  %28 = call i32 @UNUSEDPARM(i32 %27)
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %31, label %34

31:                                               ; preds = %9
  %32 = load i32, i32* %16, align 4
  %33 = call i8* @tcp_service_name(i32 %32)
  store i8* %33, i8** %19, align 8
  br label %44

34:                                               ; preds = %9
  %35 = load i32, i32* %15, align 4
  %36 = icmp eq i32 %35, 17
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %16, align 4
  %39 = call i8* @udp_service_name(i32 %38)
  store i8* %39, i8** %19, align 8
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %15, align 4
  %42 = call i8* @oproto_service_name(i32 %41)
  store i8* %42, i8** %19, align 8
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %14, align 4
  %50 = lshr i32 %49, 24
  %51 = trunc i32 %50 to i8
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %14, align 4
  %54 = lshr i32 %53, 16
  %55 = trunc i32 %54 to i8
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %14, align 4
  %58 = lshr i32 %57, 8
  %59 = trunc i32 %58 to i8
  %60 = zext i8 %59 to i32
  %61 = load i32, i32* %14, align 4
  %62 = lshr i32 %61, 0
  %63 = trunc i32 %62 to i8
  %64 = zext i8 %63 to i32
  %65 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %56, i32 %60, i32 %64)
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i8* @status_string(i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = call i8* @name_from_ip_proto(i32 %70)
  %72 = load i8*, i8** %19, align 8
  %73 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %67, i8* %69, i8* %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i8* @tcp_service_name(i32) #1

declare dso_local i8* @udp_service_name(i32) #1

declare dso_local i8* @oproto_service_name(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, ...) #1

declare dso_local i8* @status_string(i32) #1

declare dso_local i8* @name_from_ip_proto(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
