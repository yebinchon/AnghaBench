; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_sd-daemon.c_sd_is_socket_internal.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_sd-daemon.c_sd_is_socket_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sd_is_socket_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_is_socket_internal(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EBADF, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %94

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %94

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @fstat(i32 %25, %struct.stat* %8)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @errno, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %94

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @S_ISSOCK(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %94

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SOL_SOCKET, align 4
  %43 = load i32, i32* @SO_TYPE, align 4
  %44 = call i64 @getsockopt(i32 %41, i32 %42, i32 %43, i32* %9, i32* %10)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @errno, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %94

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %94

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %94

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  store i32 4, i32* %12, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SOL_SOCKET, align 4
  %68 = load i32, i32* @SO_ACCEPTCONN, align 4
  %69 = call i64 @getsockopt(i32 %66, i32 %67, i32 %68, i32* %11, i32* %12)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @errno, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %94

74:                                               ; preds = %65
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ne i64 %76, 4
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %94

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = icmp ne i32 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %94

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %62
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %91, %78, %71, %60, %53, %46, %36, %28, %21, %15
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
