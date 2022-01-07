; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-redis.c_clean_response_queue.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-redis.c_clean_response_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"redis:select() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"redis:recv() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Output*, i64)* @clean_response_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_response_queue(%struct.Output* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Output*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i64, align 8
  store %struct.Output* %0, %struct.Output** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = call i32 @FD_ZERO(i32* %6)
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @FD_SET(i64 %14, i32* %6)
  %16 = load i64, i64* %5, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @select(i32 %18, i32* %6, i32 0, i32 0, %struct.timeval* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %49

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @exit(i32 1) #4
  unreachable

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #4
  unreachable

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %38 = call i64 @recv(i64 %36, i8* %37, i32 1024, i32 0)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @exit(i32 1) #4
  unreachable

44:                                               ; preds = %35
  %45 = load %struct.Output*, %struct.Output** %4, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @parse_state_machine(%struct.Output* %45, i8* %46, i64 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i64, i32*) #2

declare dso_local i32 @select(i32, i32*, i32, i32, %struct.timeval*) #2

declare dso_local i32 @LOG(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @recv(i64, i8*, i32, i32) #2

declare dso_local i32 @parse_state_machine(%struct.Output*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
