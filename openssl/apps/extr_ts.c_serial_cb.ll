; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ts.c_serial_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ts.c_serial_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TS_STATUS_REJECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error during serial number generation.\00", align 1
@TS_INFO_ADD_INFO_NOT_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @serial_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @serial_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @next_serial(i8* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @TS_STATUS_REJECTION, align 4
  %15 = call i32 @TS_RESP_CTX_set_status_info(i32* %13, i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @TS_INFO_ADD_INFO_NOT_AVAILABLE, align 4
  %18 = call i32 @TS_RESP_CTX_add_failure_info(i32* %16, i32 %17)
  br label %23

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @save_ts_serial(i8* %20, i32* %21)
  br label %23

23:                                               ; preds = %19, %12
  %24 = load i32*, i32** %6, align 8
  ret i32* %24
}

declare dso_local i32* @next_serial(i8*) #1

declare dso_local i32 @TS_RESP_CTX_set_status_info(i32*, i32, i8*) #1

declare dso_local i32 @TS_RESP_CTX_add_failure_info(i32*, i32) #1

declare dso_local i32 @save_ts_serial(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
