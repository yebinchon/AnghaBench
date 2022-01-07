; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_event.c_se_del.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_event.c_se_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_set = type { i32 }
%struct.se_set = type { i64, i32**, i32, i32, i32 }

@D_EVENT_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SE_DEL ev=%d\00", align 1
@D_EVENT_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Error: select/se_del: too many I/O wait events\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_set*, i64)* @se_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se_del(%struct.event_set* %0, i64 %1) #0 {
  %3 = alloca %struct.event_set*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.se_set*, align 8
  store %struct.event_set* %0, %struct.event_set** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.event_set*, %struct.event_set** %3, align 8
  %7 = bitcast %struct.event_set* %6 to %struct.se_set*
  store %struct.se_set* %7, %struct.se_set** %5, align 8
  %8 = load %struct.se_set*, %struct.se_set** %5, align 8
  %9 = getelementptr inbounds %struct.se_set, %struct.se_set* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i32, i32* @D_EVENT_WAIT, align 4
  %16 = load i64, i64* %4, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @dmsg(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = icmp uge i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.se_set*, %struct.se_set** %5, align 8
  %24 = getelementptr inbounds %struct.se_set, %struct.se_set* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.se_set*, %struct.se_set** %5, align 8
  %30 = getelementptr inbounds %struct.se_set, %struct.se_set* %29, i32 0, i32 3
  %31 = call i32 @FD_CLR(i64 %28, i32* %30)
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.se_set*, %struct.se_set** %5, align 8
  %34 = getelementptr inbounds %struct.se_set, %struct.se_set* %33, i32 0, i32 2
  %35 = call i32 @FD_CLR(i64 %32, i32* %34)
  %36 = load %struct.se_set*, %struct.se_set** %5, align 8
  %37 = getelementptr inbounds %struct.se_set, %struct.se_set* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  store i32* null, i32** %40, align 8
  br label %44

41:                                               ; preds = %21, %2
  %42 = load i32, i32* @D_EVENT_ERRORS, align 4
  %43 = call i32 @msg(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %27
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmsg(i32, i8*, i32) #1

declare dso_local i32 @FD_CLR(i64, i32*) #1

declare dso_local i32 @msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
