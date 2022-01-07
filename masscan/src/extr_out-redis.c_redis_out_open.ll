; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-redis.c_redis_out_open.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-redis.c_redis_out_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"PING\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"redis: send(ping) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"+PONG\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"redis: unexpected response from redis server: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*)* @redis_out_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redis_out_open(%struct.Output* %0, i32* %1) #0 {
  %3 = alloca %struct.Output*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1024 x i8], align 16
  store %struct.Output* %0, %struct.Output** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = ptrtoint i32* %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load %struct.Output*, %struct.Output** %3, align 8
  %11 = call i32 @UNUSEDPARM(%struct.Output* %10)
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i64 @send(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6, i32 0)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 6
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %24 = call i64 @recv_line(i32 %22, i8* %23, i32 1024)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 7
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %29 = call i64 @memcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %33 = call i32 (i32, i8*, ...) @LOG(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %27, %20
  ret void
}

declare dso_local i32 @UNUSEDPARM(%struct.Output*) #1

declare dso_local i64 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @LOG(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @recv_line(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
