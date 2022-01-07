; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/simplelink/extr_sl_socket.c_inet_ntop.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/simplelink/extr_sl_socket.c_inet_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%lu.%lu.%lu.%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inet_ntop(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.in_addr*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.in_addr*
  store %struct.in_addr* %13, %struct.in_addr** %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @AF_INET, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOTSUP, align 4
  store i32 %18, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %46

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.in_addr*, %struct.in_addr** %11, align 8
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SL_IPV4_BYTE(i32 %24, i32 0)
  %26 = load %struct.in_addr*, %struct.in_addr** %11, align 8
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SL_IPV4_BYTE(i32 %28, i32 1)
  %30 = load %struct.in_addr*, %struct.in_addr** %11, align 8
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SL_IPV4_BYTE(i32 %32, i32 2)
  %34 = load %struct.in_addr*, %struct.in_addr** %11, align 8
  %35 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SL_IPV4_BYTE(i32 %36, i32 3)
  %38 = call i32 @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29, i32 %33, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %19
  %42 = load i8*, i8** %8, align 8
  br label %44

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i8* [ %42, %41 ], [ null, %43 ]
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %44, %17
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SL_IPV4_BYTE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
